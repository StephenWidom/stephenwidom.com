import React from 'react';
import Technology from './Technology';
import Loading from './Loading';

class Technologies extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            technologies: null,
            isLoading: true
        }
    }

    componentWillMount() {
        if (this.props.technologies !== null) {
            this.setState(() => {
                return {
                    technologies: this.props.technologies,
                    isLoading: false
                }
            });
        } else {
            this.getTechnologies();
        }
    }

    getTechnologies = () => {
        const endpoint = "/cms/wp-json/wp/v2/technologies?per_page=100";
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((technologies) => {
            this.setState(() => {
                return {
                    technologies
                }
            }, () => {
                this.setState(() => {
                    return { isLoading: false }
                });
                this.props.updateCache('technologies', technologies);
            });
        });
    }

    render() {
        const techContainerStyles = {
            display: 'flex',
            flexWrap: 'wrap',
            justifyContent: 'center',
        };
        return (
            <section id="technologies">
                {this.state.isLoading && (
                    <Loading />
                ) || (
                    <div className="container">
                        <h2>Technologies</h2>
                    {this.state.technologies != null && (
                        <div style={techContainerStyles}>
                        {this.state.technologies.map((item, index) =>
                            <Technology technology={item} index={index} colors={this.props.colors} scale={this.props.scale} />
                        )}
                        </div>
                    )}
                    </div>
                )}
            </section>
        )
    }
}

export default Technologies;

