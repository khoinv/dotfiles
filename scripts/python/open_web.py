import os
import re
import sys
import subprocess
import urllib

def parse_url():
    print sys.argv
    host = sys.argv[1]
    path =''

    if len(sys.argv) > 2:
        path = ' '.join(sys.argv[2:])
        path = urllib.quote(path)

    if(host == 'google.com'):
        # https://www.google.co.jp/search?q=python
        url = "https://google.com/search?q={}".format(path)
        return url


    path = path if os.path.isabs(path) else os.path.abspath(path)
    ext = os.path.splitext(path)[1][1:]
    if not host.startswith('http') or not host.startswith('https'):
        host = "http://{}".format(host)


    if ext == 'php':
        query = re.split(r'^.*/htdocs/(.*)', path)[1]
        url = "{}/{}".format(host, query)
    else:
        url = "{}/{}".format(host, path)

    return url

if __name__ == '__main__':
    subprocess.call("open " + parse_url(), shell=True)
