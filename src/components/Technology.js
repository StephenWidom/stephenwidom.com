import React from 'react';
import PieChart from 'react-minimal-pie-chart';

const Technology = (props) => {

    const scale = props.scale;
    const technology = props.technology;
    const yearsExperience = Math.min(technology.acf.years_experience, scale);
    const colors = props.colors;
    const data = [
        {
            value: technology.acf.years_experience,
            color: colors[props.index]
        }
    ]

    return (
        <div className="chart-container">
            <PieChart
                data={data}
                lineWidth={15}
                className="chart"
                totalValue={scale}
                startAngle={-180}
                animate={true}
            />
            <h5 className="chart-title">{technology.title.rendered}</h5>
            <span className="chart-span">{yearsExperience}{yearsExperience >= scale && "+"} year{yearsExperience > 1 && "s"}</span>
        </div>
    )

}

export default Technology;

