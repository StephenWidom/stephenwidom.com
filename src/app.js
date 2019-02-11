import React from 'react';
import ReactDOM from 'react-dom';
import AppRouter from './routers/AppRouter';
import './styles/styles.scss';
import './styles/mobile.scss';


class App extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            portfolio: null,
            technologies: null,
            skills: null,
            slackmojis: null,
            resume: null,
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
        this.getSite(["technologies", "skills"]);
    }

    getSite = (sections) => {
        sections.forEach((section) => {
            const endpoint = `/cms/wp-json/wp/v2/${section}?per_page=100&_embed`;
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

    changeScale = () => {
        this.setState((prevState) => {
            const scale = (prevState.scale == 10) ? 5 : 10;
            return {
                scale
            }
        });
    }

    updateCache = (key, value) => {
        this.setState(() => {
            return {
                [key]: value
            }
        }, () => console.log(this.state));
    }

    render() {
        return (
            <div>
                <AppRouter
                    portfolio={this.state.portfolio}
                    technologies={this.state.technologies}
                    skills={this.state.skills}
                    slackmojis={this.state.slackmojis}
                    resume={this.state.resume}
                    scale={this.state.scale}
                    colors={this.colors}
                    updateCache={this.updateCache}
                />
            </div>
        );
    }

}

ReactDOM.render(<App />, document.getElementById('app'));

