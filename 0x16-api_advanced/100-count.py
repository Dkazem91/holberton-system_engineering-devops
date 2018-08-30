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
    for key in sorted(count_dic.keys()):
        if count_dic[key]:
            print("{}: {}".format(key, count_dic[key]))


def count_words(subreddit, word_list):
    global hotlist
    global after
    """subs"""
    head = {'User-Agent': 'Dan Kazam'}
    if after:
        count = get('https://www.reddit.com/r/{}/hot.json?after={}'.format(
            subreddit, after), headers=head).json().get('data')
    else:
        count = get('https://www.reddit.com/r/{}/hot.json'.format(
            subreddit), headers=head).json().get('data')
    hotlist += [dic.get('data').get('title').lower()
                for dic in count.get('children')]
    after = count.get('after')
    if after:
        return count_words(subreddit, word_list)
    return count_all(hotlist, word_list)


if __name__ == "__main__":
    count_words(argv[1], argv[2].lower().split(' '))
