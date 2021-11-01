import React from "react";

import { useHistory, Link } from "react-router-dom";
import NavBar from "./NavBar";



function AddUser() {

    const history = useHistory();

    const nume = React.createRef();
    const adresa = React.createRef();
    const numar_telefon = React.createRef();


    function insertUser(event) {

        event.preventDefault();
        const data = {

            nume: nume.current.value,
            adresa: adresa.current.value,
            numar_telefon: numar_telefon.current.value,
        }

        var verif = 1;
        if (data.nume.length === 0 ) {
            alert('Nu ati completat numele si prenumele');
            verif = 0;
        }
        if (data.adresa.length === 0 ) {
            alert('Nu ati completat adresa');
            verif = 0;
        }
        if (data.numar_telefon.length === 0 ) {
            alert('Nu ati completat numarul de telefon');
            verif = 0;
        }

        if (verif === 1) {


            let url = "http://localhost:3001/AddUser";
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
                            alert('Membrul a fost adaugat!')
                            window.location.reload(false);
                        } catch (e) {
                            alert(e.message);
                        }
                    }
                    else alert(data.status);
                });
        }
    }
    // let url1 = "/";
    return (
        <div>
            <div className="adaugaPostare" >
                <div className="container">
                    <h1>Adauga un nou membru:</h1>
                    <form onSubmit={insertUser}>
                        <div className="col-lg-8">
                            <div className="card my-4">
                                <h5 className="card-header">Nume si prenume:</h5>
                                <div className="card-body">

                                    <div className="form-group">
                                        <input className="form-control" rows="1" ref={nume}></input>
                                    </div>
                                    {/* <button type="submit" className="btn btn-primary">Submit</button> */}

                                </div>
                                <h5 className="card-header">Adresa:</h5>
                                <div className="card-body">

                                    <div className="form-group">
                                        <input className="form-control" rows="3" ref={adresa}></input>
                                    </div>
                                    {/* <button type="submit" className="btn btn-primary">Submit</button> */}

                                </div>
                                <h5 className="card-header">Numar telefon:</h5>
                                <div className="card-body">

                                    <div className="form-group">
                                        <input type="number" className="form-control" rows="10" ref={numar_telefon}></input>
                                    </div>
                                    {/* <button type="submit" className="btn btn-primary">Submit</button> */}

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

export default AddUser;