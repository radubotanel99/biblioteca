import React from 'react';
import { withRouter } from 'react-router-dom'

class Categorii extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: []
        }
    }
    componentDidMount() {
        let url = "http://localhost:3001/categorii";
        const x = 4;
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
            body: JSON.stringify({x})
        })
            .then((response) => response.json())
            .then(data => {
                this.setState({ posts: data });
            });
    }
    render () {
        const data = this.state.posts;
        console.log (data);
        return (
            <div style={{marginLeft: '10%', marginTop: '5%'}}>
                <div className="col-md-4">
                    <div className="card my-4">
                        <h5 className="card-header">Categorii:</h5>
                        <div className="card-body">
                            <div className="row">
                                <div className="col-lg-6">
                                    <ul className="list-unstyled mb-0">
                                        {data.map(cat => <li style={{fontSize: '17px'}}><a href={`/categorii/${cat.categorie}`}>{cat.categorie}</a></li>)}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}
export default withRouter(Categorii);