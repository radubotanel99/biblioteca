import React from "react";

export default function NavBar() {
    let url1 = "/";
    let url2 = "/Carti";
    let url3 = "/Membrii"
    let url4 = "/Categorii"
    let url5 = "/Imprumuturi"
    return (
        <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
            <div className="container">
                <a className="navbar-brand" href={url1}>Administrare</a>
                <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarResponsive">
                    <ul className="navbar-nav ml-auto" style={{marginLeft: '80%'}}>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url2}>Carti</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url3}>Membrii</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url4}>Categorii</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url5}>Imprumuturi</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    );
}
