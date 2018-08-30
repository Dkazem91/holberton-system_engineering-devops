#!/usr/bin/python3
# get subs
from requests import get
from sys import argv

def paginate(Next):
    if not Next:
        return

def recurse(subreddit, after):
    """subs"""
    head = {'User-Agent': 'Dan Kazam'}
    count = get('https://www.reddit.com/r/{}/hot.json?count=10'.format(
        subreddit), headers=head).json().get('data').get('children')
    return [dic.get('data').get('title')
            for dic in count][:10] or ["None"]


if __name__ == "__main__":
    print('\n'.join(top_ten(argv[1])))
