import React from 'react';
import { NavLink } from 'react-router-dom';
import Transition from 'react-transition-group/Transition';
import { slide as Menu } from 'react-burger-menu'

class Header extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            mobileMenuOpen: false
        }
    }

    hamburgerClick = () => {
        this.setState((prevState) => {
            return { mobileMenuOpen: !prevState.mobileMenuOpen }
        });
    }

    render() {

        const defaultStyle = {
            transform: "translateY(-50px)",
            transition: "transform 0.5s ease",
            borderBottom: "1px solid #BA2A2A"
        }

        const transitionStyles = {
            entering: {},
            entered: { transform: "translateY(0)"}
        }

        return (
            <div>
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
                                <li><NavLink to="/fun">Fun</NavLink></li>
                                <li><NavLink to="/resume">Resume</NavLink></li>
                            </ul>
                        </nav>
                    </header>
                    )}
                </Transition>
                <Menu isOpen={this.state.mobileMenuOpen}>
                    <ul>
                        <li><NavLink to="/" exact={true}>Home</NavLink></li>
                        <li><NavLink to="/portfolio">Portfolio</NavLink></li>
                        <li><NavLink to="/technologies">Technologies</NavLink></li>
                        <li><NavLink to="/skills">Skills</NavLink></li>
                        <li><NavLink to="/fun">Fun</NavLink></li>
                        <li><NavLink to="/resume">Resume</NavLink></li>
                    </ul>
                </Menu>
            </div>
        )
    }
}

export default Header;
