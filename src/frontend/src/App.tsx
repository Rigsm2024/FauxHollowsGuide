import React, { useState, useEffect } from 'react';
import { getTasks } from './api';

interface Task { 
  id: number; 
  name: string; 
  extra_info: string; 
}

const App: React.FC = () => {
  const [tasks, setTasks] = useState<Task[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => { fetchTasks(); }, []);
  const fetchTasks = async () => {
    try {
      const response = await getTasks(); 
      console.log(response.data)
      setTasks(response.data);
    }
    catch (error) { console.error("Error fetching tasks:", error); }
    finally { setLoading(false); }
  };

  if (loading) { return <div>Loading...</div>; }

  return (
    <>
      <div>How is the response from backend?</div>
      <div>
        <ul> 
          {tasks.map(task => ( 
            <li key={task.id}> 
              {task.id} - {task.name} 
            </li> 
          ))} 
        </ul>
      </div>
    </>
  )
}

export default App
