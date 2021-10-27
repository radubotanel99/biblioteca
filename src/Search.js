import React from 'react';
import './Style.css'
import { useHistory, Link } from "react-router-dom";




function Search() {
    
    const history = useHistory(); 

    const titlu = React.createRef();

    function lookForBook(event) {
        event.preventDefault();
        const data = {

            titlu: titlu.current.value,
        }
        let url = "http://localhost:3001/search";


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
                        history.push(`/search/${titlu.current.value}`);
                    } catch (e) {
                        alert(e.message);
                    }
                }
                else {
                    alert("Carte negasită! Încercați din nou.");
                }
            });

    }



    return (

        <div className="searchPozition">
            <div className="homePozition">
                <form onSubmit={lookForBook}>
                    <div className="col-md-4">
                        <div className="card my-4">
                            <h5 className="card-header">Cauta o carte:</h5>
                            <div className="card-body">
                                <div className="input-group">
                                    
                                        <input type="text" className="form-control" ref={titlu} placeholder="Search for..." ></input>
                                        <span className="input-group-append">
                                        <button className="btn btn-secondary" type="submit" >Go!</button>
                                        </span>
                                    
                                </div>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    );
}

export default Search;