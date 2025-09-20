import React,{useContext} from 'react'
import {Context} from '../App'
export default function UseComponentSample() {
    const {username}=useContext(Context)
  return (
    <div>welcome
        <br/>
    {username}
    </div>
    
  )
}
