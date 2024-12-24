
interface PanelProps {
    props: ItemProps
}

interface ItemProps {
    x: number,
    y: number,
    category: number,
}

const Panel = ({props}: PanelProps) => {
    //console.log(props)
    
    const itemClass = (category: number) => {
        switch(category) {
            case 1:
                return 'sword';
            case 2:
                return 'box';
            case 3:
                return 'faux';
            case 4:
                return 'block';
            default:
                return '';
        }
    }

    const renderGrid = () => {
        const rows = [];
        for (let yIndex = 6; yIndex >= 1; yIndex--) {
            const cells = [];
            for (let xIndex = 1; xIndex <= 6; xIndex++) {
                const target = props.filter(f => f.x === xIndex && f.y === yIndex);
                const category = target.length > 0 ? target[0].category : 0;
                const className = 'item-base ' + itemClass(category);
                cells.push(<td key={xIndex} className={className}></td>);
            }
            rows.push(<tr key={yIndex}>{cells}</tr>);
        }
        return rows;
    };

    return (
        <table>
            <tbody>
                {renderGrid()}
            </tbody>
        </table>
    )
}

export default Panel