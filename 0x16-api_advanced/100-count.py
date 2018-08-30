#!/usr/bin/python3
# get subs
from requests import get
from sys import argv

hotlist = []
after = None


def count_all(hotlist, word_list):
    count_dic = {word: 0 for word in word_list}
    for title in hotlist:
        words = title.split(' ')
        for word in words:
            if count_dic.get(word) is not None:
                count_dic[word] += 1

    for key in sorted(count_dic, key=count_dic.get, reverse=True):
        if count_dic.get(key):
            print("{}: {}".format(key, count_dic[key]))
    if set(count_dic.values()) == {0}:
        print()


def count_words(subreddit, word_list):
    global hotlist
    global after
    """subs"""
    head = {'User-Agent': 'Dan Kazam'}
    try:
        if after:
            count = get('https://www.reddit.com/r/{}/hot.json?after={}'.format(
                subreddit, after), headers=head,
                        allow_redirects=False).json().get('data')
        else:
            count = get('https://www.reddit.com/r/{}/hot.json'.format(
                subreddit), headers=head,
                        allow_redirects=False).json().get('data')
        hotlist += [dic.get('data').get('title').lower()
                    for dic in count.get('children')]
        after = count.get('after')
        if after:
            return count_words(subreddit, word_list)
        else:
            return count_all(hotlist, word_list)
    except:
        print()


if __name__ == "__main__":
    count_words(argv[1], argv[2].lower().split(' '))
