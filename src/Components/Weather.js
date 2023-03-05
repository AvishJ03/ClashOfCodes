import React, { useState, useEffect } from "react";
import axios from "axios";
import { FaSearch } from "react-icons/fa";
import { AiFillCloud } from "react-icons/ai";
// b3fb4b1c790afbcad7ad022d78918326
const Weather = () => {
  const [search, setSearch] = useState("LONDON");
  const [data, setData] = useState([]);
  const [input, setInput] = useState("");
  //   let compmounted = false;

  const handleSubmit = (event) => {
    event.preventDefault();
    setSearch(input);
  };

  useEffect(() => {
    const fetchWeather = async () => {
      const res = await fetch(
        `https://api.openweathermap.org/data/2.5/weather?q=${search}&appid=b3fb4b1c790afbcad7ad022d78918326`
      );
      //   if (compmounted) {
      setData(await res.json());
      console.log(data);
      console.log(data.name);
      //   }
      //   return () => {
      // compmounted = false;
      //   };z
    };
    fetchWeather();
  }, [search]);

  return (
    <div className="w-full shadow-primary-sd">
      {data.main && (
        <div class="wrapper bg-gray-200 antialiased text-gray-900">
          <div className="w-full">
            <img
              src={`https://source.unsplash.com/500x600/?${data.weather[0].main}`}
              //   src={`https://source.unsplash.com/500x600/?nature`}
              alt=" random imgee"
              class="w-full object-cover object-center rounded-lg shadow-md"
            />
            <div className="absolute bottom-48 right-[45rem]">
              <form>
                <input
                  type="search"
                  name="search"
                  value={input}
                  placeholder="Search City"
                  onChange={(e) => setInput(e.target.value)}
                  className="p-3 rounded-md"
                />
                <button className="p-3" onClick={handleSubmit}>
                  <FaSearch color="white" size="1.5rem" />
                </button>
              </form>
            </div>
            <div className="absolute bottom-8 right-[50rem]">
              <AiFillCloud color="white" size="10rem" />
            </div>
            <div className="absolute bottom-0 right-[45rem] text-5xl text-white font-extrabold">
              {data.main.temp} &deg;F <br />
              {data.name}
            </div>

            <div class="relative p-4 -mt-12  ">
              <div class="bg-white p-6 rounded-lg shadow-lg">
                <div class="flex items-baseline">
                  {/* <div class="ml-2 text-gray-600 uppercase text-xs font-semibold tracking-wider">
                  2 baths &bull; 3 rooms
                </div> */}
                </div>

                <h4 class="mt-1 text-xl font-semibold uppercase leading-tight truncate">
                  {data.name} Sunday, March 5, 2023
                </h4>
                <div class="mt-2">
                  <span class="text-teal-600 text-md font-semibold">
                    {data.weather[0].main}
                  </span>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default Weather;
