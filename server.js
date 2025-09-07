const express = require('express');
const path = require('path');
const app = express();
const PORT = 3000;

// App metadata (update version/timestamp each deploy)
const APP_VERSION = "1.0.0";
const DEPLOY_TIME = new Date().toLocaleString();

// Serve static files (CSS, JS, images)
app.use(express.static(path.join(__dirname, 'public')));

// Homepage
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Health check
app.get('/health', (req, res) => {
  res.json({ status: 'ok', time: new Date() });
});

// Version + deploy info
app.get('/info', (req, res) => {
  res.json({ version: APP_VERSION, deployedAt: DEPLOY_TIME });
});

app.listen(PORT, () => {
  console.log(`🚀 App running at http://localhost:${PORT}`);
});
