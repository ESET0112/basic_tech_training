import React, { useState,useEffect } from 'react'

export default function CustomHookComponent() {
    const [data,setData]=useState([])
    const [loading,setLoading]=useState(false)
    const [error,setError] = useState(null)

    const getData=()=>{
        setLoading(true)
        fetch("https://jsonplaceholder.typicode.com/posts")
        .then((data)=>data.json())
        .then((data)=>setData(data))
        .catch((error)=>setError(error.message))
        .finally(()=>{setLoading(false)})
    }

    useEffect(getData,[])

  return (
    <div>
        {/* <button onClick={()=>getData()}>load data</button>
        {
            loading?<>loading...</>:<></>
        } */}

        {
            loading && <>loading...</>
        }
        {
            data.map((item)=><div key={item.id}>{item.id}.{item.title}</div>)
        }
    </div>
  )
}
