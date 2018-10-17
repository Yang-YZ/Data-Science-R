class WordCount:

    # @param {str} key is the source of text.
    # @param {str} value is one line of text, for example "Hello World Bye World".
    def map(self, key, value):
        for word in value.split():
            yield word, 1

    # @param {str} key is the output of map.
    # @param {Iterator<Integer>} values is a list of values for the same key.
    def reduce(self, key, values):
        yield key, len(values)
