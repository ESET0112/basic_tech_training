

function ButtonComponent() {
  const buttonHandler = ()=>{
      console.log("hello world");
  };
  return (
    <>
      <button onClick={buttonHandler}>Click Me</button>
    </>
  );
}

export default ButtonComponent;
