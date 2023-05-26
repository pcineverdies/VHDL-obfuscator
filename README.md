# VHDL obfuscator

This script modifies VHDL source files changing the non-keyword names into a random string.
Given a bunch of files, each occurrence of the same name is substituted with the same obfuscated value in all the files.

- `data/files_to_obfuscate.txt` contains the list of files to obfuscate (in `data/input/`);
- `data/VHDL_keywords.txt` contains the list of VHDL's keyword; you may need to add some keywords, such as the functions of the `ieee` libraries;
- `data/personal_keywords.txt` contains the list of names which should not be modified;
- `data/output/dump.txt` contains, at the end of the execution, an array of objects containing for each original name its obfuscated version.

