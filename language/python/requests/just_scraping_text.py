from urllib.request import urlopen

# Just scrapping the sipmple txt from website
textPage = urlopen('http://www.pythonscraping.com/'\
                   'pages/warandpeace/chapter1.txt')
print(textPage.read())
