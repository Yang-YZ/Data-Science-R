'''
Definition of Document
class Document:
    def __init__(self, id, cotent):
        self.id = id
        self.content = content
'''

class InvertedIndex:

    # @param {str} key.
    # @param {Document} value is a Document object.
    def map(self, key, value):
        for word in value.content.split():
            yield word, value.id

    # @param {str} key is the output of map.
    # @param {Iterator<Integer>} values is a list of values for the same key.
    def reduce(self, key, values):
        yield key, sorted(list(set(values)))
