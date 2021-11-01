import React, {useEffect, useState} from "react";

import { useHistory, Link, withRouter } from "react-router-dom";
import NavBar from "./NavBar";

function AddRent() {

    const history = useHistory();
    const carte = React.createRef();
    const user = React.createRef();
    const numar_carte = React.createRef();

    const [titlu, setTitlu] = useState([])
    const [membru, setMembru] = useState([])

    useEffect(() => {
        const fetchData = async () => {
            const resp = await fetch('http://localhost:3001/titlu')
            const data = await resp.json()
            console.log(data);
            debugger;
            setTitlu(data)
        }
        fetchData()
    }, [])

    useEffect(() => {
        const fetchData = async () => {
            const resp = await fetch('http://localhost:3001/membru')
            const data = await resp.json()
            console.log(data);
            debugger;
            setMembru(data)
        }
        fetchData()
    }, [])
    
    function insertRent(event) {
        event.preventDefault();
        

        //const { user } = props.match.params
        const data = {
            carte: carte.current.value,
            user: user.current.value,
            numar_carte: numar_carte.current.value
        }

        var verif = 1;
        if (data.carte.length === 0) {
            verif = 0;
            alert('Nu ati completat cartea');
        } 
        if (data.numar_carte.length === 0) {
            verif = 0;
            alert('Nu ati completat numarul cartii');
        } 
        if (data.user.length === 0) {
            verif = 0;
            alert('Nu ati completat membrul');
        } 

        if (verif === 1) {
            
            let url = "http://localhost:3001/AddRent";
            fetch(url, {
                method: 'POST', // *GET, POST, PUT, DELETE, etc.
                mode: 'cors', // no-cors, *cors, same-origin
                cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
                credentials: 'same-origin', // include, *same-origin, omit
                headers: {
                    'Content-Type': 'application/json'
                    // 'Content-Type': 'application/x-www-form-urlencoded',
                },
                redirect: 'follow', // manual, *follow, error
                referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
                body: JSON.stringify(data) // body data type must match "Content-Type" header
            }).then(response => response.json())
                .then(data => {
        
                    if (data.status === 'ok') {
                        try {
                            // history.push("/Administrare");
                            alert('Cartea a fost imprumutata!')
                            window.location.reload(false);
                        } catch (e) {
                            alert(e.message);
                        }
                    }
                    else {
                        alert(data.status);
                    }
                });
        }

        
    }
        return (
            <div>
                <div className="adaugaPostare" >
                    <div className="container">
                        <h1>Adauga imprumut:</h1>
                        <form onSubmit={insertRent}>
                            <div className="col-lg-8">
                                <div className="card my-4">
                                    <h5 className="card-header">Titlu carte:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input list="carti" className="form-control" rows="1" ref={carte}></input>
                                            <datalist id="carti" style={{fontSize: '30px'}}>
                                                {titlu.map(carte => <option>{carte.titlu}</option>)}
                                            </datalist>
                                        </div>
                                    </div>

                                    <h5 className="card-header">Numar carte:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input type="number" className="form-control" rows="1" ref={numar_carte}></input>
                                        </div>
                                    </div>

                                    <h5 className="card-header">Numele membrului:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input list="membrii" className="form-control" rows="1" ref={user} ></input>
                                            <datalist id="membrii" >
                                                {membru.map(membru => <option>{membru.nume}</option>)}
                                            </datalist>
                                                
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" className="btn btn-primary" id="">Submit</button>
                        </form>
                    </div>
    
                </div>
            </div>
        );
}


export default withRouter(AddRent);