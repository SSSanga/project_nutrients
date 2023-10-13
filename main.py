# conda install -c conda-forge fastapi uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import pickle
import pandas as pd
import requests

app = FastAPI()

# No 'Access-Control-Allow-Origin'
# CORS 설정
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # 실제 운영 환경에서는 접근 가능한 도메인만 허용하는 것이 좋습니다.
    allow_methods=["*"],
    allow_headers=["*"],
)

review_content = "" 
@app.post('/review_prediction') 
def mlmodelwithregression(data:dict) : 
    print('data with dict {}'.format(data))
    # data dict to 변수 활당
    review_content = data['review_content'] ## str로 입력되면 변환 안해도 될듯?
   

    # ## 전처리 pkl 불러오기
    from konlpy.tag import Okt
    from collections import Counter

    # Okt 형태소 분석기 인스턴스 생성
    okt = Okt()

    # 필요한 품사 리스트 정의
    desired_pos = ['Noun', 'Verb', 'Adjective', 'Adverb', 'Exclamation', 'Conjunction']

    

    # 형태소 분석 수행
    pos_result = okt.pos(review_content, norm=True, stem=True)

    # 필요한 조건을 만족하는 단어 선택하고 공백으로 연결
    filtered_sentence = ' '.join(word for word, pos in pos_result if pos in desired_pos and len(word) > 1)

    from mecab import MeCab
    mecab = MeCab()

    

    comment_morphs = mecab.morphs(filtered_sentence)
    pass
    # 추가로 불용어 처리 필요
    tokenized_comments=' '.join(comment_morphs)

## machinelearning _ 진행 column['replaced_review']
 # 전처리 _ tfidfVectorization _이게 지금 문자열 배열로 들어가있단말이지? 이걸 
    with open('gatheringdatas/datasets/tfidfVectorizer.pkl', 'rb') as tvector: 
        loaded_scaler = pickle.load(tvector)
        input_scaler = tokenized_comments
        input_features = loaded_scaler.transform([input_scaler])
        

    result_predict = 0;
 # final _ SVC 예측 
    with open('gatheringdatas/datasets/sentiment_analyze_mechinelearning.pkl', 'rb') as predict_SVC: 
        loaded_model = pickle.load(predict_SVC)
        input_features_dense = input_features.toarray()
        result_predict = loaded_model.predict(input_features_dense)
        
        
        print('review reponse : {}'.format(result_predict))
        pass
    
        result = {'review_reponse' : result_predict[0]}
        return result