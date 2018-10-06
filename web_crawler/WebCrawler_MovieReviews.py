# Python 3
# -*- coding: utf-8 -*-

"""
Web Crawler - Movie Reviews
"""

import requests
import re

# fetch content from url
r = requests.get('https://www.rottentomatoes.com/m/coco_2017/reviews/')

# regular expression
pattern = re.compile('<div class="the_review">(.*?)</div>')

# extract information to a list
content = re.findall(pattern, r.text)

# write content to a txt file
with open('movie_reviews.txt', 'w') as file:
    for line in content:
        file.writelines('\n')
        file.writelines(line)
