
//import UseRefcomponent from "./Components/UseRefcomponent";
import { createContext ,useState} from "react";
import ParentComponent from "./Components/ParentComponent";
import UseComponentSample from "./Components/UseComponentSample";


const Context = createContext();
export {Context};
function App() {
  const [count,setCount]=useState(0);
  const [username,setUsername]=useState("username");
  return (
    <Context.Provider value={{count,setCount,username,setUsername}}>
      <UseComponentSample/>


    </Context.Provider>

    // <> <ParentComponent/> </>
  );
}

export default App;

