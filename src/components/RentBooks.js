import React from 'react';
import { withRouter } from 'react-router-dom'
import NavBar from './NavBar';
import { Table, Tag, Space, List, Avatar } from 'antd'

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
            // {
            //     title: 'Editura',
            //     dataIndex: 'editura',
            //     key: 'editura',
            // },

        ];

        const data = this.state.posts
        return (

            // this.state.posts.map((post) =>
                <div>
                    <div style={{marginTop: 50}}></div>
                    <h1 style={{paddingLeft: '5%', marginTop: '50px', fontSize: '30px'}}>Cartile imprumutate:</h1>
                    <div>
                    <Table pagination={{ pageSize: 50}} style={{width: '200%', paddingLeft: '5%'}} columns={columns} dataSource={data} />
                    </div>
                </div>

            // )
        );
    }

}

export default withRouter(RentBooks);