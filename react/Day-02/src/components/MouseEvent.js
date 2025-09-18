function MouseEvent(){
    return (
        <>
            <div
            style={{
                background:'black',
                color:'white',
                padding:'50px'
            }}
            
            onMouseEnter={()=>{console.log("Mouse entered div")}}
            onMouseDown={()=>{console.log("Hover")}}

            >Welcome to MouseEvent</div>
            

        </>
    )
}

export default MouseEvent;