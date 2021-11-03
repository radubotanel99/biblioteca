import React, { useEffect, createRef, useState } from "react";

export default function StergeMembru() {
    const membru = createRef();
    const [membrii, setMembru] = useState([])

    useEffect(() => {
        const fetchData = async () => {
            const resp = await fetch('http://localhost:3001/membru')
            const data = await resp.json()
            setMembru(data)
        }
        fetchData()
    }, [])

    function deleteMember(event) {
        event.preventDefault();
        const data = {
            membru: membru.current.value,
        }
        var verif = 1;
        if (data.membru.length === 0 ) {
            alert('Nu ati completat membrul!');
            verif = 0;
        }
        if (verif === 1) {
            let url = "http://localhost:3001/DeleteMember";
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
                            alert('Membrul a fost sters');
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
                    <h1>Sterge membru:</h1>
                    <form onSubmit={deleteMember}>
                        <div className="col-lg-8">
                            <div className="card my-4">
                                <h5 className="card-header">Membru:</h5>
                                <div className="card-body">
                                    <div className="form-group">
                                        <input list="membrii" className="form-control" rows="1" ref={membru}></input>
                                        <datalist id="membrii" >
                                                {membrii.map(mem => <option>{mem.nume}</option>)}
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