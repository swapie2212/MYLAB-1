const express = require('express');
const client = require('prom-client'); // 📈 Prometheus client

const app = express();
const PORT = process.env.PORT || 4000;

// 📊 Enable collection of default system metrics (CPU, memory, etc.)
client.collectDefaultMetrics();

// 🚀 Health check endpoint (basic check)
app.get('/', (req, res) => {
  res.send('Backend is running!');
});

// 🔍 Prometheus metrics endpoint
app.get('/metrics', async (req, res) => {
  try {
    res.set('Content-Type', client.register.contentType);
    res.end(await client.register.metrics());
  } catch (ex) {
    res.status(500).end(ex.message);
  }
});

// 🏁 Start the server
app.listen(PORT, () => {
  console.log(`✅ Backend running on port ${PORT}`);
});
