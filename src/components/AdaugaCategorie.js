import React from "react";

export default function AdaugaCategorie() {

    const categorie = React.createRef();
    function insertCategory(event) {

        event.preventDefault();
        const data = {
            categorie: categorie.current.value,
        }
        var verif = 1;
        if (data.categorie.length === 0 ) {
            alert('Nu ati completat categoria!');
            verif = 0;
        }

        if (verif === 1) {
            let url = "http://localhost:3001/AddCategory";
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
                            alert('Categoria a fost introdusa.');
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
                    <h1>Adauga categorie:</h1>
                    <form onSubmit={insertCategory}>
                        <div className="col-lg-8">
                            <div className="card my-4">
                                <h5 className="card-header">Categorie:</h5>
                                <div className="card-body">
                                    <div className="form-group">
                                        <input className="form-control" rows="2" ref={categorie}></input>
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