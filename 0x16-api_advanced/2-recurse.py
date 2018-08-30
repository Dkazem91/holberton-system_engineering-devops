#!/usr/bin/python3
# get subs
from requests import get
from sys import argv


def paginate(after, hot):
    if not after:
        return hot
    head = {'User-Agent': 'Dan Kazam'}
    count = get('https://www.reddit.com/r/{}/hot.json?after={}'.format(
        argv[1], after), headers=head).json().get('data')
    hot += [dic.get('data').get('title') for dic in count.get('children')]
    return paginate(count.get('after'), hot)


def recurse(subreddit, hotlist=[]):
    """subs"""
    try:
        head = {'User-Agent': 'Dan Kazam'}
        count = get('https://www.reddit.com/r/{}/hot.json'.format(
            subreddit), headers=head).json().get('data')
        hotlist += [dic.get('data').get('title')
                    for dic in count.get('children')]
        return paginate(count.get('after'), hotlist)
    except:
        return None


if __name__ == "__main__":
    print(recurse(argv[1]))
