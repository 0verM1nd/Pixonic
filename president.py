import json
with open('president.json') as jsondata:
  data = json.load(jsondata)
input = input("Enter president name : ")
print(list((filter(lambda x:x["president"] == input, data))))
