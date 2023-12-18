import React from 'react';
import './App.css';

import ItemForm from './components/ItemForm';

function App() {
  const [dynForm, setDynForm] = React.useState([
    <ItemForm key={0} index={0} />,
  ]);

  const addInput = (e) => {
    e.preventDefault();
    setDynForm([...dynForm, <ItemForm key={dynForm.length + 1} index={1} />]);
  };

  return (
    <>
      <form>
        <label>Nama Customer</label>
        <input type="text" placeholder="Nama Kustomer" />
        <div className="dynamic-content">{dynForm}</div>
        <button onClick={addInput}>Add Items</button>
      </form>
    </>
  );
}

export default App;
