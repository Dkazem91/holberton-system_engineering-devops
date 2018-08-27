#!/usr/bin/python3
# csv exported
from sys import argv
from requests import get
import json

def jsonWrite(user):
    """writes to csv"""
    data = get('https://jsonplaceholder.typicode.com/todos?userId={}'.format(
        user)).json()
    name = get('https://jsonplaceholder.typicode.com/users/{}'.format(
        user)).json().get('username')
    ordered = []
    for line in data:
        ordered.append({"task": line.get('title'), "completed":
                        line.get('completed'), "username": name})
    with open('{}.json'.format(user), 'w') as f:
        json.dump({user: ordered}, f)


if __name__ == "__main__":
    jsonWrite(argv[1])
