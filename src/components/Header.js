import React from 'react';
import { NavLink } from 'react-router-dom';

const Header = (props) => (
    <header>
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
);

export default Header;
