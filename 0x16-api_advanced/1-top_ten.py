#!/usr/bin/python3
# get subs
from requests import get
from sys import argv

def top_ten(subreddit):
    """subs"""
    head = {'User-Agent': 'Dan Kazam'}
    count = get('https://www.reddit.com/r/{}/hot.json?count=10'.format(
        subreddit), headers=head).json()
    return [dic.get('data').get('title')
            for dic in count.get('data').get('children')][:10]


if __name__ == "__main__":
    print(*top_ten(argv[1]), sep='\n')
