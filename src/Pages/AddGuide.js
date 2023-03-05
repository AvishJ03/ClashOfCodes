import React from 'react'

const AddGuide = () => {
    return (
        <div className='html text-xl'>
            <div className='pb-16'>
                <div className='text-5xl font-bold text-center pt-8 pb-4'>Register Yourself!</div>
                <form className="rounded-xl bg-[#C8EFF4] mx-96 p-8 my-8">
                    <div className=''>
                        <p className="font-semibold text-2xl">Name:</p>
                        <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                            <input
                                className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                type="text"
                                placeholder="Name"
                                name="name"
                            />
                        </div>
                    </div>
                    <div className=''>
                        <p className="font-semibold text-2xl">City:</p>
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
                                <p className="font-semibold text-2xl">Age:</p>
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
                                <p className="font-semibold text-2xl">Phone Number:</p>
                                <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                                    <input
                                        className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                        type="number"
                                        placeholder="Phone Number"
                                        name="phone"
                                    />
                                </div>
                            </div>
                        </div>
                        <div className=''>
                        <p className="font-semibold text-2xl">Area of Expertise:</p>
                        <div className="flex items-center border-b-2 border-cyan-500 bg-white rounded-md p-1 my-2">
                            <input
                                className="appearance-none bg-transparent border-none w-full text-subtext focus:outline-none placeholder:text-base"
                                type="text"
                                placeholder="Destination City"
                                name="city"
                            />
                        </div>
                    </div>
                    </div>
                    <button type='submit' className='rounded-xl bg-white p-4 mt-4 '>Submit</button>
                </form>
            </div>
        </div>
    )
}

export default AddGuide