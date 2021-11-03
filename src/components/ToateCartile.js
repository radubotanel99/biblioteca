import React from 'react';
import { withRouter } from 'react-router-dom'
import { Table } from 'antd'
import { ExportReactCSV } from './ExportReactCSV'

class ToateCartile extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: []
        }
    }
    componentDidMount() {
        let url = "http://localhost:3001/toateCartile";
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
            {
                title: 'Pret',
                dataIndex: 'pret',
                key: 'pret',
            },
        ];
        this.state.posts.forEach(element => {
            
        });
        // const x = this.state.posts[0];
        const data = this.state.posts;
        return (
            <div>
                <div>
                    <div style={{marginTop: 20, marginRight: 30, float: 'right'}}>
                        <ExportReactCSV csvData={data} fileName={'Books'} />
                    </div>
                    <h1 style={{paddingLeft: '5%', marginTop: '50px', fontSize: '30px'}}>Cartile bibliotecii:</h1>
                    <div>
                    <Table pagination={false} style={{width: '200%', paddingLeft: '5%', paddingRight: '2%'}} columns={columns} dataSource={data} />
                    </div>
                </div>
            </div>
        );
    }
}
export default withRouter(ToateCartile);