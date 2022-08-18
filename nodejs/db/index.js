const mysql = require('mysql')
    //导入mysql模块
const db = mysql.createPool({
        host: '127.0.0.1',
        user: 'root',
        password: 'admin123',
        database: 'yien'
    })
    //创建数据库连接对象
module.exports = db
    // 向外共享db数据库连接对象