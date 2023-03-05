import React from 'react'
import EventsCard from '../components/EventsCard/EventsCard'
import GuideCard from '../components/GuideCard/GuideCard'

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
                <GuideCard />
                <GuideCard />
                <GuideCard />
                <GuideCard />
            </div>
        </div>
    )
}

export default Guides