document.addEventListener('DOMContentLoaded', function() {
    // id : #, class :. , tag : 그대로 사용
    let predictObject = document.querySelector('#predict')
    predictObject.addEventListener('click', (event)=>{
       event.preventDefault();  // submit 정지
       let review_content = document.querySelector('#ReviewContent').value;
   
       let request_dict = {"review_content":review_content};
   
       // console.log(`request_dict : ${request_dict}`);
       // request backend and then return dict
       fetch('http://127.0.0.1:8000/review_prediction', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(request_dict)
      })
      .then(response => response.json())
      .then(data => {
        console.log(data)
        // Display the result in the resultDisplay div
        document.querySelector('#resultDisplay').innerHTML = `review_reponse : ${data.review_reponse}`;
      })
      .catch(error => console.error(error));
   
    });})