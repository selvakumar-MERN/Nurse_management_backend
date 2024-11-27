const express = require('express');
const app = express();
const cors = require('cors');


const PORT = process.env.PORT || 7000;
app.use(express.json());
app.use(cors());

const router = require('./routes/router');
app.use('/api', router);

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));