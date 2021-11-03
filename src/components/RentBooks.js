import React from 'react';
import { withRouter } from 'react-router-dom'
import { Table } from 'antd'

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
                for (var i=0; i<data.length; i++) {
                    data[i].data_imprumut = data[i].data_imprumut.substring(0, 10);
                }
                this.setState({ posts: data });
            });
    }
    render() {

        const columns = [
            {
                title: 'Nume',
                dataIndex: 'nume',
                key: 'titlu',
                // render: (titlu) => {
                //     return <a><Link to={`/carte/${titlu}`}>{titlu}</Link></a>
                // }
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
            },
        ];
        const data = this.state.posts
        return (
                <div>
                    <div style={{marginTop: 50}}></div>
                    <h1 style={{paddingLeft: '5%', marginTop: '50px', fontSize: '30px'}}>Cartile imprumutate:</h1>
                    <div>
                    <Table pagination={{ pageSize: 50}} style={{width: '200%', paddingLeft: '5%'}} columns={columns} dataSource={data} />
                    </div>
                </div>
        );
    }
}
export default withRouter(RentBooks);