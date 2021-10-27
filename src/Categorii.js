import React from 'react';
import { withRouter } from 'react-router-dom'
import './Style.css'
import { useHistory, Link } from "react-router-dom";

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

            <div className="categoriesPozition" style={{marginTop: '50px'}}>
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