const db = require('../db/index')
function getData(sql,res,info=null) {
 new Promise((reslove,reject)=>{
    db.query(sql,info,(err,result)=>{
     if(err || result.length == 0) {
      return res.cc(err)
     }
     res.send({
      data:result
     })
    })
 })
}

module.exports = {getData}