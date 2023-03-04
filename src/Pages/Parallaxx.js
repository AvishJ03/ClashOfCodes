// import React from 'react'
// import Plx from 'react-plx'
// import mountain_01 from'../Assets/mountain_01.png'
// import mountain_02 from'../Assets/mountain_02.png'
// import trees_02 from'../Assets/trees_02.png'
// import trees_01 from'../Assets/trees_01.png'
// import man from'../Assets/man.png'
// import plants from'../Assets/plants.png'
// import { Fade } from "react-reveal";
// import './Parallax.css'
// import { useState, useEffect } from "react";
// import {Parallax, ParallaxLayer} from '@react-spring/parallax'
// const Parallaxx = () => {  
//     const [parallax, setParallax] = useState(0);
//     useEffect(() => {
//         parrallaxFunc();
//       }, [parallax]);

//       function parrallaxFunc() {
//         console.log("Inside Scroll");
//         let mountain_01 = document.getElementById("m1");

//         let mountain_02 = document.getElementById("m2");
//         let trees_01 = document.getElementById("t1");
//         let trees_02 = document.getElementById("t2");
//         let man = document.getElementById("man");
//         let plants = document.getElementById("plants");
    
//         window.addEventListener("scroll", function () {
//           console.log("Inside Event Scroll");
//           let value = window.scrollY;
    
//           mountain_01.style.top = value * -1.5 + "px";
//           mountain_02.style.left = value * 2 + "px";
//           trees_01.style.top = value * -1.5 + "px";
//           trees_02.style.left = value * -5 + "px";
//           man.style.top = value * 0.08 + "px";
//           plants.style.top = value * 0.25 + "px";
//         });
    
//         console.log("Done Scroll");
//       }
//   return (
//     <div>
//        <Fade bottom>
//         <section className="parallax">
//           <section>
//             <h2 id="text">
//               <span>Welcome to</span>
//               <br />
//               FarmEasy
//             </h2>
//             <img
//               src={mountain_01}
//               id="m1"
//               alt="bird1"
//             />
//             <img
//               src={trees_02}
//               id="t2"
//               alt="bird2"
//             />
//             <img src={mountain_02} id="m2" alt="forest" />

//             <img src={trees_01} id="t1" alt="rocks" />
//             <img src={man} id="man" alt="rocks" />
//             <img src={plants} id="plants" alt="rocks" />
//           </section>
//         </section>
//       </Fade>
//       <div className='section2para relative p-24 bg-[#112434]'>
//         <div className='text-3xl font-bold text-[#fff]'>
//           Adventure waits, let's go!
//         </div>
//         <div className='text-lg font-normal text-[#fff]'>Welcome to our travel website, where we help you explore the world and create unforgettable memories. Our website is designed to provide you with all the information you need to plan your next adventure, from destination guides and travel tips to hotel recommendations and tour packages. Whether you're a seasoned traveler or planning your first trip, we've got you covered. Our travel website is your one-stop-shop for all your travel needs. We offer a wide range of resources and tools to help you plan your dream vacation.</div>
        
//       </div>
//     </div>
//   )
// }

// export default Parallaxx