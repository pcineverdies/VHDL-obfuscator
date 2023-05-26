import re
from obfuscated_signal import obfuscated_signal
from utils import get_keywords

source_directory = "data/input/"
output_directory = "data/output/"
source_to_obfusacte = "data/files_to_obfuscate.txt"
size_obfuscation = 30

# Get VHDL keywords in lowercase
keywords = get_keywords("data/VHDL_keywords.csv")
keywords = keywords + get_keywords("data/personal_keywords.csv")

signals = []

# Get all the tokens in all the files
with open(source_to_obfusacte, "rt") as files_to_obfuscate:
    # Get all the lines of files_to_obfuscate.txt
    lines = files_to_obfuscate.readlines()
    for line in lines:
        # Get path of the next file to analyze
        next_file = source_directory + line.strip()
        with open(next_file, "rt") as file_to_obfuscate:
            # Read all the file
            text_file = file_to_obfuscate.read()
            # Remove comments
            text_file = re.sub(re.compile("--.*?\n" ) ,"\n" ,text_file) 
            # Get all its tokens
            tokens_file = re.findall(r"\w+", text_file)
            # Put all the tokens in lowercase
            tokens_lowercase = [token.lower() for token in tokens_file]
            # Consider tokens which are no keywords and not numeric
            for token in tokens_lowercase:
                if token not in keywords and not str.isnumeric(token):
                    signals.append(token)
            # Remove dupicated signals
            signals = list(dict.fromkeys(signals))

# Generate an obfuscated version for each string
obfuscated_signals = [obfuscated_signal(signal, size_obfuscation) for signal in signals]

# Change all the files
with open(source_to_obfusacte, "rt") as files_to_obfuscate:
    # Get the list of files to modify
    lines = files_to_obfuscate.readlines()
    # One file per line
    for line in lines:
        # Input file
        next_file_input = source_directory + line.strip()
        # Output file
        next_file_output = output_directory + line.strip()
        with open(next_file_input, "rt") as file_input:
            with open(next_file_output, "wt") as file_output:
                # Modify each line of the input file and write it back to the output file
                for line_input in file_input:
                    # Remove trailing comments (starting from --)
                    line_input = re.sub(re.compile("--.*?\n" ) ,"\n" ,line_input) 
                    for obf in obfuscated_signals:
                        # Find isolated occurrances for that word
                        # in case the current signal to modify is `math`:
                        # -> `signal math: std_logic_vector` is to be modified
                        # -> `ieee.math_real.all` is not to be modified
                        regex = r"\b" + obf.signal + r"\b"
                        insenstive_regex = re.compile(regex, re.IGNORECASE)
                        line_input = insenstive_regex.sub(obf.obfuscated_signal, line_input)
                    file_output.write(line_input)

# Dump json containing the old and new signals in out_directory/dump.txt
# The result is an array of objects like {original_signal : "...", obfuscated_signal: "..."}
with open(output_directory + "dump.txt", "wt") as file_dump:
    file_dump.write("[\n")
    for obf in obfuscated_signals:
        line = f"\t{{\n\t\t\"original_signal\": \"{obf.signal}\",\n\t\t\"obfuscated_signal\" : \"{obf.obfuscated_signal}\"\n\t}},\n"
        file_dump.write(line)
    file_dump.write("]")