import React from "react";
import image from '../images/trandafir.jpg'

export default function Poza () {
    return (
        <div>
            <img className="pozaFundal" src={image} alt="poza" />
        </div>
    )
}