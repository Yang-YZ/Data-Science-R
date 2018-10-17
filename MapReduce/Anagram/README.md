# Anagram

## Description

This is a Hadoop MapReduce program written in Python to find anagrams in a given list of words.

An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
typically using all the original letters exactly once.

## Methods

map(key, value) // The Mapper implementation, via the map method, processes one line at a time. 
It splits the line into words separated by whitespaces, sorts each word alphabetically, 
and emits a key-value pair of <sorted_word, word>.

reduce(key, values) // The Reducer implementation, via the reduce method, outputs all the anagrams for each key 
(i.e. sorted word in this example).

## Example

`["hello", "holle", "world", "lleho"]`
>>["world"]

>>["hello","holle","lleho"]

Read more about [Anagram](https://en.wikipedia.org/wiki/Anagram).
