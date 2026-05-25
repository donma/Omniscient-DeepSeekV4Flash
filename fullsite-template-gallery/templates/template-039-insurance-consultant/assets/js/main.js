document.addEventListener('DOMContentLoaded',function(){
var btt=document.getElementById('backToTop');
if(btt){window.addEventListener('scroll',function(){btt.style.display=window.scrollY>300?'block':'none'});
btt.addEventListener('click',function(){window.scrollTo({top:0,behavior:'smooth'})})}
document.querySelectorAll('a[href^="#"]').forEach(function(a){
a.addEventListener('click',function(e){var h=this.getAttribute('href');if(h!=='#'){e.preventDefault();var t=document.querySelector(h);if(t)t.scrollIntoView({behavior:'smooth'})}})});
document.querySelectorAll('form').forEach(function(f){f.addEventListener('submit',function(e){e.preventDefault();alert('感謝您的填寫！我們將盡快與您聯繫。');this.reset()})});
});
