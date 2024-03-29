import React, { useState } from "react";
import "./../Components/InterestCard/InterestCard.css";
import photographer from "../Assets/photographer1.png";
import foodie from "../Assets/foodie.png";
import staycation from "../Assets/staycation.png";
import bagpack from "../Assets/Bagpack.png";
import blogger from "../Assets/blogger.png";
import adventure from "../Assets/adventure.png";
import axios from "axios";
const TripForm2 = () => {
  const [options, setOptions] = useState({
    Photography: false,
    Foodie: false,
    Staycation: false,
    Backpacking: false,
    Blogger: false,
    Adventure: false,
  });

  function handleChange(e) {
    setOptions({ ...options, [e.target.name]: e.target.checked });
  }

  async function submit(e) {
    e.preventDefault();
    const interests = [];
    const keys = Object.keys(options);
    const values = Object.values(options);

    values.forEach((element, idx) => {
      if (element) {
        interests.push(keys[idx]);
      }
    });

    const res = await axios.post("http://localhost:5000/addInterests", {
      interests: interests,
      id: localStorage.getItem("planID"),
    });
    console.log(res.data);
  }

  return (
    <div>
      <div className="text-6xl font-bold text-center py-8">
        Choose your Interests!
      </div>
      <div className="grid grid-cols-3 justify-items-center m-16">
        <div className="card bg-[#C8EFF4] shadow-lg shadow-gray-200 ">
          <div className="card-image">
            <img src={photographer} alt="" className="flex " />
          </div>
          <div className="flex justify-start">
            <div className="container py-4">
              <input
                type="checkbox"
                name="Photography"
                onChange={handleChange}
                value={options.Photography}
                id="cbx21"
                style={{ display: "none" }}
              />
              <label htmlFor="cbx21" className="check">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                  <path d="M 1 9 L 1 9 c 0 -5 3 -8 8 -8 L 9 1 C 14 1 17 5 17 9 L 17 9 c 0 4 -4 8 -8 8 L 9 17 C 5 17 1 14 1 9 L 1 9 Z"></path>
                  <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
              </label>
            </div>
            <div className="heading ">Photography</div>
          </div>
          <div className="category">
            Do you enjoy capturing moments and memories through photography? Are
            you someone who loves to snap pictures wherever you go?{" "}
          </div>
        </div>

        <div className="card  bg-[#C8EFF4] shadow-lg shadow-gray-200 ">
          <div className="card-image">
            <img src={foodie} alt="" className="flex " />
          </div>
          <div className="flex justify-start">
            <div className="container py-4">
              <input
                type="checkbox"
                name="Foodie"
                onChange={handleChange}
                value={options.Foodie}
                id="cbx22"
                style={{ display: "none" }}
              />
              <label htmlFor="cbx22" className="check">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                  <path d="M 1 9 L 1 9 c 0 -5 3 -8 8 -8 L 9 1 C 14 1 17 5 17 9 L 17 9 c 0 4 -4 8 -8 8 L 9 17 C 5 17 1 14 1 9 L 1 9 Z"></path>
                  <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
              </label>
            </div>
            <div className="heading">Foodie</div>
          </div>
          <div className="category">
            Do you enjoy trying new cuisines, discovering local delicacies, and
            indulging in delicious food wherever you go? Are you a foodie who
            loves to explore a destination's culinary scene?
          </div>
        </div>
        <div className="card  bg-[#C8EFF4] shadow-lg shadow-gray-200 ">
          <div className="card-image">
            <img src={staycation} alt="" className="flex " />
          </div>
          <div className="flex justify-start">
            <div className="container py-4">
              <input
                type="checkbox"
                name="Staycation"
                onChange={handleChange}
                value={options.Staycation}
                id="cbx23"
                style={{ display: "none" }}
              />
              <label htmlFor="cbx23" className="check">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                  <path d="M 1 9 L 1 9 c 0 -5 3 -8 8 -8 L 9 1 C 14 1 17 5 17 9 L 17 9 c 0 4 -4 8 -8 8 L 9 17 C 5 17 1 14 1 9 L 1 9 Z"></path>
                  <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
              </label>
            </div>
            <div className="heading">Staycation</div>
          </div>
          <div className="category">
            Do you sometimes prefer to unwind and relax in the comfort of your
            own city, exploring new neighborhoods and taking a break from the
            routine of daily life? Are you someone who enjoys a staycation to
            recharge and refresh?
          </div>
        </div>
        <div className="card bg-[#C8EFF4] shadow-lg shadow-gray-200 ">
          <div className="card-image">
            <img src={bagpack} alt="" className="flex " />
          </div>
          <div className="flex justify-start">
            <div className="container py-4">
              <input
                type="checkbox"
                name="Backpacking"
                onChange={handleChange}
                value={options.Backpacking}
                id="cbx24"
                style={{ display: "none" }}
              />
              <label htmlFor="cbx24" className="check">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                  <path d="M 1 9 L 1 9 c 0 -5 3 -8 8 -8 L 9 1 C 14 1 17 5 17 9 L 17 9 c 0 4 -4 8 -8 8 L 9 17 C 5 17 1 14 1 9 L 1 9 Z"></path>
                  <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
              </label>
            </div>
            <div className="heading">Backpacking</div>
          </div>
          <div className="category">
            Do you prefer to travel light and immerse yourself in the local
            culture, staying in budget accommodations and taking public
            transportation? Are you someone who loves the sense of adventure
            that comes with backpacking?
          </div>
        </div>
        <div className="card bg-[#C8EFF4] shadow-lg shadow-gray-200 ">
          <div className="card-image">
            <img src={blogger} alt="" className="flex" />
          </div>
          <div className="flex justify-start">
            <div className="container py-4">
              <input
                type="checkbox"
                name="Blogger"
                onChange={handleChange}
                id="cbx25"
                value={options.Blogger}
                style={{ display: "none" }}
              />
              <label htmlFor="cbx25" className="check">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                  <path d="M 1 9 L 1 9 c 0 -5 3 -8 8 -8 L 9 1 C 14 1 17 5 17 9 L 17 9 c 0 4 -4 8 -8 8 L 9 17 C 5 17 1 14 1 9 L 1 9 Z"></path>
                  <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
              </label>
            </div>
            <div className="heading">Blogger</div>
          </div>
          <div className="category">
            Do you document your travel experiences through writing,
            photography, or videography? Are you a travel blogger who shares
            your adventures with the world?
          </div>
        </div>
        <div className="card shadow-lg shadow-gray-200 ">
          <div className="card-image">
            <img src={adventure} alt="" className="flex" />
          </div>
          <div className="flex justify-start">
            <div className="container py-4">
              <input
                type="checkbox"
                name="Adventure"
                onChange={handleChange}
                value={options.Adventure}
                id="cbx26"
                style={{ display: "none" }}
              />
              <label htmlFor="cbx26" className="check">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                  <path d="M 1 9 L 1 9 c 0 -5 3 -8 8 -8 L 9 1 C 14 1 17 5 17 9 L 17 9 c 0 4 -4 8 -8 8 L 9 17 C 5 17 1 14 1 9 L 1 9 Z"></path>
                  <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
              </label>
            </div>
            <div className="heading">Adventurous</div>
          </div>
          <div className="category">
            Are you someone who seeks out new experiences, takes risks, and
            embraces the thrill of the unknown? Do you consider yourself
            adventurous?
          </div>
        </div>
        <button onClick={submit} className="bg-[#F27D42] rounded-lg p-4 w-48 text-white font-medium text-xl">Submit</button>
      </div>
    </div>
  );
};

export default TripForm2;
