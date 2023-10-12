import pandas as pd
import pymysql
import pymongo

ip = 'localhost'    # 127.0.0.1 --> 192.168.0.30
port = '3306'
username = 'yojulab'
password = '!yojulab*'
database = 'project_nutrients'  # 데이터 베이스 프로젝트껄로 바꾸기

connect = pymysql.connect(host=ip, user=username, password=password,database=database)

# sql_query = 'SELECT * FROM project_nutrients.review;'

# df = pd.read_sql(sql=sql_query, con=connect)


print(connect)