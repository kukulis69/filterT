// šitą iškėliau nes jis neaktualus tasks.php puslapiui ir generuoja errorus (ten nėra header elemento)
window.onscroll = function () {
  myFunction();
};

var header = document.getElementById('projheader');
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add('sticky');
  } else {
    header.classList.remove('sticky');
  }
}
