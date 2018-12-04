import React from 'react';
import ReactHtmlParser, { processNodes, convertNodeToElement, htmlparser2 } from 'react-html-parser';
import Typing from 'react-typing-animation';

class Coding extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            text: null
        }

    }

    showStuff = () => {
        const stuff = document.querySelector('[contenteditable]').innerHTML;
        const hack = document.createElement('textarea');
        hack.innerHTML = stuff;
        this.setState(() => {
            return {
                text: hack.value
            }
        });
    }

    render() {
        return (
            <div id="intro">
                <Typing onFinishedTyping={this.showStuff}>
                    <div contenteditable="true" onInput={this.showStuff} onChange={this.showStuff}>
                            <span>&lt;h1&gt;Hi&lt;/h1&gt;</span>
                            &lt;div class="container"&gt;Hi&lt;/div&gt;
                    </div>
                </Typing>
                {this.state.text !== null && ReactHtmlParser(this.state.text)}
            </div>
        )
    }

}

export default Coding;

