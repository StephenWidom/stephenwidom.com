import React from 'react';
import { NavLink } from 'react-router-dom';

const Header = (props) => (
    <header>
        <nav>
            <ul>
                <NavLink to="/">Home</NavLink>
                <NavLink to="/portfolio">Portfolio</NavLink>
                <NavLink to="/technologies">Technologies</NavLink>
                <NavLink to="/skills">Skills</NavLink>
            </ul>
        </nav>
    </header>
);

export default Header;
