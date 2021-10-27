import React, {useEffect, useState} from "react";

import { useHistory, Link, withRouter } from "react-router-dom";
import NavBar from "./NavBar";
import './Style.css'

function FinRent() {

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
    
    function finalizeazaRent(event) {
        event.preventDefault();
        

        //const { user } = props.match.params
        const data = {
            carte: carte.current.value,
            user: user.current.value,
            numar_carte: numar_carte.current.value
        }

        var verif = 1;
        if (data.carte.length === 0) {
            alert('Nu ati completat cartea');
            verif = 0;
        } 
        if (data.user.length === 0) {
            alert('Nu ati completat membrul');
            verif = 0;
        }
        if (data.numar_carte.length === 0) {
            alert('Nu ati completat numarul cartii');
            verif = 0;
        }  


        if (verif === 1) {
            
            let url = "http://localhost:3001/FinRent";
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
                            alert('Imprumutul a fost finalizat!');
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
                <NavBar />
                <div className="adaugaPostare" >
                    <div className="container">
                        <h1>Finalizeaza imprumut:</h1>
                        <form onSubmit={finalizeazaRent}>
                            <div className="col-lg-8">
                                <div className="card my-4">
                                    <h5 className="card-header">Titlu carte:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input list="carti" className="form-control" rows="1" ref={carte}></input>
                                            <datalist id="carti">
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


export default withRouter(FinRent);