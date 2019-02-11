import React from 'react';
import ReactHtmlParser from 'react-html-parser';
import Loading from './Loading';

class About extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            about: null,
            isLoading: true
        }
    }

    componentWillMount() {
        if (this.props.about !== null) {
            this.setState(() => {
                return {
                    about: this.props.about,
                    isLoading: false
                }
            });
        } else {
            this.getAbout();
        }
    }

    getAbout() {
        const endpoint = '/cms/wp-json/wp/v2/pages?slug=about';
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((response) => {
            const about = response[0].content.rendered;
            this.setState(() => {
                return { about }
            }, () => {
                this.setState(() => {
                    return { isLoading: false }
                });
                this.props.updateCache('about', about);
            });
        });
    }

    render() {
        return (
            <section id="about">
                {this.state.isLoading && (
                <Loading />
                ) || (
                <div class="container content">
                    {this.state.about != null && ReactHtmlParser(this.state.about)}
                </div>
                )}
            </section>
        );
    }
}

export default About;

