def get_keywords(file):
    keywords = open(file).read().split()
    keywords_lowercase = [keyword.lower() for keyword in keywords]
    return keywords_lowercase