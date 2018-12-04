import React from 'react';
import ReactDOM from 'react-dom';
import AppRouter from './routers/AppRouter';
import './styles/styles.scss';


class App extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            portfolio: null,
            technologies: null,
            skills: null,
            scale: 5
        };

        this.colors = [
            "#1abc9c",
            "#3498db",
            "#f1c40f",
            "#c0392b",
            "#9b59b6",
            "#34495e",
            "#2980b9",
            "#f39c12",
            "#2ecc71",
            "#8e44ad",
            "#16a085",
            "#2c3e50",
            "#27ae60",
            "#e67e22",
            "#e74c3c",
            "#d35400",
            "#7f8c8d"
        ];

    }

    componentWillMount = () => {
        this.getSite(["portfolio", "technologies", "skills"]);
    }

    getSite = (sections) => {
        sections.forEach((section) => {
            const endpoint = `/cms/wp-json/wp/v2/${section}?per_page=100`;
            const myRequest = new Request(endpoint);
            fetch(myRequest).then((response) => {
                return response.json();
            }).then((response) => {
                this.setState(() => {
                    return {
                        [section]: response
                    }
                }, () => console.log(this.state));
            });
        });
    }

    filterByTechnology = e => {
        const thisTech = e.target.innerHTML;
        this.setState((prevState) => {
            return {
                display: prevState.portfolio.filter((entry) => {
                    return entry.acf.technologies.find((tech) => {
                        return tech.post_title == thisTech;
                    })
                })
            }
        }, () => console.log(this.state));
    }

    changeScale = () => {
        this.setState((prevState) => {
            const scale = (prevState.scale == 10) ? 5 : 10;
            return {
                scale
            }
        });
    }

    render() {
        return (
            <div>
                <AppRouter
                    technologies={this.state.technologies}
                    skills={this.state.skills}
                    portfolio={this.state.portfolio}
                    scale={this.state.scale}
                    colors={this.colors}
                />
            </div>
        );
    }

}

ReactDOM.render(<App />, document.getElementById('app'));

