const express = require('express');
const app = express();
const orderRouter = require('./routes/orders'); // Import the orders router
const userRoutes = require('./routes/users');   // Import the users router

// Use the imported routers as middleware
// All requests to /orders will be handled by orderRouter
app.use('/orders', orderRouter);
// All requests to /users will be handled by userRoutes
app.use('/users', userRoutes);

// Start the server and listen on port 3000
app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
