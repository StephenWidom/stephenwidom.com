import React from 'react';
import ReactHtmlParser from 'react-html-parser';

const Portfolio = (props) => (
    <div id="portfolio">
        {typeof props.portfolio !== undefined && (
        <div className="cf portfolio-container">
            <h1>Portfolio</h1>
            {props.portfolio.map((item) =>
            <div key={item}>
                Hi
            </div>
            )}
        </div>
        )}
    </div>
)

export default Portfolio;

