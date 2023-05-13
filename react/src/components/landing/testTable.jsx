import React, { useEffect, useState } from "react";
import * as testService from "../services/Service.js";

function TestTable() {
  
  const [state, setState] = useState([{}]);
  
  const TestTableOneGetAll = () => {
    testService.getAll(0, 15).then(TestTableOneGetAllSuccess).catch(TestTableOneGetAllError)
  }
  const TestTableOneGetAllSuccess = (response) => {
    let arrayOfPeeps = response;
    setState(arrayOfPeeps.pagedItems);
    console.log("success", state);
    };
    
    const TestTableOneGetAllError = (err) => {
      console.log(err);
    }

    for (let i = 0; i < state.length; i++){
        console.log(i);
    }

    useEffect(() => {
      TestTableOneGetAll()
    },[]);

    const messageAlert = () => {
        alert("Item Bought");
    }

  return (
    <React.Fragment>
        <div className="container-lg">
            <h2>TestTable Page</h2>
            <button className="btn btn-primary" onClick={TestTableOneGetAll}>Get Posts</button>
            <button className="btn btn-warning m-1" onClick={messageAlert}>Add Posts</button>
            <br></br>
            <div className="row">
            {state.map((data,index)=> {
                return (
                    <div className="card shadow col-2 m-1" style={{"width": "18rem"}} key={index}>
                        <div className="card-body">
                        <img className="card-img-top" alt="" src={data.imgUrl}/>
                        <h5 className="card-title">{data.name}</h5>
                        <p className="" style={{ "height": "4rem" }}>
                        {data.description}
                        </p>
                        <div className="text-end">
                        <a href="/p114/testtable/#" className="btn btn-warning" onClick={messageAlert}>Cost:{data.price}</a>
                        </div>
                        </div>
                    </div>
                )
            })}
        </div>
    </div>
    </React.Fragment>
  )
}

export default TestTable