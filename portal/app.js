const langButton=document.querySelector('#lang');
let language='zh';
function setLanguage(next){language=next;document.documentElement.lang=next==='zh'?'zh-CN':'en';document.querySelectorAll('[data-zh]').forEach(el=>{el.innerHTML=el.dataset[next]});langButton.textContent=next==='zh'?'EN':'中文';localStorage.setItem('roboturtle-language',next)}
langButton.addEventListener('click',()=>setLanguage(language==='zh'?'en':'zh'));
setLanguage(localStorage.getItem('roboturtle-language')||'zh');
const observer=new IntersectionObserver(entries=>entries.forEach(entry=>{if(entry.isIntersecting){entry.target.classList.add('visible');observer.unobserve(entry.target)}}),{threshold:.12});
document.querySelectorAll('.reveal').forEach(el=>observer.observe(el));
