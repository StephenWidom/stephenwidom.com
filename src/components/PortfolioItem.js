import React from 'react';

const PortfolioItem = (props) => {

    return (
        <div>
            Yes, this ID is {props.match.params.id}
        </div>
    );

}

export default PortfolioItem;
