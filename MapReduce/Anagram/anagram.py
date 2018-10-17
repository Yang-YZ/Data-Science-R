class Anagram:

    # @param {str} value is one line of text.
    def map(self, _, value):
        for word in line.split():
            yield ''.join(sorted(list(word))), word

    # @param {str} key is the output of map.
    # @param {Iterator<Integer>} values is a list of values for the same key.
    def reduce(self, key, values):
        yield key, list(values)
