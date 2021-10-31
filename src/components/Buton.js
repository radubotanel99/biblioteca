import React from "react";
import Button from 'react-bootstrap/Button';

export default function Buton (props) {
    return (
        <div>
            <Button onClick={props.onClick} variant="dark" size="lg" style={{margin: 19, height: '50'}}>
            {props.name}
            </Button>
        </div>
    )
}