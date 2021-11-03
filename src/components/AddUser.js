import React from "react";

export default function AddUser() {
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
                                </div>
                                <h5 className="card-header">Adresa:</h5>
                                <div className="card-body">
                                    <div className="form-group">
                                        <input className="form-control" rows="3" ref={adresa}></input>
                                    </div>
                                </div>
                                <h5 className="card-header">Numar telefon:</h5>
                                <div className="card-body">
                                    <div className="form-group">
                                        <input type="number" className="form-control" rows="10" ref={numar_telefon}></input>
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