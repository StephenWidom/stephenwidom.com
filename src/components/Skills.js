import React from 'react';
import Skill from './Skill';

const Skills = (props) => {

    const skillsContainerStyles = {
        display: 'flex',
        flexWrap: 'wrap',
        justifyContent: 'center',
    };

    return (
        <div id="skills">
            {typeof props.skills !== undefined && (
            <div className="container">
                <h2>Skills</h2>
                <div style={skillsContainerStyles}>
                {props.skills.map((item, index) =>
                    <Skill skill={item} index={index} colors={props.colors} scale={props.scale} />
                )}
                </div>
            </div>
            )}
        </div>
    )

}

export default Skills;

