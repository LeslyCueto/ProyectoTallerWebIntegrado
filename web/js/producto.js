const headerMenu=document.querySelector('.hm-header');

console.log(headerMenu.offsetTop);

window.addEventListener('scroll',()=>{
    if(window.pageYOffset > 80){
        headerMenu.classList.add('header-fixed');
    }else{
        headerMenu.classList.remove('header-fixed');
    }
})

/*=========================================
    Tabs
==========================================*/
if(document.querySelector('.hm-tabs')){

    const tabLinks=document.querySelectorAll('.hm-tab-link');
    const tabsContent=document.querySelectorAll('.tabs-content');

    tabLinks[0].classList.add('active');

    if(document.querySelector('.tabs-content')){
        tabsContent[0].classList.add('tab-active');
    }
    

    for (let i = 0; i < tabLinks.length; i++) {
        
        tabLinks[i].addEventListener('click',()=>{

            
            tabLinks.forEach((tab) => tab.classList.remove('active'));
            tabLinks[i].classList.add('active');
            
            tabsContent.forEach((tabCont) => tabCont.classList.remove('tab-active'));
            tabsContent[i].classList.add('tab-active');
            
        });
        
    }

}

/*=========================================
    MENU
==========================================*/

const menu=document.querySelector('.icon-menu');
const menuClose=document.querySelector('.cerrar-menu');

menu.addEventListener('click',()=>{
    document.querySelector('.header-menu-movil').classList.add('active');
})

menuClose.addEventListener('click',()=>{
    document.querySelector('.header-menu-movil').classList.remove('active');
})












let cartIcon = document.querySelector("#cart-icon");
let cart = document.querySelector(".cart");
let closeCart = document.querySelector("#close-cart");

cartIcon.onclick = () => {
    cart.classList.add("active");
};
closeCart.onclick = () => {
    cart.classList.remove("active");
};


if(document.readyState == "loading"){
    document.addEventListener("DOMContentLoaded", ready);
}else {
    ready();
}


function ready(){
    var reomveCartButtons = document.getElementsByClassName("cart-remove");
    console.log(reomveCartButtons);
    for (var i=0; i< reomveCartButtons.length; i++){
        var button = reomveCartButtons[i]
        button.addEventListener("click", removeCartItem);
    }
    var quantityInputs = document.getElementsByClassName("cart-quantity");
    for (var i = 0; i< quantityInputs.length; i++){
        var input = quantityInputs[i];
    input.addEventListener("change", quantityChanged);
    }
    var addCart = document.getElementsByClassName("add-cart");
    for(var i = 0; i < addCart.length; i++){
    var button = addCart[i];
    button.addEventListener("click", addCartClicked);
    }
    document
    .getElementsByClassName("btn-buy")[0]
    .addEventListener("click", buyButtonClicked);

}

function buyButtonClicked(){
    alert("your order is placed")
    var cartContent = document.getElementsByClassName("cart-content")[0]
    while(cartContent.hasChildNodes()){
        cartContent.removeChild(cartContent.firstChild);
    }
    updatetotal();
}



function removeCartItem(event) {
    var buttonClicked = event.target;
    buttonClicked.parentElement.remove();
    updateItemCount();
    updatetotal();
}
function updateItemCount() {
    var itemCount = document.getElementsByClassName("cart-box").length;
    var itemCountElement = document.querySelector(".item-count");
    itemCountElement.textContent = itemCount;
}
function quantityChanged(event){
    var input = event.target;
    if (isNaN(input.value) || input.value <= 0 ) {
        input.value = 1;
    }
    updatetotal();
}

function addCartClicked(event){
    var button = event.target;
    var shopProducts = button.parentElement;
    var title = shopProducts.getElementsByClassName("product-title")[0].innerText;
    var price = shopProducts.getElementsByClassName("price")[0].innerText;
    var productImg = shopProducts.getElementsByClassName("product-img")[0].src;
    addProductToCard(title, price,productImg);
    updateItemCount();
    updatetotal();
}

function  addProductToCard (title,price,productImg){
    var cartShopBox = document.createElement("div");
    cartShopBox.classList.add("cart-box");
    var cartItems = document.getElementsByClassName("cart-content")[0];
    var cartItemsNames = cartItems.getElementsByClassName("cart-product-title");
    for (var i = 0; i < cartItemsNames.length; i++)  {
        if(cartItemsNames[i].innerText == title)  {
            alert("You have already add this item to cart");
            return;
        }
    }
var cartBoxContent = ` 
<img src="${productImg}" alt="" class="cart-img">
<div class="detail-box">
<div class="cart-product-title">${title}</div>
<div class="cart-price">${price}</div>
<input type="number" value="1" class="cart-quantity">
</div>
<i class="bx bxs-trash-alt cart-remove"></i>
`;

cartShopBox.innerHTML = cartBoxContent;

            cartItems.append(cartShopBox);
            cartShopBox
            .getElementsByClassName("cart-remove")[0]
            .addEventListener("click", removeCartItem);
            cartShopBox
            .getElementsByClassName("cart-quantity")[0]
            .addEventListener("change", quantityChanged);



}


function updatetotal(){
    var cartContent = document.getElementsByClassName("cart-content")[0];
    var cartBoxes = cartContent.getElementsByClassName("cart-box");
    var total =0;
    for (var i = 0; i < cartBoxes.length; i++){
        var cartBox = cartBoxes [i];
        var priceElement = cartBox.getElementsByClassName("cart-price")[0];
        var quantityElement = cartBox.getElementsByClassName("cart-quantity")[0];
        var price= parseFloat(priceElement.innerText.replace("$",""));
        var quantity = quantityElement.value;
        total = total +( price * quantity);
    }
        total = Math.round(total *100)/ 100;
        document.getElementsByClassName("total-price")[0].innerText= "$"+ total;
    
}
function App() {}

window.onload = function (event) {
    var app = new App();
    window.app = app;

    // Llama a la función para mover automáticamente el carrusel cada 3 segundos (puedes ajustar el intervalo)
    setInterval(function () {
        app.autoMoveCarrusel();
    }, 3000);
}

App.prototype.processingButton = function (event) {
    // Tu código actual para manejar los botones previos y siguientes.
}

App.prototype.autoMoveCarrusel = function () {
    const track = document.getElementById('track');
    const carruselWidth = track.querySelector('.carrusel').offsetWidth;
    const trackWidth = track.offsetWidth;
    const listWidth = document.getElementById('carrusel-list').offsetWidth;

    let leftPosition = track.style.left === "" ? (track.style.left = 0) : parseFloat(track.style.left.slice(0, -2) * -1);

    // Calcula si el carrusel ha llegado al final
    if (leftPosition < (trackWidth - listWidth)) {
        // Mueve el carrusel hacia la siguiente diapositiva
        track.style.left = ` ${-1 * (leftPosition + carruselWidth)}px`;
    } else {
        // Si ha llegado al final, vuelve al principio
        track.style.left = "0";
    }
}












// Agrega un evento click a los botones
document.getElementById('button1').addEventListener('click', function () {
    // Muestra la tarjeta 1 y oculta la tarjeta 2
    document.getElementById('card1').style.display = 'block';
    document.getElementById('card2').style.display = 'none';
});

document.getElementById('button2').addEventListener('click', function () {
    // Muestra la tarjeta 2 y oculta la tarjeta 1
    document.getElementById('card2').style.display = 'block';
    document.getElementById('card1').style.display = 'none';
});

