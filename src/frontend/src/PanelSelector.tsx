
interface PanelProps {
    props: ItemProps[]
}

interface ItemProps {
    x: number,
    y: number,
    category: number,
}

const PanelSelector = ({props}: PanelProps) => {
    //console.log(props)

    const renderGrid = () => {
        const rows = [];
        for (let yIndex = 6; yIndex >= 1; yIndex--) {
            const cells = [];
            for (let xIndex = 1; xIndex <= 6; xIndex++) {
                const target = props.filter(f => f.x === xIndex && f.y === yIndex);
                const category = target.length > 0 ? 'block' : '';
                const className = 'item-base selector ' + category;
                cells.push(<td key={xIndex} className={className}></td>);
            }
            rows.push(<tr key={yIndex}>{cells}</tr>);
        }

        return rows;
    };

    return (
        <table className='selector-table'>
            <tbody>
                {renderGrid()}
            </tbody>
        </table>
    )
}

export default PanelSelector