import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            portfolio: null,
            technologies: null,
            display: null
        };

        this.getPortfolio = this.getPortfolio.bind(this);
        this.getTechnologies = this.getTechnologies.bind(this);
        this.filterByTechnology = this.filterByTechnology.bind(this);

        this.getPortfolio();
        //this.getTechnologies();
    }

    getPortfolio() {
        const endpoint = `/cms/wp-json/wp/v2/portfolio`;
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => {
            return response.json();
        }).then((portfolio) => {
            this.setState(() => {
                return {
                    portfolio
                }
            });
        });
    }

    getTechnologies() {
        const endpoint = `/cms/api/collections/get/technologies?token=${this.token}`;
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => {
            return response.json();
        }).then((response) => {
            this.setState(() => {
                return {
                    technologies: response.entries
                }
            });
        });
    }

    filterByTechnology(e) {
        const thisTech = e.target.innerHTML;
        this.setState((prevState) => {
            return {
                display: prevState.portfolio.filter((entry) => {
                    return entry.technologies.find((tech) => {
                        return tech.display == thisTech;
                    })
                })
            }
        });
    }

    render() {
        return (
            <div>
                {this.state.portfolio != null && (
                <div id="portfolio">
                    <h1>Portfolio</h1>
                    {this.state.portfolio.map((item) =>
                        <div key={item}>
                            <h4>{item.title.rendered}</h4>
                            {item.acf.technologies.length > 0 && (
                            <ul>
                                {item.acf.technologies.map((tech) =>
                                <li key={tech}>{tech.post_title}</li>
                                )}
                            </ul>
                            )}
                        </div>
                    )}
                </div>
                )}
            </div>
        );
    }

}

ReactDOM.render(<App />, document.getElementById('app'));

