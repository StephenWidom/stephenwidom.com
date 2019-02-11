import React from 'react';
import Loading from './Loading';
import ReactHtmlParser from 'react-html-parser';

class Resume extends React.Component {

    constructor(props) {
        super (props);

        this.state = {
            content: null,
            isLoading: true
        }
    }

    componentWillMount() {
        const endpoint = '/cms/wp-json/wp/v2/pages?slug=resume';
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((response) => {
            const content = response[0].content.rendered;
            this.setState(() => {
                return { content }
            }, () => { this.setState(() => { return {isLoading: false} })});
        });
    }

    render() {
        return (
            <section id="resume">
                {this.state.isLoading && (
                <Loading />
                ) || (
                <div className="container content">
                        <a className="resume-button print-button" href="javascript:window.print()"><i class="fa fa-print"></i> Print</a>
                        <a className="resume-button download-button" href="/Stephen_Widom_Resume_2019.pdf" download><i class="fa fa-file-pdf"></i> Download as PDF</a>
                        {this.state.content != null && ReactHtmlParser(this.state.content)}
                </div>
                )}
            </section>
        );
    }
}

export default Resume;
