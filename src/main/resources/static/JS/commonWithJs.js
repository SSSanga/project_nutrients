function searchList() {
    const searchList_obj = [
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "GET", "COMMON_CODE_ID": "NAME"},
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "POST", "COMMON_CODE_ID": "box-02"},
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "PUT", "COMMON_CODE_ID": "box-03"},
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "DEETE", "COMMON_CODE_ID": "box-04"},
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "OPTION", "COMMON_CODE_ID": "box-05"},
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "PATCH", "COMMON_CODE_ID": "box-06"},
    {"PARENT_COMMON_CODE_ID": "SelectSearchBox", "NAME": "HEAD", "COMMON_CODE_ID": "box-07"}
    ];
  
    let outHtml = ``; //테이블열기
    for (let search_hashmap of searchList_obj) {
      // 각 자동차의 정보를 콘솔에 출력(올바르게 액세스하고 있는지 확인용)
      console.log(`PARENT_COMMON_CODE_ID: ${search_hashmap.PARENT_COMMON_CODE_ID}, NAME: ${search_hashmap.NAME}, COMMON_CODE_ID: ${search_hashmap.COMMON_CODE_ID}`);
      // 동적으로 생성된 HTML 테이블 행을 추가
      outHtml = `${outHtml}<option value = ${search_hashmap.COMMON_CODE_ID}>${search_hashmap.NAME}</option>`;
    }
    outHtml += ``; //테이블 닫기 </table>태그
    // "carTableBody"라는 id를 가진 DOM 요소를 찾아서 동적으로 생성된 HTML을 추가
    let searchList = document.querySelector('#temp'); // example.jsp에서 이 id 넣음 <select class="form-select" name="search" id="temp">
    // outHtml = outHtml + tempHtml;
    searchList.innerHTML = outHtml; //outHtml 변수에 저장된 동적으로 생성된 HTML이 선택된 <tbody> 요소의 내부 HTML로 할당됨
  }
  
  searchList();
  
  // // add keydown Event
  // let keydownObject = document.querySelector("#keydownEnter");
  
  // keydownObject.addEventListener('keydown', (event) => {
  //   if (event.code == 'Enter') {
  //     console.log(`key down : ${event.code}`);
  //     searchListy();
  //   }
  // });