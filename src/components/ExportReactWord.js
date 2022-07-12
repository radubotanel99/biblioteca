import React from 'react'
import Button from 'react-bootstrap/Button';

export const ExportReactWord = ({csvData, fileName}) => {

    // const table1 = React.createRef();

    function generateWord(event) {
        event.preventDefault();
        const data = {
            table: csvData,
        }
        let url = "http://localhost:3001/exportToWord";
        fetch(url, {
            method: 'POST',
            mode: 'cors', 
            cache: 'no-cache',
            credentials: 'same-origin',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            redirect: 'follow', 
            referrerPolicy: 'no-referrer', 
            body: JSON.stringify(data) 
        }).then(response => response.json())
            .then(data => { 
                if (data.status === 'ok') {
                    alert("Fisierul a fost generat in folderul sursa al proiectului!");
                }
                else {
                    alert("A aprut o problema la generare. Consultati administratorul!");
                }
        });
    }



    return (
        <Button variant="dark" size="lg" onClick={generateWord}>Export to Word</Button>
    )
}