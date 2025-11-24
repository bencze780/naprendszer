import React, { useState, useEffect } from 'react';

const App = () => {
  const [htmlContent, setHtmlContent] = useState('');

  useEffect(() => {
    // Lekérjük a fájlt a public mappából
    fetch('/index.html') 
      .then(response => {
        if (!response.ok) throw new Error("Nem sikerült betölteni");
        return response.text(); // Szövegként olvassuk be
      })
      .then(data => setHtmlContent(data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div className="container">
      <h1>Beolvasztott HTML tartalom</h1>
      
      {/* Itt jelenik meg a fájl tartalma */}
      <div dangerouslySetInnerHTML={{ __html: htmlContent }} />
    </div>
  );
};

export default App;