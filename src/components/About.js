import React from 'react';

class About extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <section id="about">
                <div class="container content">
                    <h2>My Origin Story</h2>
                    <img className="books-pose" src="./images/books-pose-thumb.jpg" />
                    <h4>I'm passionate about creation</h4>
                    <p>I started playing guitar when I was eight years old. I got my first electric guitar that year as a birthday present. When I was 14 I received an eight-track digital recorder and a microphone, and started making recordings of my original compositions. I taught myself to play bass, drums, and piano as well as the basics of audio engineering to constantly and consistently improve the quality of my recordings.</p>
                    <h4>What does this have to do with programming?</h4>
                    <p>Whenever I'd amass about ten (what I thought then) quality tracks, I'd burn them onto a CD and give them out at school. However, I soon realized that this wasn't a very cost-effective or optimally efficient way to distribute my music. I needed a website.</p>
                    <h4>Remember Geocities?</h4>
                    <p>When I was 15 years old, I signed up for a free website and began teaching myself HTML and the basics of web design. I approached the subject with the same level of enthusiasm and passion previously reserved for music alone.</p>
                    <p>It wasn't long before my first website was live – and ugly. CSS was next on my agenda; and when I wanted a way to interact with visitors (through forms, surveys, etc.), I began learning PHP.</p>
                    <h4>Constantly learning and improving.</h4>
                    <p>Even though I started with coding more than ten years ago, I know there is still so much to learn. That's why I order books from Amazon monthly. That's why I follow top developers on Twitter and subscribe to a dozen web-related subreddits to keep up-to-date on the latest trends and techniques. Front end development is a passion of mine now, and something I strive to get better at every day.</p>
                    <p>Have questions? Visit the contact page, connect with me using the social media links below, or e-mail me at contact[at]stephenwidom.com to discuss your next project or to set up a time to jam.</p>
                </div>
            </section>
        );
    }
}

export default About;

