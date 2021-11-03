import React, { useEffect, createRef, useState } from "react";

export default function AddBook() {
    const titlu = createRef();
    const autor = createRef();
    const numar_carte = createRef();
    const editura = createRef();
    const categorie = createRef();
    const pret = createRef();

    const [categorii, setCategorii] = useState([])

    useEffect(() => {
        const fetchData = async () => {
            const resp = await fetch('http://localhost:3001/categorie')
            const data = await resp.json()
            setCategorii(data)
        }
        fetchData()
    }, [])

    function insertBook(event) {
        event.preventDefault();
        
        const data = {
            titlu: titlu.current.value,
            autor: autor.current.value,
            numar_carte: numar_carte.current.value,
            editura : editura.current.value,
            categorie: categorie.current.value,
            pret: pret.current.value,
        }

        var valid = 1;
        if (data.titlu.length === 0) {
            alert('Nu ati completat titlul')
            valid = 0;
        }
        // if (data.autor.length === 0) {
        //     alert('Nu ati completat autorul')
        //     valid = 0;
        // }
        if (data.numar_carte.length === 0) {
            alert('Nu ati completat numarul cartii')
            valid = 0;
        }
        // if (data.editura.length === 0) {
        //     alert('Nu ati completat editura')
        //     valid = 0;
        // }
        if (data.categorie.length === 0) {
            alert('Nu ati completat categoria')
            valid = 0;
        }
        if (data.pret.length === 0) {
            alert('Nu ati completat pretul')
            valid = 0;
        }

        if (valid === 1) {
            let url = "http://localhost:3001/AddBook";
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
                        alert('Cartea a fost introdusa cu succes!')
                        // window.location.reload(false);
                    } catch (e) {
                        alert(e.message);
                    }
                }
                else alert(data.status);
            });
        }
    }
    return (
            <div>
                <div className="adaugaPostare" >
                    <div className="container">
                        <h1 className="card-header">Adauga o noua carte:</h1>
                        <form onSubmit={insertBook}>
                            <div className="col-lg-8">
                                <div className="card my-4">
                                    <h5 className="card-header">Titlu:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input className="form-control" rows="1" ref={titlu}></input>
                                        </div>
                                    </div>
                                    <h5 className="card-header">Autor:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input className="form-control" rows="3" ref={autor}></input>
                                        </div>
                                    </div>
                                    <h5 className="card-header">Numar carte:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input type="number" className="form-control" rows="10" ref={numar_carte}></input>
                                        </div>
                                    </div>
                                    <h5 className="card-header">Editura:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input className="form-control" rows="10" ref={editura}></input>
                                        </div>
                                    </div>
                                    <h5 className="card-header">Categorie:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input list="categorii" className="form-control" rows="10" ref={categorie}></input>
                                            <datalist id="categorii">
                                                {categorii.map(cat => <option>{cat.categorie}</option>)}
                                            </datalist>
                                        </div>
                                    </div>
                                    <h5 className="card-header">Pret:</h5>
                                    <div className="card-body">
                                        <div className="form-group">
                                            <input className="form-control" rows="10" ref={pret}></input>
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