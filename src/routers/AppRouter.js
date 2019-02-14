import React from 'react';
import { BrowserRouter, Route, Switch, Link, NavLink } from 'react-router-dom';
import Header from '../components/Header';
import Intro from '../components/Intro';
import Technologies from '../components/Technologies';
import Skills from '../components/Skills';
import Portfolio from '../components/Portfolio';
import Resume from '../components/Resume';
import Fun from '../components/Fun';
import Footer from '../components/Footer';
import NotFound from '../components/NotFound';

const AppRouter = (props) => {

    const { about, portfolio, technologies, skills, slackmojis, resume, colors, scale, updateCache } = props;

    return (
        <BrowserRouter>
            <div>
                <Header />
                <Switch>
                    <Route path="/" exact render={(props) => <Intro {...props} updateCache={updateCache} about={about} />} />
                    <Route path="/portfolio" exact render={(props) => <Portfolio {...props} updateCache={updateCache} portfolio={portfolio} />} />
                    <Route path="/technologies" render={(props) => <Technologies {...props} colors={colors} technologies={technologies} scale={scale} />} />
                    <Route path="/skills" render={(props) => <Skills {...props} colors={colors} skills={skills} scale={scale} />} />
                    <Route path="/fun" exact render={(props) => <Fun {...props} updateCache={updateCache} slackmojis={slackmojis} />} />
                    <Route path="/resume" exact render={(props) => <Resume {...props} updateCache={updateCache} resume={resume} />} />
                    <Route component={NotFound} />
                </Switch>
                <Footer />
            </div>
        </BrowserRouter>
    );
}

export default AppRouter;

