#!/usr/bin/python3
# gets an api
def todo(userid):
    """doc stringed"""
    name = requests.get('https://jsonplaceholder.typicode.com/users/'
                        + userid).json().get('name')
    tasks = requests.get('https://jsonplaceholder.typicode.com/users/'
                         + userid + '/todos').json()
    tasksDone =['\t {}\n'.format(dic.get('title')) for dic in tasks
                if dic.get('completed')]
    if name and tasks:
        print("Employee {} is done with tasks({}/{}):".format
              (name, len(tasksDone), len(tasks)))
        print(''.join(tasksDone), end='')

if __name__ == "__main__":
    import requests
    from sys import argv
    if len(argv) == 2:
        todo(argv[1])
