import requests as r


## Head for all el of url = 'https://'
url = ('https://osarts.ru/diventello','https://baraban16.ru','https://sdaprotvino.ru')

for resp in [r.get(url) for url in urls  ]:
    print(len(r.content), '->', r.status_code, '->', resp.url)


