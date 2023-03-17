import React, { useEffect, useState } from "react";
import bg2 from "../Assets/bg2.png";
import bg1 from "../Assets/bg1.png";
import { Configuration, OpenAIApi } from "openai";
import { useLocation } from "react-router-dom";

const Itenary = () => {
  const state = useLocation();
  const days = state.days ? state.days : 2;
  const place = state.place ? state.place : "Mumbai";
  const [itinerary, setItinerary] = useState({});

  const configuration = new Configuration({
    apiKey: "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",
  });
  const openai = new OpenAIApi(configuration);

  useEffect(() => {
    async function generate() {
      const response = await openai.createChatCompletion({
        model: "gpt-3.5-turbo",
        messages: [
          {
            role: "user",
            content: `give a complete and detailed itinerary for a ${days} day trip to ${place} in json format`,
          },
        ],
        temperature: 0,
        max_tokens: 4000,
      });

      const res = response.data.choices[0].message["content"];
      setItinerary(JSON.parse(res));
      console.log(JSON.parse(res));
    }
    generate();
  }, []);

  return (
    <div className="flex bg-[#F27D42] w-full h-full">
      <div className="w-[50%] bg-white ">
        <div className="relative overflow-x-auto sm:rounded-lg mb-4">
          {Object.values(itinerary).length !== 0 &&
            Array.from(Array(days), (e, i) => {
              return (
                <div>
                  <div className="text-center py-4 text-4xl font-semibold">
                    Day {i + 1}
                  </div>
                  <table className=" text-sm text-left text-gray-500 dark:text-gray-400 w-11/12 m-auto">
                    <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400 ml-8">
                      <tr>
                        <th scope="col" className="px-6 py-3">
                          Time
                        </th>
                        <th scope="col" className="px-6 py-3">
                          Activity
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      {Object.entries(itinerary[`Day ${i + 1}`]).map(
                        (arr, index) => {
                          if (index % 2 === 0) {
                            return (
                              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                                <th
                                  scope="row"
                                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                >
                                  {arr[0]}
                                </th>
                                <td className="px-6 py-4">{arr[1]}</td>
                              </tr>
                            );
                          } else {
                            return (
                              <tr>
                                <th
                                  scope="row"
                                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                                >
                                  {arr[0]}
                                </th>
                                <td className="px-6 py-4">{arr[1]}</td>
                              </tr>
                            );
                          }
                        }
                      )}
                    </tbody>
                  </table>
                </div>
              );
            })}
          {/* <div className="text-center py-4 text-4xl font-semibold">Day 01</div>
          <table className=" text-sm text-left text-gray-500 dark:text-gray-400 w-11/12 m-auto">
            <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400 ml-8">
              <tr>
                <th scope="col" className="px-6 py-3">
                  Time
                </th>
                <th scope="col" className="px-6 py-3">
                  Activity
                </th>
              </tr>
            </thead>
            <tbody>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  9:00 AM
                </th>
                <td className="px-6 py-4">
                  Start the day with a visit to the Gateway of India, a popular
                  monument that overlooks the Arabian Sea.
                </td>
              </tr>
              <tr>
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                >
                  10:00 AM
                </th>
                <td className="px-6 py-4">
                  Take a ferry ride to the Elephanta Caves, located on an island
                  off the coast of Mumbai. The caves are known for their ancient
                  rock-cut temples and sculptures.
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  1:00 PM
                </th>
                <td className="px-6 py-4">
                  Return to Mumbai and have lunch at a local restaurant, where
                  you can try some of the city's famous street food like vada
                  pav or pav bhaji.
                </td>
              </tr>
              <tr>
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                >
                  2:30 PM
                </th>
                <td className="px-6 py-4">
                  Visit the Chhatrapati Shivaji Terminus (CST) railway station,
                  a UNESCO World Heritage Site known for its Victorian Gothic
                  architecture.
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  4:00 PM
                </th>
                <td className="px-6 py-4">
                  Explore the Crawford Market, a bustling bazaar that offers a
                  wide range of goods including fresh produce, spices, and
                  souvenirs.
                </td>
              </tr>
              <tr>
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                >
                  6:00 PM
                </th>
                <td className="px-6 py-4">
                  Watch the sunset at Marine Drive, a scenic promenade that
                  stretches along the coast of Mumbai.
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  8:00 PM
                </th>
                <td className="px-6 py-4">
                  Have dinner at a restaurant in Bandra, a trendy neighborhood
                  that's known for its nightlife and dining scene.
                </td>
              </tr>
            </tbody>
          </table>

          <div className="text-center  font-semibold pt-16 pb-4 text-4xl ">
            Day 02
          </div>
          <table className="text-sm text-left text-gray-500 dark:text-gray-400 w-11/12 m-auto">
            <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400 ml-8">
              <tr>
                <th scope="col" className="px-6 py-3">
                  Time
                </th>
                <th scope="col" className="px-6 py-3">
                  Activity
                </th>
              </tr>
            </thead>
            <tbody>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  9:00 AM
                </th>
                <td className="px-6 py-4">
                  Visit the Haji Ali Dargah, a historic mosque and shrine that's
                  located on a tiny islet off the coast of Mumbai.
                </td>
              </tr>
              <tr>
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                >
                  11:00 AM
                </th>
                <td className="px-6 py-4">
                  Explore the Colaba Causeway, a popular shopping street that's
                  known for its fashion boutiques, antique shops, and cafes.
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  1:00 PM
                </th>
                <td className="px-6 py-4">
                  Have lunch at a restaurant in the Bandra Kurla Complex (BKC),
                  a modern business district that's home to many international
                  companies.
                </td>
              </tr>
              <tr>
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                >
                  2:30 PM
                </th>
                <td className="px-6 py-4">
                  Visit the Nehru Science Centre, a museum that features
                  interactive exhibits and educational displays on science and
                  technology.
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  4:30 PM
                </th>
                <td className="px-6 py-4">
                  Explore the Juhu Beach, a popular destination for locals and
                  tourists alike.
                </td>
              </tr>
              <tr>
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap light:text-white"
                >
                  6:00 PM
                </th>
                <td className="px-6 py-4">
                  Visit the Siddhivinayak Temple, a famous Hindu temple that's
                  dedicated to Lord Ganesha.
                </td>
              </tr>
              <tr className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                <th
                  scope="row"
                  className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  8:00 PM
                </th>
                <td className="px-6 py-4">
                  Have dinner at a restaurant in the Colaba neighborhood, which
                  is known for its historic buildings and diverse dining scene.
                </td>
              </tr>
            </tbody>
          </table> */}
        </div>
      </div>
      <img src={bg1} alt="" className="max-h-screen right-0 absolute" />
    </div>
  );
};

export default Itenary;
