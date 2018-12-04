import React from 'react';
import { CSSTransitionGroup } from 'react-transition-group';

class Intro extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div id="intro">
                <div class="initial-photo" style={{ background: "#ffffff url('./images/live-bw-2x.jpg') center center no-repeat", backgroundSize: "cover"}}></div>
                <CSSTransitionGroup
                    transitionName="fade-in"
                    transitionAppear={true}
                    transitionAppearTimeout={5000}
                    transitionEnter={false}
                    transitionLeave={false}
                >
                    <div class="focus-photo" style={{ background: "#ffffff url('./images/live-bw-2x-edit.jpg') center center no-repeat", backgroundSize: "cover"}}></div>
                </CSSTransitionGroup>
                <h1 className="container">Looking for a <span>rock star</span> developer?</h1>
                <div className="sigh container">Ugh, I'm not proud of that.</div>
            </div>
        )
    }
}

export default Intro;

