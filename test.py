
def isMatch(regex, target):
    if regex == "":
        return target == ""

    matched = (target != "" and (regex[0] == target[0] or regex[0] == "."))

    if len(regex) >= 2 and regex[1] == "*":
        return isMatch(regex[2:], target) or (matched and isMatch(regex, target[1:]))
    elif len(regex) > 2 and ("|" in regex):
        i = regex.index("|")
        return isMatch(regex[(i+1):], target) or isMatch(regex[:i], target)
    else:
        return matched and isMatch(regex[1:], target[1:])


print(f'{isMatch(".", "a") == True}')
print(f'{isMatch("a", "a") == True}')
print(f'{isMatch("a", "aa") == False}')
print(f'{isMatch(".*", "asdfadsfsda") == True}')
print(f'{isMatch("d*","dddd") == True}')
print(f'{isMatch("d*","ddaaadd") == False}')
print(f'{isMatch("d*","" ) == True}')
print(f'{isMatch("a|b","a") == True}')
print(f'{isMatch("a|b*","b" ) == True}')
print(f'{isMatch("a|.","b" ) == True}')
print(f'{isMatch("a|b","c") == False}')
print(f'{isMatch("a|b","a|b" ) == False}')
print(f'{isMatch("a|b|c","b" ) == True}')
print(f'{isMatch("a|b","ab" ) == True}')
print()
print(f'{isMatch("a*|b","a" ) == True}')
