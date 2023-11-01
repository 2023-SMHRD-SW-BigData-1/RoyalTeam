let container = document.getElementById('container')

 //모달창 오픈용 스크립트
 function modal(name) {
    //전달받은 이름의 모달창 보이기
    document.getElementById(name).style.display="flex";
}


//모달창 닫기용 스크립트
function modalClose(name) {
    //전달받은 이름의 모달창 닫기
    document.getElementById(name).style.display="none";
}

toggle = () => {
  container.classList.toggle('sign-in')
  container.classList.toggle('sign-up')
}

setTimeout(() => {
  container.classList.add('sign-in')
}, 200)