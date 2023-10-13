
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









function App(){}
    window.onload = function(event){
        var app= new App();
        window.app =app;
    }

    App.prototype.processingButton=function(event){
    const btn = event.currentTarget;
    const carruselList = event.currentTarget.parentNode;
const track = event.currentTarget.parentNode.querySelector("#track");
const carrusel = track.querySelectorAll(".carrusel");

    const carruselWidth = carrusel[0].offsetWidth;
    const trackWidth = track.offsetWidth;
    const listWidth = carruselList.offsetWidth;

    track.style.left ==""? leftPosition = track.style.left =0: leftPosition=parseFloat(track.style.left.slice(0,-2)*-1);
        btn.dataset.button == "button-prev"? prevAction(leftPosition,carruselWidth,track):nextActtion(leftPosition,trackWidth, listWidth,carruselWidth,track);
    }

    let prevAction = (leftPosition, carruselWidth, track) =>{
        if(leftPosition >0){
            track.style.left=` ${-1*(leftPosition -carruselWidth)}px`; 

        }
    }
    let nextActtion=(leftPosition,trackWidth,listWidth,carruselWidth,track)=> {
        if(leftPosition < (trackWidth-listWidth)){
            track.style.left=` ${-1*(leftPosition + carruselWidth)}px`; 

        }
    }
    

let modal = document.getElementById('miModal');
let flex = document.getElementById('flex');
let abrir = document.getElementById('abrir');
let cerrar = document.getElementById('close');

abrir.addEventListener('click', function(){
    modal.style.display = 'block';
});

cerrar.addEventListener('click', function(){
    modal.style.display = 'none';
});

window.addEventListener('click', function(e){
    console.log(e.target);
    if(e.target == flex){
        modal.style.display = 'none';
    }
});