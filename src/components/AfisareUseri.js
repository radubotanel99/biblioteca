import React from 'react';
import { withRouter } from 'react-router-dom'
import { List, Avatar } from 'antd'
import u1 from '../images/user2.png';
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
            method: 'POST',
            mode: 'cors', 
            cache: 'no-cache',
            credentials: 'same-origin', 
            headers: {
                'Content-Type': 'application/json'
            },
            redirect: 'follow', 
            referrerPolicy: 'no-referrer', 
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