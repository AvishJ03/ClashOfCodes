import React from 'react'
import './EventsCard.css'
import mumbai from "../../Assets/mumbai2.webp"
const EventsCard = () => {
  return (
    <div className="cardec">
  <div className="img-cardec">
    <img src={mumbai} alt="" className=''/>
  </div>
  <div className="add-cartec"></div>
  <div className="info-cardec bg-white">
    <p><strong>Gateway of India</strong></p>
  </div>
  
</div>
  )
}

export default EventsCard