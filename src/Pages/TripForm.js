import axios from 'axios';
import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom';

const TripForm = () => {

    const navigate = useNavigate();

    const [form, setForm] = useState({
        "country": "",
        "placename": "",
        "no. of people": 1,
        "start": "",
        "end": "",
        "budget": 0,
        "interests": []
    })

    function handleChange(e){
        setForm({...form, [e.target.name]: e.target.value})
    }

    async function submit(e){
        e.preventDefault();
        const res = await axios.post("http://localhost:5000/addPlan", form, {
            headers: {
                "auth-token": localStorage.getItem("token")
            }
        })
        console.log(res.data.plan._id);
        localStorage.setItem("planID", res.data.plan._id)
        navigate("/tripForm2")
    }

    return (
        <div className=''>
            <div className=''>
                <div className='text-7xl font-bold text-center py-8'>Plan Your Trip!</div>
                <form className="rounded-xl bg-[#C8EFF4] my-36 mx-96 p-8">
                    <div className='my-8'>
                        <p className="font-semibold text-3xl">Destination Country:</p>
                        <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-4 my-4">
                            <input
                                className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                                type="text"
                                placeholder="Destination Country"
                                name="country"
                                value={form.country}
                                onChange={handleChange}
                            />
                        </div>
                    </div>
                    <div className='my-8'>
                        <p className="font-semibold text-3xl">Destination City:</p>
                        <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-4 my-4">
                            <input
                                className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                                type="text"
                                placeholder="Destination City"
                                name="placename"
                                value={form.placename}
                                onChange={handleChange}
                            />
                        </div>
                    </div>
                    <div className='my-8 flex justify-between'>
                        <div>
                            <p className="font-semibold text-3xl">Number of people:</p>
                            <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-4 my-4 ">
                                <input
                                    className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                                    type="number"
                                    placeholder="Number of People"
                                    name="people"
                                />
                            </div>
                        </div>
                        <div className='flex space-x-8'>
                            <div>
                                <p className="font-semibold text-3xl">Date of Departure:</p>
                                <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-4 my-4">
                                    <input
                                        className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                                        type="date"
                                        placeholder="Departure"
                                        name="start"
                                        value={form.start}
                                        onChange={handleChange}
                                    />
                                </div>
                            </div>
                            <div>
                                <p className="font-semibold text-3xl">Date of Arrival:</p>
                                <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-4 my-4">
                                    <input
                                        className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                                        type="date"
                                        placeholder="Arrival"
                                        name="end"
                                        value={form.end}
                                        onChange={handleChange}
                                    />
                                </div>
                            </div>
                        </div>
                        <div>
                            <p className="font-semibold text-3xl">Budget:</p>
                            <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-4 my-4">
                                <input
                                    className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                                    type="number"
                                    placeholder="Budget"
                                    name="budget"
                                    value={form.budget}
                                    onChange={handleChange}
                                />
                            </div>
                        </div>
                    </div>
                    <div className='flex justify-end space-x-2' onClick={submit}>
                    <div className='text-3xl font-semibold text-[#022449]'>Select your Interests </div>
                    <ion-icon name="arrow-forward-outline" ></ion-icon></div>
                </form>
            </div>
        </div>
    )
}

export default TripForm