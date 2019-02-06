import React from 'react';
import { NavLink } from 'react-router-dom';
import Transition from 'react-transition-group/Transition';

const Header = (props) => {

    const defaultStyle = {
        transform: "translateY(-50px)",
        transition: "transform 0.5s ease",
        background: "#ffffff"
    }

    const transitionStyles = {
        entering: {},
        entered: { transform: "translateY(0)"}
    }

    return (

        <Transition
            in={true}
            appear={true}
            timeout={1900}
        >
            {(state) => (
            <header style={{...defaultStyle, ...transitionStyles[state]}}>
                <nav className="container">
                    <ul>
                        <li><NavLink to="/" exact={true}>Home</NavLink></li>
                        <li><NavLink to="/portfolio">Portfolio</NavLink></li>
                        <li><NavLink to="/technologies">Technologies</NavLink></li>
                        <li><NavLink to="/skills">Skills</NavLink></li>
                        <li><NavLink to="/resume">Resume</NavLink></li>
                    </ul>
                </nav>
            </header>
            )}
        </Transition>
    )
}

export default Header;
