import React from 'react';
import ReactHtmlParser from 'react-html-parser';
import { Link } from 'react-router-dom';
import { Carousel } from 'react-responsive-carousel';
import styles from 'react-responsive-carousel/lib/styles/carousel.min.css';

const Portfolio = (props) => (
    <div id="portfolio">
        {typeof props.portfolio !== undefined && (
        <div className="container">
            <h2>Portfolio</h2>
            <Carousel
                showArrows={false}
                showIndicators={false}
                showStatus={false}
                infiniteLoop={true}
                useKeyboardArrows={true}
                emulateTouch={true}
                centerMode={true}
                centerSlidePercentage={70}
            >
            {props.portfolio.map((item) =>
                <div key={item}>
                    {item._embedded && (
                    <img src={item._embedded['wp:featuredmedia'][0].source_url} />
                    )}
                    <Link to={`/portfolio/${item.id}`}>{ReactHtmlParser(item.title.rendered)}</Link>
                </div>
            )}
            </Carousel>
        </div>
        )}
    </div>
)

export default Portfolio;

