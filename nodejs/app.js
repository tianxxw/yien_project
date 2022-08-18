const express = require('express')
const DataRouter = require('./router/list')
const app = express()
const cors = require('cors')
const joi = require('joi')

app.use((req, res, next) => {
 res.cc = function(err, status = 1) {
     res.send({
         status,
         message: err instanceof Error ? err.message : err
     })
 }
 next()
})
app.use(cors())
app.use('/yien',DataRouter)
app.use(express.urlencoded({ extended: false }))
app.use(express.json())
app.listen(3007,function() {
 console.log('api server running at http://127.0.0.1:3007');
})