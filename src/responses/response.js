const response = (statusCode,data,message,res) => {
    res.status(statusCode).json({
        data:data,
        message,
    })
}

module.exports = response