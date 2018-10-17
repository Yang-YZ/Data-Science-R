
# Inverted Index

## Description

This is a Hadoop MapReduce program written in Python to build inverted index for given documents.

Inverted index is an index data structure storing a mapping from content, such as words or numbers, 
to its locations in a database file, or in a document or a set of documents 
(named in contrast to a forward index, which maps from documents to content).

## Methods

map(key, value) // The Mapper implementation, via the map method, processes one line at a time. 
It splits the line into words separated by whitespaces, and emits a key-value pair of <word, Document.id>.

reduce(key, values) // The Reducer implementation, via the reduce method, outputs a sorted list of Document.id,
where the key (i.e. words in this example) occurs.

## Example

`[{"id":1,"content":"This is the content of document1"}, {"id":2,"content":"This is the content of document2"}]`

>>{"This":[1,2],"content":[1,2],"document1":[1],"document2":[2],"is":[1,2],"of":[1,2],"the":[1,2]}

Read more about [Inverted Index](https://en.wikipedia.org/wiki/Inverted_index).
