arr = []
n = int(input('Введите размер массива: '))
print('Введите элементы массива:')
for i in range(n):
    arr.append(int(input()))
k = int(input('Введите k (номер статистики): '))

for i in range(n - 1):
    for j in range(i + 1, n):
        if arr[i] > arr[j]:
            t = arr[i]
            arr[i] = arr[j]
            arr[j] = t

if 0<k<=n:
    print(f'k-я статистика: {arr[k-1]}')
else:
    print('Неверное значение k')
