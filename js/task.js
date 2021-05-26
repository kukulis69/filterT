// jau veikia, tiesiog buvo targetinamas toks ID kuris šiame puslapyje neegzistuoja
const x = document.querySelector('.btest');
x.addEventListener('click', testFunction);

function testFunction() {
  alert('Hello World!');
}


// html'e pridėjau klasę .container visiems konteineriams (new, in progress ir completed), tokiu būdu nereiks žaisti po vieną
const inprog = document.querySelectorAll('.container');
console.log(inprog);

// eventai konteineriams

for (let container of inprog) {
  container.addEventListener('dragover', dragOver);
  container.addEventListener('dragenter', dragEnter);
  container.addEventListener('dragleave', dragLeave);
  container.addEventListener('drop', dragDrop);
}
// paimam VISUS task card'us (ALL čia labai svarbu)

const newtaskcards = document.querySelectorAll('.newtaskcard');
const protaskcards = document.querySelectorAll('.progrtask');
const donetaskcards = document.querySelectorAll('.donetask');

// pridedam drag eventus kortelėms
for (let taskCard of newtaskcards) {
  taskCard.addEventListener('dragstart', dragStart);
  taskCard.addEventListener('dragend', dragEnd);
}

for (let taskCard2 of protaskcards) {
  taskCard2.addEventListener('dragstart', dragStart);
  taskCard2.addEventListener('dragend', dragEnd);
}

for (let taskCard3 of donetaskcards) {
  taskCard3.addEventListener('dragstart', dragStart);
  taskCard3.addEventListener('dragend', dragEnd);
}



function dragStart() {
  this.classList.add('hold');
  setTimeout(() => this.classList.add('invisible'), 0);
}

function dragEnd() {
  this.classList.remove('invisible');
}

function dragOver(e) {
  e.preventDefault();
}

function dragEnter(e) {
  e.preventDefault();
  // dėl šitų efektų tai abejoju, per daug mirga-marga. Bet palikau, patobulinkite
  // this.classList.add('hovered');
}

function dragLeave() {
  // this.classList.remove('hovered');
}

function dragDrop() {
  // kadangi vienu metu tempiamas tik vienas elementas, jis turi klasę hold. būtent ši klasė ir padės mums įmesti į naują konteinerį
  const droppable = document.querySelector('.hold');
  this.append(droppable);
  // nebereikalingos klasės pašalinamos
  droppable.classList.remove('hold');
  this.classList.remove('hovered');

}

const fresh = document.querySelector('#freshy');
const progressive = document.querySelector('#inprogcontainer');
const done = document.querySelector('#done');

progressive.addEventListener('click', testFunction);

// fresh.addEventListener('dragend', turnFresh);

// function turnFresh(){
//   document.querySelector('.progrtask').className += ' newtaskcard';
//   document.querySelector('.donetask').className += ' newtaskcard';
// }


progressive.addEventListener('dragend', turnGay);

function turnGay(){
  document.querySelectorAll('.newtaskcard').className = ' progrtask';
  document.querySelectorAll('.donetask').className = ' progrtask';
}

// done.addEventListener('dragend', turnDone);
//
// function turnDone(){
//   document.querySelector('.newtaskcard').className += ' donetask';
//   document.querySelector('.progrtask').className += ' donetask';
// }
