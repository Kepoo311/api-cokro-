const setRateLimit = require("express-rate-limit");

// Rate limit middleware
const rateLimitMiddleware = setRateLimit({
  windowMs: 60 * 1000,
  max: 30,
  message: "Kamu telah melampaui maximal request.",
  headers: true,
  keyGenerator: function (req /*, res*/) {
    return req.ip;  // Use only IP address for limiting
  }
});

module.exports = rateLimitMiddleware;
