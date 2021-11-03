import React from 'react';
import { useHistory } from "react-router-dom";

export default function Search() {
    const history = useHistory(); 
    const titlu = React.createRef();

    function lookForBook(event) {
        event.preventDefault();
        const data = {
            titlu: titlu.current.value,
        }
        let url = "http://localhost:3001/search";
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