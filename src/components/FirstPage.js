import React from 'react';
import NavBar from './NavBar';
import Search from './Search';
import c8 from '../images/try.jfif';
import Contact from './Contact';
import SearchByNumber from './SearchByNumber';

export default function FirstPage() {
    return (
        <div>
            <NavBar />
            <div className="container">
                <div className="homePozition" style={{ marginTop: '30px' }}>
                    <div className="row">
                        <div className="col-md-8">
                            <div className="card mb-4">
                                <div className="card-body">
                                    <h2 className="card-title">Gestioneaza-ti biblioteca!</h2>
                                    <p className="card-text">Aceasta aplicatie va permite sa va gesitionati biblioteca.</p>
                                    <img className="card-img-top" src={c8} alt="munte" />
                                </div>
                                <div className="card-footer text-muted">Created on September 2021 by Radu Botanel</div>
                            </div>
                        </div>
                    </div>
                </div>
                <SearchByNumber />
                <Search />
                <Contact />
            </div>
        </div>
    );
}
