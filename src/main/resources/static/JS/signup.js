// function signUpCheck()
// {
//     let id = document.getElementById("ID").value
//     let email = document.getElementById("email").value
//     let password = document.getElementById("password").value
//     let passwordCheck = document.getElementById("passwordCheck").value
//     let name = document.getElementById("name").value
//     let birth = document.getElementById("birth").value
//     let check = true;

//     // 아이디 확인
//     if(id==="")
//     {
//         document.getElementById("idError").innerHTML="아이디가 올바르지 않습니다."
//         check = false
//     }

//     else
//     {
//         document.getElementById("idError").innerHTML=""
//     }

//     // 비밀번호 확인
//     if(password !== passwordCheck)
//     {
//         document.getElementById("passwordError").innerHTML=""
//         document.getElementById("passwordCheckError").innerHTML="비밀번호가 동일하지 않습니다."
//         check = false
//     }

//     else
//     {
//         document.getElementById("passwordError").innerHTML=""
//         document.getElementById("passwordCheckError").innerHTML=""
//     }

//     // 비밀번호 재확인
//     if(password==="")
//     {
//         document.getElementById("passwordError").innerHTML="비밀번호를 입력해주세요."
//         check = false
//     }
//     if(passwordCheck==="")
//     {
//         document.getElementById("passwordCheckError").innerHTML="비밀번호를 다시 입력해주세요."
//         check = false
//     }
  
//     // 이메일 확인
//     if(email.includes('@'))
//     {
//       let emailId = email.split('@')[0]
//       let emailServer = email.split('@')[1]
//       if(emailId === "" || emailServer === "")
//       {
//         document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다."
//         check = false
//       }

//       else
//       {
//         document.getElementById("emailError").innerHTML=""
//       }
//     }
    
//     else
//     {
//       document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다."
//       check = false
//     }
  
//     // 이름 확인
//     if(name==="")
//     {
//       document.getElementById("nameError").innerHTML="이름이 올바르지 않습니다."
//       check = false
//     }
    
//     else
//     {
//       document.getElementById("nameError").innerHTML=""
//     }

//     // 생년월일 확인
//     if(birth==="")
//     {
//       document.getElementById("birthError").innerHTML="생년월일이 올바르지 않습니다."
//       check = false
//     }
    
//     else
//     {
//       document.getElementById("birthError").innerHTML=""
//     }
    
//     if(check)
//     {
//         document.getElementById("idError").innerHTML=""
//         document.getElementById("passwordError").innerHTML=""
//         document.getElementById("emailError").innerHTML=""
//         document.getElementById("passwordCheckError").innerHTML=""
//         document.getElementById("nameError").innerHTML=""
//         document.getElementById("birthError").innerHTML=""
      
//     //비동기 처리이벤트
//     setTimeout(function(){alert("가입이 완료되었습니다.")},0);
//     }
// }

document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
  
    form.addEventListener("submit", function (event) {
      const idField = document.getElementById("id");
      if (!idField.value) {
        event.preventDefault(); // form 제출을 막음
        alert("ID를 입력해 주세요.");
      }
    });
  });