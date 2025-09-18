import React,{useEffect, useState} from 'react'

export default function UseEffectcomponent() {
    const suggestions=["maxhub","laptop","car"];
    const[recommendation,setRecommendation]=useState([]);
    const[search,setSearch]=useState("");

    useEffect(()=>{
        // console.log("Inside UseEffectComponent")
        if(search===""){
            setRecommendation(suggestions);
        }
        else{
            setRecommendation(suggestions.filter((element)=>element.includes(search)));
            }},[search]);
        
         

return (
    <div>
        <input value={search} onChange={(e)=>setSearch(e.target.value)}></input>
        {
            recommendation.map((rec,index)=>(<div>{index}.{rec}</div>))
        }
    </div>
    
  )
}


