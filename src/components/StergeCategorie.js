import React from "react";
import { useHistory, Link } from "react-router-dom";



function StergeCategorie() {

    const history = useHistory();

    const categorie = React.createRef();

    function deleteCategory(event) {

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


            let url = "http://localhost:3001/DeleteCategory";
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
                            alert('Categoria a fost stearsa. Va rugam dati refresh paginii.');
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
                    <h1>Sterge categorie:</h1>
                    <form onSubmit={deleteCategory}>
                        <div className="col-lg-8">
                            <div className="card my-4">
                                <h5 className="card-header">Categorie:</h5>
                                <div className="card-body">

                                    <div className="form-group">
                                        <input className="form-control" rows="1" ref={categorie}></input>
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

export default StergeCategorie;