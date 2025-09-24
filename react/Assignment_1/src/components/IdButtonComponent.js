import React, { useState } from 'react'

// Reusable Button component
const Button = ({ label, onClick }) => {
  const handleClick = () => {
    console.log(`${label} clicked`);
    onClick();
  };

  return (
    <button onClick={handleClick}>
      {label}
    </button>
  );
};

export default function IdButtonComponent() {
  const [value, setValue] = useState(0);
  
  const handleIncrement = () => {
    setValue(value + 1);
  };

  const handleDecrement = () => {
    setValue(value - 1);
  };

  return (
    <div>
      <h2>Current Value: {value}</h2>
      <Button label="Increment" onClick={handleIncrement} />
      <Button label="Decrement" onClick={handleDecrement} />
    </div>
  );
}