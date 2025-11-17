s1 = input('Введите строку: ')
s2 = input('Введите подстроку для удаления: ')
result = ''
count = 0
i = 0

while i < len(s1):
    if (i + len(s2) <= len(s1)) and (s1[i] == s2[0]):
        count += 1
        if count % 2 == 1:
            result += s2
        i += len(s2)
    else:
        result += s1[i]
        i += 1

print('Результат: ', result)
