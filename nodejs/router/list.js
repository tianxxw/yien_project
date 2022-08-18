const express = require('express')
// 创建路由对象
const router = express.Router()
const pydata = require('../router_handler/list')


// 获取所有数据
router.get('/list', pydata.DataList)

// 获取单一数据
router.post('/info', pydata.DataInfo)

router.get('/list1/',pydata.DataList1)

router.get('/list2',pydata.DataList2)

router.get('/list3',pydata.DataList3)

router.get('/list4',pydata.DataList4)

router.get('/list5',pydata.DataList5)

router.get('/list5/irank10',pydata.DataListIrank10)

router.post('/list5/info',pydata.DataList5Info)

router.post('/list4/info',pydata.DataList4Info)

router.post('/list3/info',pydata.DataList3Info)

router.post('/list2/info',pydata.DataList2Info)

router.post('/list1/info',pydata.DataList1Info)

router.post('/list0/info',pydata.DataList0Info)

router.get('/list4/irank10',pydata.DataList4Limit)

router.get('/bfrank10',pydata.DataListIrank)


router.post('/list/info',pydata.DataAccurate)
// 将路由对象共享出去
module.exports = router