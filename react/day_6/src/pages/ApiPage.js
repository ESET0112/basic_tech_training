import React from 'react'
import { useFetch } from '../hooks/UseFetch'
import { useEffect } from 'react'

export default function ApiPage() {
    const [loading,data,error] = useFetch("https://jsonplaceholder.typicode.com/posts")
  return (
    <div>ApiPage
    {
        loading && <>Loading...</>
    }
    {
        error && <>{error.message}</>
    }
    {
        !loading && !error && data.map((element)=><div key={element.id}>{element.id}.{element.title}</div>)
    }
    </div>
  )
}
