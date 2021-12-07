import requests
import os

zh_TW_url = 'https://raw.githubusercontent.com/zz22558822/Epic7-Chinese-Patch/main/zh-TW/translation.json'
zh_url = 'https://raw.githubusercontent.com/zz22558822/Epic7-Chinese-Patch/main/zh/translation.json'
zh_TW = './zh-TW'
zh = './zh'

#如果沒有資料夾執行建立
if not os.path.isdir(zh_TW):
	os.mkdir(zh_TW)
if not os.path.isdir(zh):
	os.mkdir(zh)

#下載 GitHub 內的翻譯檔
r = requests.get(zh_TW_url) 
with open('./zh-TW/translation.json','wb') as f: 
  f.write(r.content)

r = requests.get(zh_url) 
with open('./zh/translation.json','wb') as f: 
  f.write(r.content)

#執行 batch.bat 的呼叫
from subprocess import Popen
p = Popen("batch.bat", cwd=r"./")