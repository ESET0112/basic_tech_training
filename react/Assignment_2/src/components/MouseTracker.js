import React, { useState,useEffect } from 'react'

export default function MouseTracker() {
  const [mouseval,setMouseval]=useState({x:0,y:0})

  useEffect(()=>{
    const handleMouseMovement = (event)=>{
      setMouseval({
        x: event.clientX,
        y: event.clientY

      })
    }
    window.addEventListener('mousemove',handleMouseMovement)

    // return()=>{
    //   window.addEventListener('mousemove',handleMouseMovement)
    // }


  },[])   // Empty dependency array means this effect runs only once on mount
  return (
    <div>
      <h1>MouseTracker</h1>
      <p>Current Mouse Position</p>
      <p>X:{mouseval.x}, Y:{mouseval.y}</p>

    </div>
  )
}
