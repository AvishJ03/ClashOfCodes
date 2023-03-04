import React from 'react'

const TripForm = () => {
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
                                name="county"
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
                                name="city"
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
                                        name="departure"
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
                                        name="arrival"
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
                                />
                            </div>
                        </div>
                    </div>
                    <div className='flex justify-end space-x-2'>
                    <div className='text-3xl font-semibold text-[#022449]'>Select your Interests </div>
                    <ion-icon name="arrow-forward-outline" ></ion-icon></div>
                </form>
            </div>
        </div>
    )
}

export default TripForm