import requests
from lxml import etree
import pymysql
from lxml import html
import json
connect=pymysql.Connect(
    host='localhost',
    port=3306,
    user='root',
    password='123456',
    db='yien',
    charset='utf8'
)
# 获取游标
cursor=connect.cursor()
# 执行插入语句
sql="INSERT INTO yiendata5(Irank,MovieName,InsertDate,MovieDays,SumBoxOffice,ReleaseTime,EnMovieID,ReleaseDays," \
    "PointDays,BoxOfficePoint,BoxOfficeToTal,ShowCountALL,AudienceCountALL,BoxOfficeFirstDay," \
    "BoxOfficeFirstWeek,BoxOfficeWeekEnd," \
    "MaoYanWantToSee,MaoYanScore,TaoPiaoPiaoWantToSee,TaoPiaoPiaoScore,DouBanWantToSee," \
    "DouBanScore,Movie_name,DefaultImage,ReleaseDate,PointDate,Country,Genre)VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s" \
    ",%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
heads={
    'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36 Edg/102.0.1245.39'
}
url='https://ys.endata.cn/enlib-api/api/home/getrank_fastesthundredmillion.do?r=0.4662052291620802&top=50&type=1'
url2='https://ys.endata.cn/enlib-api/api/movie/getMovie_HeadBoxOfficeByMovieID.do?r=%200.9316112522940918&entmovieid={}'
url3='https://ys.endata.cn/enlib-api/api/movie/getMovie_HeadDetailByMovieID.do?r=%200.9316112522940918&entmovieid={}'
req = requests.get(url=url,headers=heads)
text = req.text
data = json.loads(text)
data1 = data['data']['table0']
for item in data1:
    print("-------------------------------------------")
    Irank = item['Irank']
    print(Irank)
    MovieName = item['MovieName']
    print(MovieName)
    InsertDate = item['InsertDate']
    print(InsertDate)
    MovieDays = item['MovieDays']
    SumBoxOffice=item['SumBoxOffice']
    ReleaseTime = item['ReleaseTime']
    EnMovieID=item['EnMovieID']
    print("-------------------------------------------")
    url2 = url2.format(item['EnMovieID'])
    req2 = requests.get(url=url2, headers=heads)
    text2 = req2.text
    data2 = json.loads(text2)
    data3 = data2['data']['table0']
    for item1 in data3:
        print('___________________________________________________________________________________________-')
        ReleaseDays=item1['ReleaseDays']
        print(ReleaseDays)
        PointDays=item1['PointDays']
        print(PointDays)
        BoxOfficePoint=item1['BoxOfficePoint']
        print(BoxOfficePoint)
        BoxOfficeToTal=item1['BoxOfficeToTal']
        print(BoxOfficeToTal)
        ShowCountALL=item1['ShowCountALL']
        print(ShowCountALL)
        AudienceCountALL=item1['AudienceCountALL']
        print(AudienceCountALL)
        BoxOfficeFirstDay=item1['BoxOfficeFirstDay']
        print(BoxOfficeFirstDay)
        BoxOfficeFirstWeek=item1['BoxOfficeFirstWeek']
        print(BoxOfficeFirstWeek)
        BoxOfficeWeekEnd=item1['BoxOfficeWeekEnd']
        print(BoxOfficeWeekEnd)
        MaoYanWantToSee=item1['MaoYanWantToSee']
        print(MaoYanWantToSee)
        MaoYanScore=item1['MaoYanScore']
        print(MaoYanScore)
        TaoPiaoPiaoWantToSee=item1['TaoPiaoPiaoWantToSee']
        print(TaoPiaoPiaoWantToSee)
        TaoPiaoPiaoScore=item1['TaoPiaoPiaoScore']
        print(TaoPiaoPiaoScore)
        DouBanWantToSee=item1['DouBanWantToSee']
        print(DouBanWantToSee)
        DouBanScore=item1['DouBanScore']
        print(DouBanScore)
        print('___________________________________________________________________________________________-')
    url2 = 'https://ys.endata.cn/enlib-api/api/movie/getMovie_HeadBoxOfficeByMovieID.do?r=%200.9316112522940918&entmovieid={}'
    url3 = url3.format(item['EnMovieID'])
    req3 = requests.get(url=url3, headers=heads)
    text3 = req3.text
    data3 = json.loads(text3)
    data4 = data3['data']['table0']
    for item2 in data4:
        print('___________________________________________________________________________________________-')
        Movie_name=item2['MovieName']
        print(MovieName)
        DefaultImage=item2['DefaultImage']
        print(DefaultImage)
        ReleaseDate=item2['ReleaseDate']
        print(ReleaseDate)
        PointDate=item2['PointDate']
        print(PointDate)
        Country=item2['Country']
        print(Country)
        Genre=item2['Genre']
        print(Genre)
    url3 = 'https://ys.endata.cn/enlib-api/api/movie/getMovie_HeadDetailByMovieID.do?r=%200.9316112522940918&entmovieid={}'

    cursor.execute(sql,[str(Irank),MovieName,str(InsertDate),str(MovieDays),str(SumBoxOffice),str(ReleaseTime),str(EnMovieID),
                        str(ReleaseDays),str(PointDays),str(BoxOfficePoint),str(BoxOfficeToTal),str(ShowCountALL),
                        str(AudienceCountALL),str(BoxOfficeFirstDay),str(BoxOfficeFirstWeek),str(BoxOfficeWeekEnd),
                        str(MaoYanWantToSee),str(MaoYanScore),str(TaoPiaoPiaoWantToSee),str(TaoPiaoPiaoScore),str(DouBanWantToSee),
                        str(DouBanScore),str(Movie_name),str(DefaultImage),str(ReleaseDate),str(PointDate),str(Country),str(Genre)])
cursor.close()
connect.commit()
connect.close()








