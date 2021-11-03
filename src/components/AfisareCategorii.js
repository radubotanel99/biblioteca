import React from 'react';
import { withRouter } from 'react-router-dom'
import NavBar from './NavBar';
import { Table } from 'antd'

class AfisareCategorii extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: []
        }
    }
    componentDidMount() {
        let url = "http://localhost:3001/afisareCategorii";
        const { categorie } = this.props.match.params

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
            body: JSON.stringify({ categorie })
        })
            .then((response) => response.json())
            .then(data => {
                this.setState({ posts: data });
            });
    }
    render() {
        const columns = [
            {
                title: 'Titlu',
                dataIndex: 'titlu',
                key: 'titlu',
                // render: (titlu) => {
                //     return <a><Link to={`/carte/${titlu}`}>{titlu}</Link></a>
                // }
            },
            {
                title: 'Autor',
                dataIndex: 'autor',
                key: 'autor',
            },
            {
                title: 'Nr carte',
                dataIndex: 'nr_carte',
                key: 'nr_carte',
            },
            {
                title: 'Categorie',
                dataIndex: 'categorie',
                key: 'categorie',
            },
            {
                title: 'Editura',
                dataIndex: 'editura',
                key: 'editura',
            },

        ];

        const data = this.state.posts
        return (
                <div>
                    <NavBar />
                    <div style={{marginTop: 50}}></div>
                    <div>
                    <Table pagination={{ pageSize: 50}} style={{width: '200%', paddingLeft: '5%'}} columns={columns} dataSource={data} />
                    </div>
                </div>
        );
    }
}
export default withRouter(AfisareCategorii);