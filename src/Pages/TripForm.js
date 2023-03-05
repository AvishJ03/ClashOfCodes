import React from 'react'
import {useNavigate} from "react-router-dom"
const TripForm = () => {
    const navigate=useNavigate()
    const handleClick=()=>{
        navigate('/tripform2')
    }
    return (
        <div className='html text-xl'>
            <div className=''>
                <div className='text-5xl font-bold text-center pt-8 pb-4'>Plan Your Trip!</div>
                <form className="rounded-xl bg-[#C8EFF4] mx-48 p-8 my-8">
                    <div className=''>
                        <p className="font-semibold text-2xl">Destination Country:</p>
                        <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                            <input
                                className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                type="text"
                                placeholder="Destination Country"
                                name="county"
                            />
                        </div>
                    </div>
                    <div className=''>
                        <p className="font-semibold text-2xl">Destination City:</p>
                        <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                            <input
                                className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                type="text"
                                placeholder="Destination City"
                                name="city"
                            />
                        </div>
                    </div>
                    <div className=''>
                        <div>
                        <div>
                            <p className="font-semibold text-2xl">Number of people:</p>
                            <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2 ">
                                <input
                                    className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                    type="number"
                                    placeholder="Number of People"
                                    name="people"
                                />
                            </div>
                        </div>

                        <div>
                            <p className="font-semibold text-2xl">Budget:</p>
                            <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                                <input
                                    className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                    type="number"
                                    placeholder="Budget"
                                    name="budget"
                                />
                            </div>
                        </div>
                        </div>
                        <div className='flex space-x-8'>
                            <div>
                                <p className="font-semibold text-2xl">Date of Departure:</p>
                                <div className="text-base flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                                    <input
                                        className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                        type="date"
                                        placeholder="Departure"
                                        name="departure"
                                    />
                                </div>
                            </div>
                            <div>
                                <p className="font-semibold text-2xl">Date of Arrival:</p>
                                <div className="text-base flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                                    <input
                                        className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                        type="date"
                                        placeholder="Arrival"
                                        name="arrival"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className='flex justify-end space-x-2'>
                        <div className='text-2xl font-semibold text-[#022449]' onClick={handleClick}>Select your Interests </div>
                        <ion-icon name="arrow-forward-outline" ></ion-icon></div>
                </form>
            </div>
        </div>
    )
}

export default TripForm