
import './App.css';
import {useState} from 'react';

// function App() {
//   return (
//     <>
//     HELLO WORLD
//     </>
//   );
// }

//function App({name,tagline}){
function App(){
  const ContainerStyle={
    display:'flex',
    justifyContent:'center',
    alignItems:'center',
    flexDirection:'column',
    height:'100vh'
  }

  const[counter,setCounter]=useState(0);
  const IncrementHandler=()=>{
    setCounter(counter+1)
  }
  const DecrementHandler=()=>{
    setCounter(counter-1)
  }
  return (
    <div style={ContainerStyle}>

      {/* <p>Name: {name}</p>
      <p>Tagline: {tagline===undefined?"No Tagline":tagline}</p> */}

      <p style={{fontSize:'100px'}}>{counter}</p>
      <button onClick={IncrementHandler}>Increment</button>
      <button onClick={DecrementHandler}>Decrement</button>
    </div>
  );
}

export default App;

