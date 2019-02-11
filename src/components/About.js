import React from 'react';
import ReactHtmlParser from 'react-html-parser';

class About extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            content: null
        }
    }

    componentWillMount() {
        const endpoint = '/cms/wp-json/wp/v2/pages?slug=about';
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((response) => {
            const content = response[0].content.rendered;
            this.setState(() => {
                return { content }
            }, () => console.log(this.state));
        });
    }

    render() {
        return (
            <section id="about">
                <div class="container content">
                    {this.state.content != null && ReactHtmlParser(this.state.content)}
                </div>
            </section>
        );
    }
}

export default About;

