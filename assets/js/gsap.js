

// requires GSAP 3.10.0 or later

gsap.set(".cursor", {xPercent: 0, yPercent: 0});

let xTo = gsap.quickTo(".cursor", "x", {duration: 0.6, ease: "power3"}),
    yTo = gsap.quickTo(".cursor", "y", {duration: 0.6, ease: "power3"});

window.addEventListener("mousemove", e => {
  // xTo(e.pageX);
  // yTo(e.pageY);
  xTo(e.clientX);
  yTo(e.clientY);
});

//animate navbar


/*
gsap.from('.navbar', {duration :1,  height : '0px', opacity:0 })


gsap.from('.evstation', {duration :0.8, x :'-30%' ,opacity:0, ease:"power3" ,delay: 0.8})

gsap.from('.link', {duration :0.8  ,opacity:'0',ease :"power3" ,delay:0.6 ,stagger:0.1})

*/

