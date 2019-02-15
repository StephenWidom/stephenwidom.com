import React from 'react';
import Skill from './Skill';
import Loading from './Loading';

class Skills extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            skills: null,
            isLoading: true
        }
    }

    componentWillMount() {
        if (this.props.skills !== null) {
            this.setState(() => {
                return {
                    skills: this.props.skills,
                    isLoading: false
                }
            });
        } else {
            this.getSkills();
        }
    }

    getSkills = () => {
        const endpoint = "/cms/wp-json/wp/v2/skills?per_page=100";
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((skills) => {
            this.setState(() => {
                return {
                    skills
                }
            }, () => {
                this.setState(() => {
                    return { isLoading: false }
                });
                this.props.updateCache('skills', skills);
            });
        });
    }

    render() {
        const skillsContainerStyles = {
            display: 'flex',
            flexWrap: 'wrap',
            justifyContent: 'center'
        };

        return (
            <section id="skills">
                {this.state.isLoading && (
                <Loading />
                ) || (
                <div className="container">
                    <h2>Skills</h2>
                    {this.state.skills !== null && (
                    <div style={skillsContainerStyles}>
                        {this.state.skills.map((item, index) =>
                            <Skill skill={item} index={index} colors={this.props.colors} scale={this.props.scale} />
                        )}
                    </div>
                    )}
                </div>
                )}
            </section>
        )
    }

}

export default Skills;

