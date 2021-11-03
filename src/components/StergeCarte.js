import React, {useEffect, useState} from "react";

export default function StergeCarte() {
    const carte = React.createRef();
    const numar_carte = React.createRef();

    const [titlu, setTitlu] = useState([])

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
    
    function stergeCarte(event) {
        event.preventDefault();
        const data = {
            carte: carte.current.value,
            numar_carte: numar_carte.current.value
        }
        var verif = 1;
        if (data.carte.length === 0) {
            alert('Nu ati completat cartea');
            verif = 0;
        } 
        if (data.numar_carte.length === 0) {
            alert('Nu ati completat numarul cartii');
            verif = 0;
        }
        if (verif === 1) {
            let url = "http://localhost:3001/DeleteBook";
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
                            alert('Cartea a fost stearsa!');
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
                        <h1>Sterge o carte:</h1>
                        <form onSubmit={stergeCarte}>
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
                                </div>
                            </div>
                            <button type="submit" className="btn btn-primary" id="">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        );
}