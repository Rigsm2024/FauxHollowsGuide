import React, { useState, useEffect } from 'react';
import { getBlocks } from './api';
import Panel from './Panel';
import PanelSelector from './PanelSelector';


interface Blocks { 
  pattern: number; 
  rotate: number; 
  items: any; 
}

const App: React.FC = () => {
  const [blocks, setBlocks] = useState<Blocks[]>([]);
  const [items, setItems] = useState<Blocks[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => { fetchTasks(); }, []);
  const fetchTasks = async () => {
    try {
      const response = await getBlocks(); 
      console.log(response.data)
      setBlocks(response.data);
      setItems(response.data[0].items);
    }
    catch (error) { console.error("Error fetching tasks:", error); }
    finally { setLoading(false); }
  };
  if (loading) { return <div>Loading...</div>; }

  return (
    <>
      <div className='panel-container'>
        <Panel props={items} />
      </div>

      <div className='selector-container'>
        {blocks.map((block, index) => {
          const text = block.pattern + ' - ' + block.rotate;
          return (
            <div onClick={() => setItems(block.items)} key={text}>
              <PanelSelector props={block.items} />
            </div>
          )
        })}
      </div>
    </>
  )
}

export default App

