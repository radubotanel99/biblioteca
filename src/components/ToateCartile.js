import React from 'react';
import { withRouter } from 'react-router-dom'
import NavBar from './NavBar';
import { Table, Tag, Space, List, Avatar } from 'antd'
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
            method: 'POST', // *GET, POST, PUT, DELETE, etc.
            mode: 'cors', // no-cors, *co   rs, same-origin
            cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
            credentials: 'same-origin', // include, *same-origin, omit
            headers: {
                'Content-Type': 'application/json'
                // 'Content-Type': 'application/x-www-form-urlencoded',
            },
            redirect: 'follow', // manual, *follow, error
            referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
            // body data type must match "Content-Type" header
            body: JSON.stringify({ titlu })
        })
            .then((response) => response.json())
            .then(data => {
                this.setState({ posts: data });
            });
    }

    // book = () => {
    //     let books = [];
    //     for (let i = 0; i < this)
    // }

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

        const data = this.state.posts
        return (

            // this.state.posts.map((post) =>
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
            // )
        );
    }

}

export default withRouter(ToateCartile);