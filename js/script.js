document.getElementById('search').addEventListener('keyup', filterProjects); // paimam is search ir pradedam eventA paspaudus mygtuka
const cellsID = document.querySelectorAll('table td.id');
const cellsName = document.querySelectorAll('table td.name');

function filterProjects(e) {
  const searchTerm = e.target.value.toLowerCase();
  for (let i = 0; i < cellsID.length; i++) {
    //funkcija prabega per kiekviena simboli
    if (
      cellsID[i].textContent.toLowerCase().indexOf(searchTerm) != -1 ||
      cellsName[i].textContent.toLowerCase().indexOf(searchTerm) != -1
    ) {
      // jei id ar zodis (searchterm) atitinka, isvedam visa eilute
      cellsID[i].parentElement.style.display = '';
    } else {
      cellsID[i].parentElement.style.display = 'none'; // jei ne, isvedam nieko
    }
  }
}

/////////////////////////////////////////////////////////////////////////////////////
function toggle() {
  var blur = document.getElementById('blurbg');
  blur.classList.toggle('active');
  var popup = document.getElementById('newprojbox');
  popup.classList.toggle('active');
  var hide = document.getElementById('allprojects');
  hide.classList.toggle('passive');
}

function tasktoggle() {
  var taskblur = document.getElementById('blurbg');
  taskblur.classList.toggle('active');
  var taskpopup = document.getElementById('newtaskbox');
  taskpopup.classList.toggle('active');
  var boardhide = document.getElementById('alltasks');
  boardhide.classList.toggle('passive');
  var headhide = document.getElementById('header');
  headhide.classList.toggle('passive');
}
