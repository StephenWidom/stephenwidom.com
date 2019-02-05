import React from 'react';
import { BrowserRouter, Route, Switch, Link, NavLink } from 'react-router-dom';
import Header from '../components/Header';
import Intro from '../components/Intro';
import Technologies from '../components/Technologies';
import Skills from '../components/Skills';
import Portfolio from '../components/Portfolio';
import PortfolioItem from '../components/PortfolioItem';
import Resume from '../components/Resume';
import NotFound from '../components/NotFound';

const AppRouter = (props) => {

    const { portfolio, technologies, skills, colors, scale } = props;

    return (
        <BrowserRouter>
            <div>
                <Header />
                <Switch>
                    <Route path="/" exact component={Intro} />
                    <Route path="/portfolio" exact render={(props) => <Portfolio {...props} portfolio={portfolio} />} />
                    <Route path="/portfolio/:id" component={PortfolioItem} />
                    <Route path="/technologies" render={(props) => <Technologies {...props} colors={colors} technologies={technologies} scale={scale} />} />
                    <Route path="/skills" render={(props) => <Skills {...props} colors={colors} skills={skills} scale={scale} />} />
                    <Route path="/resume" component={Resume} />
                    <Route component={NotFound} />
                </Switch>
            </div>
        </BrowserRouter>
    );
}

export default AppRouter;

