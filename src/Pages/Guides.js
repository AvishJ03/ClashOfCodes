import React from 'react'
import EventsCard from '../Components/EventsCard/EventsCard'
import GuideCard from '../Components/GuideCard/GuideCard'

const Guides = () => {
    return (
        <div className=''>
            <div className='text-6xl font-bold text-center py-8'>Tourist Places</div>
            <div className='flex mx-32 space-x-24 mt-8 mb-16 '>
                <EventsCard/>
                <EventsCard/>
                <EventsCard/>
                <EventsCard/>
                <EventsCard/>
            </div>
            <div className='text-6xl font-bold text-center py-8'>Guides</div>
            <div className="grid grid-cols-3 mx-16">
                <GuideCard name="Deepesh Iyer" phone="8200032783"/>
                <GuideCard name="Aditya Shah" phone="9023384088"/>
                <GuideCard name="Soham Kulkarni" phone="8734927490"/>
                <GuideCard name="Rahul Jain" phone="8203720405"/>
            </div>
        </div>
    )
}

export default Guides