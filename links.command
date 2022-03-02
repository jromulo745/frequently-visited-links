#!/usr/bin/env python3

import webbrowser, os

def space_format(string, maximum_length):
    gap = maximum_length - len(string)
    string = ''
    for x in range(gap):
        string += ' '
    return string

mdn_links = {
    0: ['Home Page', 'https://developer.mozilla.org/en-US/'],
    1: ['CSS Reference', 'https://developer.mozilla.org/en-US/docs/Web/CSS/Reference',],
    2: ['HTML Element Reference', 'https://developer.mozilla.org/en-US/docs/Web/HTML/Element',],
    3: ['HTML Attribute Reference', 'https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes',],
}

non_mdn_links = {
    0: ['PCMag Encycopedia', 'https://www.pcmag.com/encyclopedia',],
    1: ['Python Built-In Functions','https://docs.python.org/3/library/functions.html',],
    2: ['Chabot Canvas', 'https://clpccd.instructure.com/login/canvas',],
    3: ['MyCSUEB', 'https://www.csueastbay.edu/mycsueb/',],
    4: ['O\'Reilly', 'https://learning.oreilly.com/accounts/login-check/',],
    5: ['Google Books', 'https://books.google.com/',],
    6: ['Professor Messer', 'https://www.professormesser.com/',],
    7: ['Chess', 'https://www.chess.com/',],
    8: ['Safe Search', 'https://search.norton.com',],
    9: ['Pearson VUE', 'https://wsr.pearsonvue.com/testtaker/signin/SignInPage/COMPTIA',],
    10: ['Blackboard', 'https://bb.csueastbay.edu',],
    11: ['GitHub', 'https://github.com/login',],
    12: ['Discord', 'https://discord.com/login',],
    13: ['Duo Security', 'https://www.csueastbay.edu/Duo',],
    14: ['CSUEB Library', 'https://library.csueastbay.edu/home',],
    15: ['CSUEB Slack', 'https://csueb.enterprise.slack.com/',],
    16: ['Handshake', 'https://joinhandshake.com',],
    17: ['Udemy', 'https://www.udemy.com',],
    18: ['Total Sem', 'https://hub.totalsem.com/',],
    19: ['MyHR', 'https://www.csueastbay.edu/myhr/',],
    20: ['Apple Developer', 'https://developer.apple.com',],
    21: ['Wireshark', 'https://www.wireshark.org',],
    22: ['Mozilla', 'https://developer.mozilla.org/en-US/',],
    23: ['JetBrains', 'https://account.jetbrains.com/login',],
    24: ['HBO Max', 'https://www.hbomax.com/',],
}

print() # line only for spacing in output 
print('\t1 - MDN links')
print('\t2 - Non-MDN links')
print('\t3 - Open File Directory')
user_input = int(input('\n\tPlease select a choice: '))

dictionary = None

os.system('clear')
if user_input == 1:
    dictionary = mdn_links
elif user_input == 2:
    dictionary = non_mdn_links
elif user_input == 3:
    os.system('open .')
    quit()
else:
    print('\n\tinvalid answer...')
    quit()

valid = False #default value
max_length = len(str(0)) # default
while valid == False:
    print()
    for x in range(len(dictionary)):
        if len(str(x + 1)) > max_length:
            max_length = len(str(x + 1))
    for x in range(len(dictionary)):
        print('\t' + space_format(str(x + 1), max_length) + str(x + 1) + ': ' + dictionary[x][0])
    user_input = int(input('\n\tSelect link (1 - ' + str(len(dictionary)) + '): '))
    if user_input == 0:
        break
    stuff = webbrowser.get('safari')
    stuff.open(dictionary[user_input - 1][1])
    valid = True

os.system('killall Terminal')