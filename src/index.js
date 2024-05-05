const express = require("express");

const cron = require("node-cron");
const mysqldump = require("mysqldump");

const Discord = require("discord-webhook-node");
const webhook = new Discord.Webhook("https://discord.com/api/webhooks/1235160890446450699/YDxQGlGP1NwekH9rDgDDbOj3ld97J2tmrWX917rPsITHP6rlrsoChnjGbJ-H60ZFA66D");
const fs = require("fs");

const app = express();
const port = 6969;
const bodyParser = require("body-parser");
const db = require("./connection/connection");
const response = require("./responses/response");
const validateKey = require("./middleware/ValidateKey");
const limiter = require("./middleware/limiter");

app.use(bodyParser.json());
app.use(limiter);
app.use(validateKey);

function queryDatabase(sql, params) {
  return new Promise((resolve, reject) => {
    db.query(sql, params, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  });
}

app.get("/", (req, res) => {
  const styledText = `<h1>Cokro API V69.69.69!</h1>
  <style>
  @keyframes jedagjedug {
    0% {
        transform: scale(0,5);
    } 
    100% {
        transform: scale(1);
    }
}


    h1 {
      color: #f00; /* Red color */
      font-size: 3em; /* Large font size */
      text-align: center; /* Center alignment */
      animation: jedagjedug 1s infinite;
    }
  </style>`;

  res.send(styledText);
});

app.get("/user/login/:username/:password", async (req, res) => {
  sql = `SELECT * FROM staff WHERE User = ?;`;

  queryDatabase(sql, [`${req.params.username}`])
    .then((result) => {
      if (result && result.length > 0) {
        if (result[0].Password === req.params.password) {
          response(200, result, "Success login", res);
          console.log("Data fetched successfully: ", sql);
        } else {
          response(404, null, "Wrong password", res);
          console.log("Data fetched successfully: ", sql);
        }
      }

      if (!result || result.length === 0) {
        response(404, null, "User not found", res);
        console.log("Data fetched successfully: ", sql);
      }
    })
    .catch((error) => {
      response(404, null, "Error fetching data!", res);
      console.error("Error fetching data: ", error);
    });
});

app.get("/get-data/products/all", async (req, res) => {
  sql = "SELECT * FROM product";

  queryDatabase(sql)
    .then((result) => {
      if (!result || result.length === 0) {
        console.error("No data found : ", sql);
        return response(404, null, "No data found", res);
      }

      response(200, result, "Success fetch data", res);
      console.log("Data fetched successfully: ", sql);
    })
    .catch((error) => {
      response(404, null, "Error fetching data", res);
      console.error("Error fetching data: ", error);
    });
});

app.get("/get-data/products/:kode_barang", async (req, res) => {
  const sql = `SELECT * FROM product WHERE kode_brg LIKE ? OR nama_brg LIKE ?;`;

  queryDatabase(sql, [`%${req.params.kode_barang}%`, `%${req.params.kode_barang}%`])
    .then((result) => {
      if (!result || result.length === 0) {
        console.error("No data found : ", req.params.kode_barang);
        return response(404, null, "No data found", res);
      }

      response(200, result, "Success fetch data", res);
      console.log("Data fetched successfully: ", req.params.kode_barang);
    })
    .catch((error) => {
      response(404, null, "Error fetching data", res);
      console.error("Error fetching data: ", error);
    });
});

app.get("/get-data/pembayaran", async (req, res) => {
  sql = "SELECT * FROM pembayaran";

  queryDatabase(sql)
    .then((result) => {
      if (!result || result.length === 0) {
        console.error("No data found : ", sql);
        return response(404, null, "No data found", res);
      }

      response(200, result, "Success fetch data", res);
      console.log("Data fetched successfully: ", sql);
    })
    .catch((error) => {
      response(404, null, "Error fetching data", res);
      console.error("Error fetching data: ", error);
    });
});

app.get("/get-data/transaksi_out", async (req, res) => {
  sql = "SELECT * FROM transaction";

  queryDatabase(sql)
    .then((result) => {
      if (!result || result.length === 0) {
        console.error("No data found : ", sql);
        return response(404, null, "No data found", res);
      }

      response(200, result, "Success fetch data", res);
      console.log("Data fetched successfully: ", sql);
    })
    .catch((error) => {
      response(404, null, "Error fetching data", res);
      console.error("Error fetching data: ", error);
    });
});

app.get("/get-data/transaksi_in", async (req, res) => {
  sql = "SELECT * FROM transaction_in";

  queryDatabase(sql)
    .then((result) => {
      if (!result || result.length === 0) {
        console.error("No data found : ", sql);
        return response(404, null, "No data found", res);
      }

      response(200, result, "Success fetch data", res);
      console.log("Data fetched successfully: ", sql);
    })
    .catch((error) => {
      response(404, null, "Error fetching data", res);
      console.error("Error fetching data: ", error);
    });
});

app.post("/set-data/products", async (req, res) => {
  const { kodebrg, namabrg, stokawl, masuk, keluar, stokakhr, suplier, beli, jual, markup, pendapatan, laba, harta, persentase, cl } = req.body;
  sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  body = [``, `${kodebrg}`, `${namabrg}`, `${stokawl}`, `${masuk}`, `${keluar}`, `${stokakhr}`, `${suplier}`, `${beli}`, `${jual}`, `${markup}`, `${pendapatan}`, `${laba}`, `${harta}`, `${persentase}`, `${cl}`];

  queryDatabase(sql, body)
    .then((result) => {
      data = {
        isSucces: true,
        Id: result.insertId,
      };
      response(200, data, "Succes insert data!", res);
      console.log("Succes insert data : ", body);
    })
    .catch((eror) => {
      data = {
        isSucces: false,
        error: eror.code,
      };

      response(404, data, "Error insert data!", res);
      console.log("Error insert data : ", eror);
    });
});

app.post("/set-data/pembayaran", async (req, res) => {
  const { tgl_pembelian, tunai, tgl_pembayaran, faktur, jenis } = req.body;
  sql = "INSERT INTO pembayaran VALUES(?,?,?,?,?,?)";
  body = [``, `${tgl_pembelian}`, `${tunai}`, `${tgl_pembayaran}`, `${faktur}`, `${jenis}`];

  queryDatabase(sql, body)
    .then((result) => {
      data = {
        isSucces: true,
        Id: result.insertId,
      };
      response(200, data, "Succes insert data!", res);
      console.log("Succes insert data : ", body);
    })
    .catch((eror) => {
      data = {
        isSucces: false,
        error: eror.code,
      };

      response(404, data, "Error insert data!", res);
      console.log("Error insert data : ", eror);
    });
});

app.post("/set-data/transaksi_out", async (req, res) => {
  const { no_faktur, kode, tgl, tgl_pelunasan, nama, qty, harga, subtotal, mark_up, laba, payment, namaPelanggan, Tunai, status, retur, debug } = req.body;
  sql = "INSERT INTO transaction VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  body = [``, `${no_faktur}`, `${kode}`, `${tgl}`, `${tgl_pelunasan}`, `${nama}`, `${qty}`, `${harga}`, `${subtotal}`, `${mark_up}`, `${laba}`, `${payment}`, `${namaPelanggan}`, `${Tunai}`, `${status}`, `${retur}`, `${debug}`];

  queryDatabase(sql, body)
    .then((result) => {
      data = {
        isSucces: true,
        Id: result.insertId,
      };
      response(200, data, "Succes insert data!", res);
      console.log("Succes insert data : ", body);
    })
    .catch((eror) => {
      data = {
        isSucces: false,
        error: eror.code,
      };

      response(404, data, "Error insert data!", res);
      console.log("Error insert data : ", eror);
    });
});

app.post("/set-data/transaksi_in", async (req, res) => {
  const { tgl, no_faktur, kode, nama, qty, suplier, payment, harga, subtotal, retur } = req.body;
  sql = "INSERT INTO transaction_in VALUES(?,?,?,?,?,?,?,?,?,?,?)";
  body = [``, `${tgl}`, `${no_faktur}`, `${kode}`, `${nama}`, `${qty}`, `${suplier}`, `${payment}`, `${harga}`, `${subtotal}`, `${retur}`];

  queryDatabase(sql, body)
    .then((result) => {
      data = {
        isSucces: true,
        Id: result.insertId,
      };
      response(200, data, "Succes insert data!", res);
      console.log("Succes insert data : ", body);
    })
    .catch((eror) => {
      data = {
        isSucces: false,
        error: eror.code,
      };

      response(404, data, "Error insert data!", res);
      console.log("Error insert data : ", eror);
    });
});

app.put("/update-data/product/:kode/:qty", async (req, res) => {
  sql = "UPDATE product SET keluar = keluar + ? WHERE kode_brg = ?";
  params = [`${req.params.qty}`, `${req.params.kode}`];

  queryDatabase(sql, params)
    .then((result) => {
      data = {
        isSucces: true,
        rowsAffected: result.affectedRows,
      };

      response(200, data, "Succes update data!", res);
      console.log("Succes update data : ", params);
    })
    .catch((eror) => {
      data = {
        isSucces: false,
        error: eror.code,
      };
      response(404, data, "Error update data!", res);
      console.log("Error update data : ", eror);
    });
});

cron.schedule("0 1 * * *", async () => {
  console.log("Starting backup process...");
  const date = new Date();
  const path = "src/backup";
  const filename = `backup_${date.getFullYear()}-${pad(date.getMonth() + 1, 2)}-${pad(date.getDate(), 2)}.sql`;

  try {
    // Lakukan backup MySQL
    await mysqldump({
      connection: {
        host: "localhost",
        user: "root",
        password: "",
        database: "cashier",
      },
      dumpToFile: `${path}/${filename}`,
    });

    console.log("Backup successfully created at", `${path}/${filename}`);

    // Delete old backup files
    await deleteOldBackups(path, filename);
  } catch (error) {
    console.error("An error occurred while creating backup", error);
  }
});

cron.schedule("0 7 * * *", async () => {
  console.log("Sending backup to Discord at 7:00 AM...");
  const date = new Date();
  const backupDir = "src/backup";
  const filename = `backup_${date.getFullYear()}-${pad(date.getMonth() + 1, 2)}-${pad(date.getDate(), 2)}.sql`;

  // Send file to Discord using webhook
  try {
    await webhook.sendFile(`${backupDir}/${filename}`);
    console.log("Backup file sent to Discord");
  } catch (error) {
    console.error("An error occurred while sending backup to Discord", error);
  }
});

// Function to delete old backup files
async function deleteOldBackups(backupDir, currentFilename) {
  const files = await fs.promises.readdir(backupDir);

  for (const file of files) {
    if (file !== currentFilename && file.startsWith("backup_")) {
      try {
        await fs.promises.unlink(`${backupDir}/${file}`);
        console.log("Old backup file deleted:", file);
      } catch (err) {
        console.error("Error deleting backup file", file, err);
      }
    }
  }
}

// Function to add leading zeros to a number
function pad(num, size) {
  return ("000000000" + num).substr(-size);
}

app.listen(port, () => {
  console.clear();
  console.log(`

 ██████╗ ██████╗ ██╗  ██╗██████╗  ██████╗      █████╗ ██████╗ ██╗    ██╗   ██╗ ██████╗ █████╗ 
██╔════╝██╔═══██╗██║ ██╔╝██╔══██╗██╔═══██╗    ██╔══██╗██╔══██╗██║    ██║   ██║██╔════╝██╔══██╗
██║     ██║   ██║█████╔╝ ██████╔╝██║   ██║    ███████║██████╔╝██║    ██║   ██║███████╗╚██████║
██║     ██║   ██║██╔═██╗ ██╔══██╗██║   ██║    ██╔══██║██╔═══╝ ██║    ╚██╗ ██╔╝██╔═══██╗╚═══██║
╚██████╗╚██████╔╝██║  ██╗██║  ██║╚██████╔╝    ██║  ██║██║     ██║     ╚████╔╝ ╚██████╔╝█████╔╝
 ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝     ╚═╝  ╚═╝╚═╝     ╚═╝      ╚═══╝   ╚═════╝ ╚════╝ 
                                                                                              
                                                                                                                         
`);

  console.log(`Api is running on port http://127.0.0.1:${port} `);
});
