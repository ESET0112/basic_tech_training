import React, { useRef } from 'react'



export default function UseRefcomponent() {
    const inputElement = useRef(null);
    const focusHandler=()=>{
        inputElement.current.focus();
    }
    return(
        <div>
            Welcome to use ref hook
            <br/>
           
            <input ref={inputElement}></input>
            <br/>
            <button onClick={focusHandler}>focus</button>
        </div>
    );
}
