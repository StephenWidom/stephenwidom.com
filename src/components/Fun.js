import React from 'react';
import Loading from './Loading';

class Fun extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            isLoading: true,
            slackmojis: null
        }
    }

    componentWillMount() {
        if (this.props.slackmojis !== null) {
            this.setState(() => {
                return {
                    slackmojis: this.props.slackmojis,
                    isLoading: false
                }
            });
        } else {
            this.getFun();
        }

    }

    getFun = () => {
        const endpoint = '/cms/wp-json/wp/v2/slackmoji?per_page=100&_embed&filter[orderby]=title&order=asc';
        const myRequest = new Request(endpoint);
        fetch(myRequest).then((response) => response.json()).then((slackmojis) => {
            console.log(slackmojis);
            this.setState(() => {
                return { slackmojis }
            }, () => {
                this.setState(() => {
                    return { isLoading: false }
                });
                this.props.updateCache('slackmojis', slackmojis);
            });
        });
    }

    render() {

        const sectionStyle = {
            background: '#fff url("./images/background.png") repeat'
        }

        return (
            <section id="fun" style={sectionStyle}>
            {this.state.isLoading && (
                <Loading />
            ) || (
                <div class="container">
                    <h2>Free Slackmojis!</h2>
                {this.state.slackmojis !== null && (
                    <ul className="slackmojis">
                    {this.state.slackmojis.map((emoji) => (
                        <li>
                            <span>{emoji.title.rendered}</span>
                            <img src={emoji._embedded['wp:featuredmedia'][0].source_url} />
                        </li>
                    ))}
                    </ul>
                )}
                </div>
            )}
            </section>
        )
    }
}

export default Fun;
