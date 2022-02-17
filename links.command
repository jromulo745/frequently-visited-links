#!/usr/bin/env python3

import webbrowser, os

links = {
0: 'https://www.pcmag.com/encyclopedia',
1: 'https://docs.python.org/3/library/functions.html',
2: 'https://clpccd.instructure.com/login/canvas',
3: 'https://www.csueastbay.edu/mycsueb/',
4: 'https://learning.oreilly.com/accounts/login-check/',
5: 'https://books.google.com/',
6: 'https://www.professormesser.com/',
7: 'https://www.chess.com/',
8: 'https://search.norton.com',
9: 'https://wsr.pearsonvue.com/testtaker/signin/SignInPage/COMPTIA',
10: 'https://bb.csueastbay.edu',
11: 'https://github.com/login',
12: 'https://discord.com/login',
13: 'https://www.csueastbay.edu/Duo',
14: 'https://library.csueastbay.edu/home',
15: 'https://csueb.enterprise.slack.com/',
16: 'https://joinhandshake.com',
17: 'https://www.udemy.com',
18: 'https://hub.totalsem.com/',
19: 'https://www.csueastbay.edu/myhr/',
20: 'https://developer.apple.com',
21: 'https://www.wireshark.org',
22: 'https://developer.mozilla.org/en-US/',
23: 'https://account.jetbrains.com/login',
24: 'https://www.hbomax.com/',
25: 'https://developer.mozilla.org/en-US/docs/Web/CSS/Reference',
25: 'https://developer.mozilla.org/en-US/docs/Web/HTML/Element',
26: 'https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes',
}

representation = [
'PCMag Encyclopedia',
'Python Built-In Functions',
'Chabot Canvas',
'MyCSUEB',
'O\'Reilly',
'Google Books',
'Professor Messer',
'Chess',
'Safe Search',
'Pearson VUE',
'Blackboard',
'GitHub',
'Discord',
'Duo Security',
'CSUEB Library',
'CSUEB Slack',
'Handshake',
'Udemy',
'Total Sem',
'MyHR',
'Apple Developer',
'Wireshark',
'Mozilla',
'JetBrains',
'HBO Max',
'CSS Reference'
'HTML Element Reference',
'HTML Attribute Reference',
]

def space_format(string, maximum_length):
    gap = maximum_length - len(string)
    string = ''
    for x in range(gap):
        string += ' '
    return string

valid = False #default value
max_length = len(str(0)) # default
while valid == False:
    print()
    for x in range(len(representation)):
        if len(str(x + 1)) > max_length:
            max_length = len(str(x + 1))
    for x in range(len(representation)):
        print('\t' + space_format(str(x + 1), max_length) + str(x + 1) + ': ' + representation[x])
        # print('\t' + str(x + 1) + ': ' + representation[x])
    user_input = int(input('\n\tSelect link (1 - ' + str(len(links)) + '): '))
    if user_input == 0:
        break
    stuff = webbrowser.get('safari')
    stuff.open(links[user_input - 1])
    valid = True

string = os.getpid()
os.system('kill -9 ' + str(string))