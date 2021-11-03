import React from 'react';
import c8 from '../images/buna.jpg';
import NavBar from './NavBar';

function Home() {
    let url1 = "/Administrare";
    return (
        <div >
            <NavBar />
            <div >
            <img style={{marginTop: '35px', marginLeft: '5%', width: '90%', height: '50%'}} src={c8} alt="munte" />
            <div className="TitluBackground"><div className="textTitlu" ><p>BIBLIOTECA BISERICII GOLGOTA</p></div></div>
            <div className="text1" > <p></p></div>
            <div className="start"  > <a href={url1}><p>ADMINISTRARE</p></a></div>
            <div  className="alegere" ><p></p ></div>
            </div>
        </div>
    );
}
export default Home;