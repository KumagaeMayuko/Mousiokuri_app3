'use strict';

// document.addEventListener('DOMContentLoaded', function () {
//   // 引数に指定したclassの値をもつ要素をすべて取得
//   const menuItems = document.querySelectorAll('.menu li a');
//   const contents = document.querySelectorAll('.content');

//   menuItems.forEach(clickedItem => {
//     clickedItem.addEventListener('click', e => {
//       e.preventDefault();

//       menuItems.forEach(item => {
//         item.classList.remove('active');
//       });
//       clickedItem.classList.add('active');

//       contents.forEach(content => {
//         content.classList.remove('active');
//       });
//     });
//   });
// }, false);


// document.addEventListener('DOMContentLoaded', function () {
//   const menuItems = document.querySelectorAll('.menu li a');
//   const contents = document.querySelectorAll('.message');

//   menuItems.forEach((clickedItem, index) => {
//     clickedItem.addEventListener('click', e => {
//       e.preventDefault();

//       menuItems.forEach(item => {
//         item.classList.remove('active');
//       });
//       clickedItem.classList.add('active');

//       contents.forEach(content => {
//         content.classList.remove('active');
//       });
//       contents[index].classList.add('active');
//     });
//   });
// }, false);

{
  const menuItems = document.querySelectorAll('.menu li a');
  const contents = document.querySelectorAll('.message');

  menuItems.forEach((clickedItem, index) => {
    clickedItem.addEventListener('click', e => {
      e.preventDefault();

      menuItems.forEach(item => {
        item.classList.remove('active');
      });
      clickedItem.classList.add('active');

      contents.forEach(content => {
        content.classList.remove('active');
      });
      contents[index].classList.add('active');
    });
  });
}