#!/usr/bin/python3
# gets an api
import requests
from sys import argv


if __name__ == "__main__" and argv[1].isdigit():
    """doc stringed"""
    name = requests.get('https://jsonplaceholder.typicode.com/users/'
                        + argv[1]).json().get('name')
    tasks = requests.get('https://jsonplaceholder.typicode.com/users/'
                         + argv[1] + '/todos').json()
    tasksDone = ['\t {}\n'.format(dic.get('title')) for dic in tasks
                 if dic.get('completed')]
    if name and tasks:
        print("Employee {} is done with tasks({}/{}):".format
              (name, len(tasksDone), len(tasks)))
        print(''.join(tasksDone), end='')
