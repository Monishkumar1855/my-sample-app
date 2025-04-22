import React from 'react';
import ReactDOM from 'react-dom/client';

console.log("API URL:", process.env.REACT_APP_API_URL);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<h1>Hello from React!</h1>);
