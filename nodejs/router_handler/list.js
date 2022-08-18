const {getData} = require('../router_function/list')
const { string } = require('joi')
const db = require('../db/index')
exports.DataList = (req,res) =>{
  const sql = `select * from yiendata`
  getData(sql,res)

}

exports.DataList1 = (req,res) =>{
  const sql = `select * from yiendata1`
  getData(sql,res)

}

exports.DataList2 = (req,res) =>{
  const sql = `select * from yiendata2`
  getData(sql,res)

}

exports.DataList3 = (req,res) =>{
  const sql = `select * from yiendata3`
  getData(sql,res)

}

exports.DataList4 = (req,res) =>{
  const sql = `select * from yiendata4`
  getData(sql,res)

}

exports.DataListIrank = (req,res) =>{
  const sql = `select MovieName,BoxOffice from yiendata1`
  getData(sql,res)

}


exports.DataListIrank10 = (req,res) =>{
  const sql = `select Irank,MovieName,InsertDate,MovieDays,SumBoxOffice,ReleaseTime from yiendata5 limit 0,10`
  getData(sql,res)
  
}

exports.DataList5 = (req,res) =>{
  const sql = `select * from yiendata5`
  getData(sql,res)
 
}



exports.DataList4Limit = (req,res) =>{
  const sql = `select * from yiendata4 limit 0,10`
  getData(sql,res)
 
}

exports.DataInfo = (req,res) =>{
  const sql = `select * from yiendata where MovieName like ? limit 0,?`
  getData(sql,res,['%'+req.query.MovieName+'%',Number.parseInt(req.query.page)*10])

}
//模糊查询表1
exports.DataAccurate = (req,res) =>{
  const sql = `select * from yiendata where MovieName = ?`


}

//查询表5
exports.DataList5Info = (req,res) =>{
  const sql = `select * from yiendata5 where MovieName = ?`
  getData(sql,res,req.query.MovieName)

 }
//查表4
 exports.DataList4Info = (req,res) =>{
  const sql = `select * from yiendata4 where MovieName = ?`
  getData(sql,res,req.query.MovieName)

 }
 
//3
exports.DataList3Info = (req,res) =>{
  const sql = `select * from yiendata3 where MovieName = ?`
  getData(sql,res,req.query.MovieName)

 }

//2
exports.DataList2Info = (req,res) =>{
  const sql = `select * from yiendata2 where MovieName = ?`
  getData(sql,res,req.query.MovieName)

 }
//1
exports.DataList1Info = (req,res) =>{
  const sql = `select * from yiendata1 where MovieName = ?`
  getData(sql,res,req.query.MovieName)

 }
//  let num =[1,2,3]
//  let  a  =1
 exports.DataList0Info = (req,res) =>{
  const sql = `select * from yiendata where MovieName = ?`
  getData(sql,res,req.query.MovieName)

 }