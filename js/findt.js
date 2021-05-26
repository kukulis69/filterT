//////////////////////////////////TASKams/////////////////////////////////////////////
document.getElementById('searcht').addEventListener('keyup', filterTasks); // paimam is search ir pradedam eventA paspaudus mygtuka
const cellsID = document.querySelectorAll('table td.id');
const cellsName = document.querySelectorAll('table td.name');

function filterTasks(e) {
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