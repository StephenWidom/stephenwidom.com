import React from 'react';
import ReactHtmlParser from 'react-html-parser';
import { Link } from 'react-router-dom';
import { Carousel } from 'react-responsive-carousel';
import styles from 'react-responsive-carousel/lib/styles/carousel.min.css';
import Loading from './Loading';

class Portfolio extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            isLoading: true,
            portfolio: null
        }
    }

    componentWillMount() {
        if (this.props.portfolio !== null) {
            this.setState(() => {
                return {
                    portfolio: this.props.portfolio,
                    isLoading: false
                }
            });
        } else {
            this.getPortfolio();
        }
    }

    getPortfolio = () => {
        const endpoint = '/cms/wp-json/wp/v2/portfolio?per_page=100&_embed';
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((portfolio) => {
            this.setState(() => {
                return { portfolio }
            }, () => {
                this.setState(() => {
                    return { isLoading: false }
                });
                this.props.updateCache('portfolio', portfolio);
            });
        });
    }

    render() {
        return (
            <section id="portfolio">
                {this.state.isLoading && (
                    <Loading />
                ) || (
                <div className="container">
                    <h2>Portfolio</h2>
                    {!!this.state.portfolio && (
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
                        {this.state.portfolio.map((item) =>
                        <div key={item}>
                            {item._embedded && (
                            <img src={item._embedded['wp:featuredmedia'][0].source_url} />
                            )}
                            <Link to={`/portfolio/${item.id}`}>{ReactHtmlParser(item.title.rendered)}</Link>
                        </div>
                        )}
                    </Carousel>
                    )}
                </div>
                )}
            </section>
        )
    }
}

export default Portfolio;

