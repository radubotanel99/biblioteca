import React from "react";
import image from '../images/carti.jpg'

export default function Poza () {
    return (
        <div>
            <img className="pozaFundal" src={image} alt="poza" />
        </div>
    )
}