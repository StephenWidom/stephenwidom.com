import React from 'react';
import PieChart from 'react-minimal-pie-chart';

const Skill = (props) => {

    const scale = props.scale;
    const skill = props.skill;
    const yearsExperience = Math.min(skill.acf.years_experience, scale);
    const colors = props.colors;
    const data = [
        {
            value: skill.acf.years_experience,
            color: colors[props.index]
        }
    ]

    const divStyle = {
        position: 'relative',
        margin: '0 50px 50px',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        alignContent: 'center',
        height: '240px',
        width: '240px',
        flexWrap: 'wrap',
        borderRadius: '50%',
        background: '#fff',
        overflow: 'visible'
    }

    const chartStyle = {
        width: '260px',
        position: 'absolute',
        left: '-10px',
        top: '-10px'
    }

    const titleStyle = {
        fontSize: '21px',
        fontWeight: 'bold',
        display: 'block',
        textAlign: 'center',
        flexBasis: '100%',
        width: '100%',
        position: 'relative',
        zIndex: 1
    }

    const spanStyle = {
        flexBasis: '100%',
        display: 'block',
        width: '100%',
        textAlign: 'center',
        position: 'relative',
        zIndex: 1,
        fontSize: '19px'
    }


    return (
        <div className="chart-container">
            <PieChart
                data={data}
                lineWidth={15}
                totalValue={scale}
                startAngle={-180}
                animate={true}
                className="chart"
            />
            <h5 className="chart-title">{skill.title.rendered}</h5>
            <span className="chart-span">{yearsExperience}{yearsExperience >= scale && "+"} year{yearsExperience > 1 && "s"}</span>
        </div>
    )

}

export default Skill;

