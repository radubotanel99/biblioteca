import React from 'react';
import { withRouter } from 'react-router-dom'
import { Table, Tag, Space, List, Avatar, Descriptions } from 'antd'
import u1 from '../images/user2.png';
import NavBar from './NavBar';
import { Link } from "react-router-dom";

class AfisareUseri extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            posts: []
        }

    }


    componentDidMount() {

        let url = "http://localhost:3001/afisareUseri";
        fetch(url, {
            method: 'POST', // *GET, POST, PUT, DELETE, etc.
            mode: 'cors', // no-cors, *cors, same-origin
            cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
            credentials: 'same-origin', // include, *same-origin, omit
            headers: {
                'Content-Type': 'application/json'
                // 'Content-Type': 'application/x-www-form-urlencoded',
            },
            redirect: 'follow', // manual, *follow, error
            referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
            // body data type must match "Content-Type" header
            body: JSON.stringify()
        })
            .then((response) => response.json())
            .then(data => {
                this.setState({ posts: data });
            });
    }


    render() {

        const useri = [
        {
            title: 'Ant Design Title 1',
            dataIndex: 'nume',
        },
        ];

        const data = this.state.posts
        return (

            
            <div>

                <NavBar />
                
                    <h1 style={{paddingLeft: '5%', marginTop: '50px', fontSize: '30px'}}>Membrii bibliotecii:</h1>
                    <div style={{height: '50px'}}>
                    <List
                        style={{paddingLeft: '5%', marginTop: '30px'}}
                        itemLayout="horizontal"
                        dataSource={data}
                        renderItem={item => (
                        <List.Item>
                            <List.Item.Meta
                            avatar={<Avatar src={u1} />}
                            title={<Link to={`/fisa/${item.nume}`}>{item.nume}</Link>}
                            description=""
                            />  
                        </List.Item>
                    )}/>

                </div>

            </div>
            

            
        );
    }
}

export default withRouter(AfisareUseri);