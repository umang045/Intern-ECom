// config.js or db.js
const mysql = require("mysql2/promise");
require("dotenv").config(); // Load environment variables

// const db = mysql.createPool({
//   host: process.env.MYSQLHOST || "switchback.proxy.rlwy.net", // External hostname
//   port: process.env.MYSQLPORT || 38906, // External port
//   user: process.env.MYSQLUSER || "root",
//   password: process.env.MYSQLPASSWORD || "xGbhWxAjkWExvjLURYyGYAtErRtaVdOH",
//   database: process.env.MYSQLDATABASE || "railway",
//   waitForConnections: true,
//   connectionLimit: 10,
//   queueLimit: 0,
//   // Enable SSL for Railway (optional, but recommended)
//   ssl: {
//     rejectUnauthorized: true, // Enforce SSL verification
//   },
// });

// const db = async () => {
//   const connection = await mysql.createConnection(process.env.MYSQL_PUBLIC_URL);
//   return connection;
// };

// module.exports = { db };

let connection;

(async () => {
  connection = await mysql.createConnection(process.env.MYSQL_PUBLIC_URL);
})();

const db = {
  query: async (...args) => {
    if (!connection) {
      connection = await mysql.createConnection(process.env.MYSQL_PUBLIC_URL);
    }
    return connection.query(...args);
  },
};

module.exports = { db };
