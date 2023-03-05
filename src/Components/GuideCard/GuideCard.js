import React from 'react'
import star from '../../Assets/star.png'
const GuideCard = (props) => {
    return (
        <div className='rounded-lg bg-white shadow-md shadow-slate-200 m-4 p-4'>
            <div className='text-2xl font-semibold py-4'>{props.name}</div>
            <div className='flex justify-between py-4'>
                <div className='flex space-x-2'>
                    <div className='text-xl font-semibold'>Phone: </div>
                    <div className='text-lg'>{props.phone}</div>
                </div>
                <div className='flex space-x-2'>
                <div className='font-medium text-xl'>Rating: </div>
                <div className='flex'>
                    <img src={star} alt="" className='h-8' />
                    <img src={star} alt="" className='h-8' />
                    <img src={star} alt="" className='h-8' />
                    <img src={star} alt="" className='h-8' />
                </div>
                </div>
            </div>


        </div>
    )
}

export default GuideCard