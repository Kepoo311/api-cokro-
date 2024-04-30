const express = require("express");
const app = express();
const port = 6969;
const bodyParser = require("body-parser");
const db = require("./connection/connection");
const response = require("./responses/response");

app.use(bodyParser.json());

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
  res.send("Cokro API V69.69.69!");
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
  const { tgl, no_faktur, kode, nama, qty, suplier,payment, harga, subtotal, retur} = req.body;
  sql = "INSERT INTO transaction_in VALUES(?,?,?,?,?,?,?,?,?,?,?)";
  body = [``, `${tgl}`, `${no_faktur}`, `${kode}`, `${nama}`, `${qty}`, `${suplier}`,`${payment}`, `${harga}`, `${subtotal}`,`${retur}`];

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

  console.log(`App is Fucking running on port http://127.0.0.1:${port} `);
});
