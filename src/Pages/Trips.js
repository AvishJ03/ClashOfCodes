import React, { useEffect, useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import axios from "axios";

import "swiper/css";
import "swiper/css/effect-coverflow";
import "swiper/css/pagination";
import "swiper/css/navigation";

import { EffectCoverflow, Pagination, Navigation } from "swiper";

import mumbai from "./../Assets/Mumbai.webp";
import banglore from "./../Assets/banglore.jpg";
import singapore from "./../Assets/switz.jpg";
import ladakh from "./../Assets/ladakh.webp";
import paris from "./../Assets/paris.webp";

function Trips() {
  const [trips, setTrips] = useState([]);
  const [places, setPlaces] = useState([]);
  const url1 = "http://localhost:5000/allPlans";
  const url2 = "http://localhost:5000/getDestination";

  useEffect(() => {
    async function getTrips() {
      const res = await axios.get(url1, {
        headers: {
          "auth-token": localStorage.getItem("token"),
        },
      });
      setTrips(res.data.plan);
    }
    getTrips();
  }, []);

  useEffect(() => {
    async function getPlaces() {
      const arr = [];
      trips.forEach(async (trip) => {
        const res = await axios.get(url2 + `/${trip.destinationID}`);
        trip["name"] = res.data.destination;
        arr.push(trip);
      });
      console.log(arr);
      setPlaces(arr);
    }
    getPlaces();
  }, [trips]);

  useEffect(() => { }, [places]);

  return (
    <div className="html swiperrrr bg-[#efeded]">
      <div className="container">
        <div className="flex justify-between mb-8">
          <h1 className="heading font-bold font-">Planned Trips</h1>
          <div className="text-center text-4xl font-bold bg-[#F27D42] text-white pt-8 px-4 rounded-[1rem]">
            Plan a Trip
          </div>
        </div>
        <Swiper
          effect={"coverflow"}
          grabCursor={true}
          centeredSlides={true}
          loop={true}
          slidesPerView={"auto"}
          coverflowEffect={{
            rotate: 20,
            stretch: 0,
            depth: 100,
            modifier: 2.5,
          }}
          pagination={{ el: ".swiper-pagination", clickable: true }}
          navigation={{
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
            clickable: true,
          }}
          modules={[EffectCoverflow, Pagination, Navigation]}
          className="swiper_container"
        >
          <SwiperSlide>
            <img className="opacity-75" src={mumbai} alt="slide_image" />
          </SwiperSlide>
          <SwiperSlide>

            <img className="opacity-75" src={banglore} alt="slide_image" />
          </SwiperSlide>
          <SwiperSlide>

            <img className="opacity-75" src={singapore} alt="slide_image" />
          </SwiperSlide>
          <SwiperSlide>

            <img className="opacity-75" src={ladakh} alt="slide_image" />
          </SwiperSlide>
          <SwiperSlide>

            <img className="opacity-75" src={paris} alt="slide_image" />
          </SwiperSlide>
          <div className="slider-controler">
            <div className="swiper-button-prev slider-arrow">
              <ion-icon name="arrow-back-outline"></ion-icon>
            </div>
            <div className="swiper-button-next slider-arrow">
              <ion-icon name="arrow-forward-outline"></ion-icon>
            </div>
          </div>
        </Swiper>
      </div>
    </div>
  );
}

export default Trips;
