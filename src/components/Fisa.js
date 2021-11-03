import React from 'react';
import { withRouter } from 'react-router-dom'
import NavBar from './NavBar';
import { Table } from 'antd'
import 'antd/dist/antd.css';

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
            method: 'POST',
            mode: 'cors', 
            cache: 'no-cache', 
            credentials: 'same-origin',
            headers: {
                'Content-Type': 'application/json'
            },
            redirect: 'follow',
            referrerPolicy: 'no-referrer', 
            body: JSON.stringify({ nume: user })
        })
            .then((response) => response.json())
            .then(data => {
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