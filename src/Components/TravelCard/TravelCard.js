import React from 'react'

const TravelCard = (props) => {
  return (
    <div className='rounded-xl m-4 shadow-lg shadow-slate-300'>
    <div className='rounded-xl bg-slate-200 p-8'>
        <img src={props.img} alt="" className='h-80 m-auto' />
        <div className="text-4xl font-bold">{props.name}</div>
        <div className='text-2xl font-medium'>{props.location}</div>
        <div>Date: {props.start} to {props.end}</div>
        <div className='flex'>
            <div className='bg-[#022449] py-1 px-2 text-white rounded-lg m-2'>Photography</div>
            <div className='bg-[#022449] py-1 px-2 text-white rounded-lg m-2'>Blogger</div>
            <div className='bg-[#022449] py-1 px-2 text-white rounded-lg m-2'>Foodie</div>
            
        </div>
    </div>
    </div>
  )
}

export default TravelCard