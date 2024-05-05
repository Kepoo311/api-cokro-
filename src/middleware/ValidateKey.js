const response = require("../responses/response");
const apiKey = "Cokrok-kasir-apikey-098979";

const validate = (req, res, next) => {
  //middleare validasi apikey

  if (!req.header("api-key")) {
    return response(500, "You missing header!!", "Validation Error", res);
  }
  if (req.header("api-key") !== apiKey) {
    return response(500, "Your apikey wrong!!", "Validation Error", res);
  }
  next();
};

module.exports = validate;
