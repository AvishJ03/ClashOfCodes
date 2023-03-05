import React from 'react'
import star from '../../Assets/star.png'
const GuideCard = () => {
    return (
        <div className='rounded-lg bg-white shadow-md shadow-slate-200 m-4 p-4'>
            <div className='text-4xl font-semibold py-4'>Deepesh Iyer</div>
            <div className='flex justify-between py-4'>
                <div className='flex space-x-2'>
                    <div className='text-3xl font-semibold'>Phone: </div>
                    <div>9023400220</div>
                </div>
                <div className='flex space-x-2'>
                <div className='font-medium text-3xl'>Rating: </div>
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