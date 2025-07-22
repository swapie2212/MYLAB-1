const express = require('express');
const client = require('prom-client'); // 👈 New import

const app = express();
const PORT = process.env.PORT || 4000;

// 🔍 Enable collection of default metrics
client.collectDefaultMetrics();

// 📊 Create /metrics endpoint for Prometheus
app.get('/metrics', async (req, res) => {
  res.set('Content-Type', client.register.contentType);
  res.end(await client.register.metrics());
});

// 🛠 Sample API route
app.get('/', (req, res) => res.send('Backend is running!'));

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
