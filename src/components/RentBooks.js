import React from 'react';
import { withRouter } from 'react-router-dom'
import { Table } from 'antd'

function checkIfDateIsTooLong(date) {
    let todayDate = new Date();
    todayDate.setDate(todayDate.getDate()-14);
    let rentDate = new Date(date);
    return todayDate > rentDate ? true : false;
}

function changeDateFormat(rentDate) {
    let intermediatDate = rentDate;
    intermediatDate = intermediatDate.substring(0, 10);
    const arrayDate = intermediatDate.split("-");
    let formattedRentDate = arrayDate[2] + '.' + arrayDate[1] + '.' + arrayDate[0];
    rentDate = formattedRentDate;
    return rentDate;
}

class RentBooks extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: []
        }
    }

    componentDidMount() {
        let url = "http://localhost:3001/cartiImprumutate";
        const { titlu } = this.props.match.params

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
            body: JSON.stringify({ titlu })
        })
            .then((response) => response.json())
            .then(data => {
                this.setState({ posts: data });
            });
    }
    render() {

        const columns = [
            {
                title: 'Nume',
                dataIndex: 'nume',
                key: 'titlu',
            },
            {
                title: 'Titlu carte',
                dataIndex: 'titlu',
                key: 'autor',
            },
            {
                title: 'Nr carte',
                dataIndex: 'nr_carte',
                key: 'nr_carte',
            },
            {
                title: 'Data imprumut',
                dataIndex: 'data_imprumut',
                key: 'categorie',
                render: (rentDate) => 
                checkIfDateIsTooLong(rentDate) === true ? 
                    <p style={{color: 'red', fontWeight: 'bold'}}>{changeDateFormat(rentDate)}</p>
                    : <p style={{color: 'blue'}}>{changeDateFormat(rentDate)}</p>,
            },
        ];
        const data = this.state.posts
        return (
                <div>
                    <div style={{marginTop: 50}}></div>
                    <h1 style={{paddingLeft: '5%', marginTop: '50px', fontSize: '30px'}}>Cartile imprumutate:</h1>
                    <div>
                    <Table 
                        pagination={{ pageSize: 50}} 
                        style={{width: '200%', paddingLeft: '5%', color: 'red'}}
                        columns={columns} 
                        dataSource={data} />
                    </div>
                </div>
        );
    }
}
export default withRouter(RentBooks);