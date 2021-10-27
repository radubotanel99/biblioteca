import React from 'react';
import { withRouter } from 'react-router-dom'
import NavBar from './NavBar';
import FinRent from './FinRent';
import { Table, Tag, Space, List, Avatar, Descriptions, Typography } from 'antd'
import 'antd/dist/antd.css'; // or 'antd/dist/antd.less'

class Fisa extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            posts: []
        }
    }

    

    componentDidMount() {
        
        let url = "http://localhost:3001/fisa";
        
        const { user } = this.props.match.params
        

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
            body: JSON.stringify({ nume: user })
        })
            .then((response) => response.json())
            .then(data => {
                // console.log("de ce nu merge?", data)
                // console.log(" ", data[0].data_imprumut);

                for (var i=0; i<data.length; i++) {
                    if (data[i].data_returnare === '0000-00-00 00:00:00')
                        data[i].data_returnare = '-';
                    else 
                        data[i].data_returnare = data[i].data_returnare.substring(0, 10);
                    data[i].data_imprumut = data[i].data_imprumut.substring(0, 10);
                }


                this.setState({ posts: data });
            });
    }


    render() {

        const columns = [
            // {
            //     title: 'Nume',
            //     dataIndex: 'nume',
            //     key: 'name',
            // },
            {
                title: 'Titlu carte',
                dataIndex: 'titlu',
                key: 't',
            },
            {
                title: 'Numar carte',
                dataIndex: 'nr_carte',
                key: 'nc',
            },
            {
                title: 'Data imprumut',
                dataIndex: 'data_imprumut',
                key: 'di',
            },
            {
                title: 'Data returnare',
                dataIndex: 'data_returnare',
                key: 'dr',
            },

        ];

        const data = this.state.posts
        const { user }  = this.props.match.params;

        return (
            
                <div>
                    <NavBar />
                    <div style={{marginTop: 50}}></div>
                    <h4 style={{paddingLeft: '5%', marginTop: '50px', fontSize: '25px'}}>{user}:</h4>
                    <div>
                    <Table style={{width: '200%', paddingLeft: '5%'}} columns={columns} dataSource={data} />
                    </div>
                </div>

        );
    }

}

export default withRouter(Fisa);