import React, { useState,useEffect } from 'react'
import axios from "axios"


const useFetch=(url)=>{
    const[loading,setLoading]=useState(false)
    const[data,setData]=useState(null)
    const[error,setError]=useState(null)

    const getData =async()=>{
        // const data = await axios.get(url,{
        //     headers:{
        //         'Authorization':'bearer<token>'
        //     }
        // })

        // const response = await axios.get(url)
        // console.log(response.data)

        try{
            const response = await axios.get(url)
            console.log(response.data)
            setData(response.data)
        }catch(error){
            setError(error)
        }finally{
            setLoading(false)
        }
    }
    useEffect(()=>{
        getData()

    },[])
    

    return [loading,data,error]
}

export {useFetch}

