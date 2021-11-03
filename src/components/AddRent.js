import React, {useEffect, useState} from "react";

export default function AddRent() {
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
                method: 'POST', 
                mode: 'cors',
                cache: 'no-cache', 
                credentials: 'same-origin', 
                headers: {
                    'Content-Type': 'application/json'
                },
                redirect: 'follow', 
                referrerPolicy: 'no-referrer', 
                body: JSON.stringify(data) 
            }).then(response => response.json())
                .then(data => {
        
                    if (data.status === 'ok') {
                        try {
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