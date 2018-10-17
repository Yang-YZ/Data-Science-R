# Word Count

## Description

This is a Hadoop MapReduce program written in Python to count word frequency.

## Methods

map(key, value) // The Mapper implementation, via the map method, processes one line at a time. It splits the line into words separated by whitespaces, and emits a key-value pair of <word, 1>.

reduce(key, values) // The Reducer implementation, via the reduce method sums up the values, which are the occurence counts for each key (i.e. words in this example).

## Example

// Input:

`$ bin/hadoop dfs -ls /usr/wordcount/input/`
>>/usr/wordcount/input/file01 

>>/usr/wordcount/input/file02 

`$ bin/hadoop dfs -cat /usr/wordcount/input/file01`
>>Hello World Bye World 

`$ bin/hadoop dfs -cat /usr/wordcount/input/file02`
>>Hello Hadoop Goodbye Hadoop

// Run the application:

`$ bin/hadoop jar /usr/wordcount.jar org.myorg.WordCount /usr/wordcount/input /usr/wordcount/output`

// Output:

`$ bin/hadoop dfs -cat /usr/wordcount/output/part-00000`
>>Bye 1 

>>Goodbye 1

>>Hadoop 2 

>>Hello 2 

>>World 2 

Read more about [Word Count](https://hadoop.apache.org/docs/r1.2.1/mapred_tutorial.html#Example%3A+WordCount+v1.0).
