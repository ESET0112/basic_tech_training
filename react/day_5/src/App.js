
//import UseRefcomponent from "./Components/UseRefcomponent";
import { createContext ,useState} from "react";

import UseReducerCompponent from "./Components/UseReducerCompponent";
import CustomHookComponent from "./Components/CustomHookComponent";


const Context = createContext();
export {Context};
function App() {
  
  return (
 

    //<UseReducerCompponent/>
    <CustomHookComponent/>

  );
}

export default App;

