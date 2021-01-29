require('./bootstrap');

let category = document.getElementsByClassName('category');
let product = document.getElementsByClassName('product');
let post = document.getElementsByClassName('post');
let showCategory = document.getElementById('showCategory');
let showProduct = document.getElementById('showProduct');
let showPost = document.getElementById('showPost');


showElem(category,showCategory);
showElem(product,showProduct);
showElem(post,showPost);

function showElem(elem,btn) {
    for (let i = 0; i < elem.length; i++) {
        if (i>2){
            elem[i].classList.add('hidden');
            console.log(elem[i]);
            btn.classList.remove('hidden');
        }
        btn.addEventListener('click', function() {
            elem[i].classList.remove('hidden');
            btn.remove();
        });
    }
}
