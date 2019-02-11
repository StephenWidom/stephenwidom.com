import React from 'react';

const Footer = () => {
    const year = (new Date()).getFullYear();
    return (
        <footer>
            <div className="container">
                &copy; {year} Stephen Widom. All rights reserved &mdash; except for the slackmojis, obviously.
            </div>
        </footer>
    );
}

export default Footer;
