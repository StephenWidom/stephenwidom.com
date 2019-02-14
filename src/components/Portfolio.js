import React from 'react';
import ReactHtmlParser from 'react-html-parser';
import { Link } from 'react-router-dom';
import { Carousel } from 'react-responsive-carousel';
import styles from 'react-responsive-carousel/lib/styles/carousel.min.css';
import Loading from './Loading';
import Modal from 'react-modal';

class Portfolio extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            isLoading: true,
            portfolio: null,
            selected: 0,
            open: null
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

    componentDidUpdate() {
        console.log('updated!', this.state);
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
                }, () => console.log(this.state));
                this.props.updateCache('portfolio', portfolio);
            });
        });
    }

    openModal = (e, open) => {
        e.preventDefault();
        this.setState((prevState) => {
            return {
                open,
                selected: prevState.selected
            }
        }, () => console.log('open', this.state));
    }

    closeModal = () => {
        this.setState((prevState) => {
            return {
                open: null,
                selected: prevState.selected
            }
        }, () => console.log('close', this.state));
    }

    updateCurrentSlide = (selected) => {
        this.setState(() => {
            return {
                selected
            }
        }, () => console.log(this.state));
    }

    nextSlide = () => {
        const newIndex = (this.state.selected == this.state.portfolio.length - 1) ? 0 : this.state.selected + 1;
        this.setState((prevState) => {
            return {
                selected: newIndex,
                open: prevState.portfolio[newIndex]
            }
        });
    }

    prevSlide = () => {
        const newIndex = (this.state.selected) ? this.state.selected - 1 : this.state.portfolio.length - 1;
        this.setState((prevState) => {
            return {
                selected: newIndex,
                open: prevState.portfolio[newIndex]
            }
        });
    }

    render() {
        Modal.setAppElement('#app');

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
                        swipeable={true}
                        shouldCloseOnOverlayClick={true}
                        centerMode={true}
                        centerSlidePercentage={70}
                        onClickItem={(index) => this.updateCurrentSlide(index)}
                        onChange={(index) => this.updateCurrentSlide(index)}
                        selectedItem={this.state.selected}
                    >
                        {this.state.portfolio.map((item) =>
                        <div key={item}>
                            {item._embedded && (
                            <img src={item._embedded['wp:featuredmedia'][0].source_url} />
                            )}
                            <a href="" className="slide-link" onClick={(e) => { this.openModal(e, item) }}>{ReactHtmlParser(item.title.rendered)}</a>
                        </div>
                        )}
                    </Carousel>
                    )}
                    {this.state.open !== null && (
                        <Modal
                            className="modal"
                            isOpen={true}
                            overlayClassName="overlay"
                        >
                            <span className="prev-slide modal-nav" onClick={this.prevSlide}><i class="fa fa-chevron-left"></i></span>
                            <span className="next-slide modal-nav" onClick={this.nextSlide}><i class="fa fa-chevron-right"></i></span>
                            <i class="fa fa-times" onClick={this.closeModal}></i>
                            <h4><span>{ReactHtmlParser(this.state.open.title.rendered)}</span> <span>({this.state.open.acf.year})</span></h4>
                            {ReactHtmlParser(this.state.open.content.rendered)}
                            {this.state.open.acf.url &&
                                <a className="url" href={this.state.open.acf.url} target="_blank"><i class="fa fa-external-link-alt"></i> View the Site</a>
                            }
                            {this.state.open.acf.repo &&
                                <a className="repo" href={this.state.open.acf.repo} target="_blank"><i class="fab fa-github"></i> Scope the Source</a>
                            }
                            <ul className="technologies">
                                Technologies:
                            {this.state.open.acf.technologies.map((tech) =>
                                <li>{tech.post_title}</li>
                            )}
                            </ul>
                        </Modal>
                    )}
                </div>
                )}
            </section>
        )
    }
}

export default Portfolio;

