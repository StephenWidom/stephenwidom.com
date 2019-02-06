import React from 'react';
import About from './About';
import Transition from 'react-transition-group/Transition';

class Intro extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        const defaultStyle = {
            transition: "opacity 2.5s ease",
            opacity: 0,
            background: "#ffffff url('./images/live-bw-2x-edit.jpg') center center no-repeat",
            backgroundSize: "cover"
        }

        const transitionStyles = {
            entering: { opacity: 0 },
            entered: { opacity: 1 }
        }

        const iStyle = {
            transition: "transform 0.5s ease",
            color: "#FFFFFF",
            fontSize: "44px",
            textAlign: "center",
            position: "absolute",
            bottom: "20px",
            width: "100%",
            transform: "translateY(60px)"
        }

        const iStyleTransition = {
            entered: { transform: "translateY(0)" }
        }

        return (
            <div>
                <div id="intro">
                    <div className="initial-photo" style={{ background: "#ffffff url('./images/live-bw-2x.jpg') center center no-repeat", backgroundSize: "cover"}}></div>
                    <Transition
                       in={true} 
                       timeout={900}
                       appear={true}
                    >
                        {(state) => (
                        <div className="focus-photo" style={{ ...defaultStyle, ...transitionStyles[state] }}></div>
                        )}
                    </Transition>
                    <h1 className="container">Looking for a <span>rock star</span> developer?</h1>
                    <div className="sigh container">Ugh, I'm not proud of that.</div>
                    <Transition
                        in={true}
                        timeout={1900}
                        appear={true}
                    >
                        {(state) => (
                        <i className="fa fa-chevron-down" style={{ ...iStyle, ...iStyleTransition[state] }}></i>
                        )}
                    </Transition>
                </div>
                <About />
            </div>
        )
    }
}

export default Intro;

