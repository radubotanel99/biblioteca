import React from "react";

import './Style.css'


function NavBar() {
    let url1 = "/";
    let url2 = "/AddBook";
    let url3 = "/AddUser"
    let url4 = "/AfisareUseri"
    let url5 = "/AddRent"
    let url6 = "/ToateCartile"
    let url7 = "/RentBooks"
    let url8 = "/FinRent"
    let url9 = "/Administrare";

    return (
        <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
            <div className="container">
                <a className="navbar-brand" href={url1}>Home</a>
                <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarResponsive">
                    <ul className="navbar-nav ml-auto" style={{marginLeft: '30%'}}>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url9}>Administrare</a>
                        </li>
                        <li className="nav-item active">
                            {/* <a className="nav-link" href={url2}>AddBook</a> */}
                            <a className="nav-link" style={{color: 'white'}} href={url2}>Adauga Carte</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url3}>Adauga Membru</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url5}>Imprumuta</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url8}>Returneaza</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url4}>Membrii</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url6}>Carti</a>
                        </li>
                        <li className="nav-item">
                            <a className="nav-link" style={{color: 'white'}} href={url7}>Carti imprumutate</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    );
}

export default NavBar;