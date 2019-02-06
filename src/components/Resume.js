import React from 'react';

class Resume extends React.Component {

    constructor(props) {
        super (props);
    }

    render() {
        return (
            <section id="resume">
                <div className="container content">
                    <h1>Stephen Widom</h1>
                    <h2>New York, NY - stevewidom@gmail.com</h2>
                    <h3>Work Experience:</h3>
                    <p>Strategic Insight | June 2016 - Present<br />Web Developer | New York, NY</p>
                    <ul>
                        <li>Use ReactJS (and React Router, ReactDOM) with Webpack and Babel to create dynamic web applications</li>
                        <li>Work with DevOps to create &amp; secure development, staging, and production environments</li>
                        <li>Integrate version control using Git with GitHub and Bitbucket</li>
                        <li>Make use of VirtualBox &amp; Vagrant to create portable work environments</li>
                        <li>Code HTML emails and various marketing communications</li>
                        <li>Participate in daily scrum meetings and bi-weekly sprint plannings</li>
                        <li>As part of a team, convert high-traffic sites from legacy CMS to WordPress</li>
                        <li>Conduct CMS training sessions for stakeholders, project owners</li>
                    </ul>
                    <p>MSM DesignZ, Inc. | February 2014 - June 2016<br />Lead Front End Developer | Tarrytown, NY</p>
                    <ul>
                        <li>Produced more than 20 custom websites and landing pages</li>
                        <li>Developed more than a dozen custom WordPress templates and plugins</li>
                        <li>Coded pages in accordance with best SEO practices</li>
                        <li>Designed, coded, and executed several successful HTML e-mail campaigns</li>
                        <li>Integrated payment gateways including Authorize.net and PayPal for e-commerce sites</li>
                        <li>Eliminated spam from all custom contact forms</li>
                        <li>Made use of Google PageSpeed Insights and Google Analytics to ensure top page performance and SEO ranking</li>
                        <li>Setup VPS for client hosting including installing LAMP</li>
                        <li>Optimized PHP and Apache for best performance on high-traffic sites</li>
                    </ul>
                    <p>Plastic-Craft Products | August 2013 - February 2014<br />Web Designer / Web Developer | West Nyack, NY</p>
                    <ul>
                        <li>Completely redesigned and coded Plastic-Craft.com - including the storefront and blog</li>
                        <li>Designed and developed PlasticCuttingBoards.com - from concept to completion</li>
                        <li>Along with a coworker, created a user interface for an internal database system that allows users to search every item in inventory, and keeps an accurate stock count across several online outlets (eBay, Amazon, Magento stores)</li>
                        <li>Designed and launched a successful e-mail marketing campaign (>70% open rate)</li>
                        <li>Assisted in launching a successful Google AdWords campaign</li>
                        <li>Utilized several APIs including MailChimp/Mandrill, FedEx, USPS, eBay, and more</li>
                    </ul>
                    <p>Self-Employed | June 2012 - Present<br />Web Designer / Web Developer | New York, NY</p>
                    <ul>
                        <li>Work face-to-face with clients to create custom websites</li>
                        <li>Ensure strict adherence to latest HTML, CSS, JavaScript standards and practices</li>
                        <li>Make use of latest responsive design techniques to ensure consistent user experience on desktop browsers as well as tablets and mobile devices</li>
                        <li>Setup hosting through cpanel-based shared hosting environments or on personal VPS</li>
                    </ul>
                    <h3>Volunteer Experience:</h3>
                    <p>People to People | May 2013 - February 2014<br />Volunteer | Nanuet, NY</p>
                    <ul>
                        <li>Updated and enhanced WordPress website</li>
                        <li>Utilized customer relationship management software to update and verify client records</li>
                        <li>Used macros to simplify process of tracking volunteer hours through Excel</li>
                    </ul>
                    <h3>Computer Skills:</h3>
                    <ul>
                        <li>More than five years of professional experience with HTML, CSS, PHP, JavaScript, and jQuery</li>
                        <li>Professional experience creating and deploying React web applications</li>
                        <li>Expertise in converting PSDs to HTML</li>
                        <li>Custom WordPress theme and plugin development, as well as custom jQuery plugin development</li>
                        <li>Professional experience installing, updating, and customizing WordPress sites and Magento storefronts</li>
                        <li>Familiarity with version control software Git and setting up portable environments using Vagrant and VirtualBox</li>
                        <li>Proficient in API integration including Constant Contact, Authorize.net, PayPal, Twitter, and Google Maps</li>
                        <li>Professional experience creating custom API endpoints for database-based web applications</li>
                        <li>Knowledgeable in Adobe Creative Suite software including Photoshop</li>
                        <li>Experience with Linux / command line interface</li>
                    </ul>
                    <h3>Education:</h3>
                    <p>Bachelor of Arts - State University of New York, College at Oneonta<br />Music Industry major<br />Audio Arts Production minor</p>
                </div>
            </section>
        );
    }
}

export default Resume;
