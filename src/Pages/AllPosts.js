// import axios from "axios";
import React, { useState } from "react";
import sunset1 from "../Assets/sunset1.jpg";
import sunset2 from "../Assets/sunset2.jpg";
import sunset3 from "../Assets/sunset3.jpg";
import sunset4 from "../Assets/sunset4.jpg";
import sunset5 from "../Assets/sunset5.jpg";
import AddPost from "./AddPost";
// https://source.unsplash.com/random/500x500?sunset

const AllPosts = () => {
  //   const [text, setText] = useState("");

  //   const getSentiment = async () => {
  //     console.log(text);
  //     const response = await axios.get(
  //       "https://api.api-ninjas.com/v1/sentiment?text=" + text,
  //       {
  //         headers: {
  //           "X-Api-Key": "fxjAWUdGTc+WnoShD0a4xw==8U474DYfD0iQUeQl",
  //         },
  //       }
  //     );
  //     return response.data;
  //   };

  return (
    <div className="min-h-screen w-screen">
      <div className="p-10 bg-[#2b343b] text-white text-5xl pl-16 font-bold">
        Vote for the Photos you like!
      </div>
      <div className="w-full mx-auto flex justify-center my-8  ">
        {/* <img src={quiz_img} /> */}
      </div>
      <div className="pl-36 pr-28">
        <div className="flex justify-between">
          <div className="text-3xl font-semibold text-slate-900">
            View all uploaded photos for the 'Weekly Contest' here!
          </div>
          <AddPost />
        </div>
        <div className="grid grid-cols-2">
          <div className="py-5 my-8">
           <div className="text-xl text-slate-700 font-semibold mb-2"> By Susan Finn</div>
            <img
              src={sunset1}
              alt="sunset"
              className="rounded-lg shadow-primary-sd"
            />
           <div className="text-xl text-slate-700 font-semibold mt-2"> "The Sun" </div>
           <div className="text-xl text-slate-700 font-semibold mt-2"> Likes </div>
          </div>
          <div className="py-5 my-8">
           <div className="text-xl text-slate-700 font-semibold mb-2"> By Susan Finn</div>
            <img
              src={sunset2}
              alt="sunset"
              className="rounded-lg shadow-primary-sd"
            />
           <div className="text-xl text-slate-700 font-semibold mt-2"> "The Sun" </div>
           <div className="text-xl text-slate-700 font-semibold mt-2"> Likes </div>
          </div>
          <div className="py-5 my-8">
           <div className="text-xl text-slate-700 font-semibold mb-2"> By Susan Finn</div>
            <img
              src={sunset3}
              alt="sunset"
              className="rounded-lg shadow-primary-sd"
            />
           <div className="text-xl text-slate-700 font-semibold mt-2"> "The Sun" </div>
           <div className="text-xl text-slate-700 font-semibold mt-2"> Likes </div>
          </div>
          <div className="py-5 my-8">
           <div className="text-xl text-slate-700 font-semibold mb-2"> By Susan Finn</div>
            <img
              src={sunset4}
              alt="sunset"
              className="rounded-lg shadow-primary-sd"
            />
           <div className="text-xl text-slate-700 font-semibold mt-2"> "The Sun" </div>
           <div className="text-xl text-slate-700 font-semibold mt-2"> Likes </div>
          </div>
          <div className="py-5 my-8">
           <div className="text-xl text-slate-700 font-semibold mb-2"> By Susan Finn</div>
            <img
              src={sunset5}
              alt="sunset"
              className="rounded-lg shadow-primary-sd"
            />
           <div className="text-xl text-slate-700 font-semibold mt-2"> "The Sun" </div>
           <div className="text-xl text-slate-700 font-semibold mt-2"> Likes </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AllPosts;
