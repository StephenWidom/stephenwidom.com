import React from 'react';
import Technology from './Technology';

const Technologies = (props) => {

    const techContainerStyles = {
        display: 'flex',
        flexWrap: 'wrap',
        justifyContent: 'center',
    };

    return (
        <section id="technologies">
            {typeof props.technologies !== undefined && (
                <div className="container">
                    <h2>Technologies</h2>
                    <div style={techContainerStyles}>
                    {props.technologies.map((item, index) =>
                        <Technology technology={item} index={index} colors={props.colors} scale={props.scale} />
                    )}
                    </div>
                </div>
            )}
        </section>
    )

}

export default Technologies;

