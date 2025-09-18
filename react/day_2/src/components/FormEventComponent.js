import React,{useState} from 'react'

const dummyJson={
    "firstName":"myFirstName",
    "lastName":"myLastName",
    "jsonKey":{

    }
}
export default function FormEventComponent() {
    const [username,setUserName]=useState("");
    const [password,setpassword]=useState("");
    // console.log(dummyJson.firstName)
    // console.log(dummyJson['lastName'])

    const onChangeHandler1=(event)=>{
        //console.log(event.target.value)
        setUserName(event.target.value)
        //console.log(username)
    }
    const onChangeHandler2=(event)=>{
        //console.log(event.target.value)
        setpassword(event.target.value)
        //console.log(username)
    }
    const submit=()=>{
        if(username=='Nilanjan' && password=='1234'){
        console.log("Login Successfull")
    }

    }

    
  return (
    <div>
        
        {/* <input type='text' onChange={()=>{console.log("input change")}}/>
         <input type='number' onChange={()=>{console.log("input change")}}/> */}
          {/* <input type='text' value={"username"} onChange={onChangeHandler}></input> */}

          <input type='text' placeholder="enter your username" onChange={onChangeHandler1}></input>
          <input type='text' placeholder="enter your password" onChange={onChangeHandler2}></input>
          <button onClick={submit}>ClickMe</button>
         
    </div>
  )
}
