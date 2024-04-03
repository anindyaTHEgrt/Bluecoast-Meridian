const express = require('express');
const mysql = require('mysql2/promise');
const fs = require('fs');

const app = express();
const port = 3000;

// Create MySQL connection pool
const pool = mysql.createPool({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'admin',
    database: 'financialservices_db'
});

app.use(express.urlencoded({ extended: true }));
app.get('/details', (req, res) => {
    res.send('Please submit a form to view details.');
});

// Route for handling form submission and displaying details
app.post('/details', async (req, res) => {
  const username = req.body.username;
  const password = req.body.password;

  try {
      // Execute the SQL query to fetch user details
      const [rows, fields] = await pool.execute('SELECT * FROM userdata WHERE username = ? AND password = ?', [username, password]);
      if (rows.length > 0) {
        //res.send(`<h2>User Details</h2><p>First Name: ${rows[0].firstname}</p><p>Last Name: ${rows[0].lastname}</p>
        //<p>PAN: ${rows[0].PAN}</p><p>Property: ${rows[0].property}</p><p>Insurance: ${rows[0].insurance}</p><p>Mutual Fund: ${rows[0].mutual_fund}</p>`);
        
        fs.readFile(__dirname + '/details.html', 'utf8', (err, data) => {
          if (err) {
              console.error('Error reading file:', err);
              res.status(500).send('Internal Server Error');
          } else {
            
        let tableRows = '';
        console.log('Rows:', rows);
        rows.forEach(row => {
            tableRows += `<tr><td>Name</td><td>${row.firstname}</td></tr>
            <tr><td>PAN</td><td>${row.PAN}</td></tr>
            <tr><td>Stock</td><td>${row.stock1}</td></tr>
            <tr><td>Stock</td><td>${row.stock2}</td></tr>
            <tr><td>Stock</td><td>${row.stock3}</td></tr>
            <tr><td>Property</td><td>${row.property}</td></tr>
            <tr><td>Mutual Fund</td><td>${row.mutual_fund}</td></tr>
            <tr><td>Insurance</td><td>${row.insurace}</td></tr>`;
        });
              // Inject dynamic table rows into the HTML content
              const modifiedHtml = data.replace('<!-- Table rows for user details will be added dynamically here -->', tableRows);
              res.send(modifiedHtml);
          }
      });
          
      } else {
          res.send('Incorrect Credentials.');
      }
  } catch (error) {
      console.error('Error fetching user details:', error);
      res.status(500).send('Internal Server Error');
  }
});

// Serve the HTML login page
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/home.html');
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
