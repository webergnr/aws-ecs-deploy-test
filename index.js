const express = require("express")

const app = express()

app.get('/',(req, res) => {
    res.send({
        "date":`The current date is: ${new Date().toISOString()}`
    })
})

app.listen(80)
