const setRateLimit = require("express-rate-limit");

// Rate limit middleware
const rateLimitMiddleware = setRateLimit({
  windowMs: 60 * 1000,
  max: 30,
  message: "Kamu telah melampaui maximal request.",
  headers: true,
});

module.exports = rateLimitMiddleware;