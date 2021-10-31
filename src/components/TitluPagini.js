import React from "react";

export default function TitluPagini (props) {
    return (
        <h2 style={{margin: 'auto', 
            marginTop: '5%', 
            marginBottom: '3%', 
            fontSize: 50, 
            textAlign: 'center' }} >
                {props.titlu}
        </h2>
    )
}