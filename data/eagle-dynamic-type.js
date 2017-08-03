conn = new Mongo('localhost:27117')
db = conn.getDB('birdnest')
db.createCollection('eagleDynamicType')
db.eagleDynamicType.save({
    "_id" : "02",
    "_class" : "com.birdnest.model.datasource.EagleDynamicType",
    "name" : "医生",
    "tag" : "医生",
    "fields" : [
        {
            "_id" : "id",
            "name" : "医生id",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : true
        },
        {
            "_id" : "name",
            "name" : "医生姓名",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "photo",
            "name" : "照片文件名",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "departmentId",
            "name" : "科室编号",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        }
    ],
    "reserved" : true
})

db.eagleDynamicType.save({
    "_id" : "03",
    "_class" : "com.birdnest.model.datasource.EagleDynamicType",
    "name" : "护士",
    "tag" : "护士",
    "fields" : [
        {
            "_id" : "id",
            "name" : "护士id",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : true
        },
        {
            "_id" : "name",
            "name" : "护士姓名",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "photo",
            "name" : "照片文件名",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "departmentId",
            "name" : "科室编号",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        }
    ],
    "reserved" : true
})

db.eagleDynamicType.save({
    "_id" : "04",
    "_class" : "com.birdnest.model.datasource.EagleDynamicType",
    "name" : "提醒",
    "tag" : "提醒",
    "fields" : [
        {
            "_id" : "id",
            "name" : "id",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : true
        },
        {
            "_id" : "data",
            "name" : "数据",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        }
    ],
    "reserved" : true
})

db.eagleDynamicType.save({
    "_id" : "01",
    "_class" : "com.birdnest.model.datasource.EagleDynamicType",
    "name" : "病人",
    "tag" : "病人",
    "fields" : [
        {
            "_id" : "SickName",
            "name" : "病人姓名",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "SickNO",
            "name" : "病人住院号",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : true
        },
        {
            "_id" : "Sex",
            "name" : "性别",
            "staticTypeId" : "08",
            "staticTypeCategory" : "字典",
            "primary" : false
        },
        {
            "_id" : "Age",
            "name" : "年龄",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "NurLevel",
            "name" : "护理等级",
            "staticTypeId" : "07",
            "staticTypeCategory" : "字典",
            "primary" : false
        },
        {
            "_id" : "EatMode",
            "name" : "饮食方式",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "Jlfs",
            "name" : "计量方式",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "Isolation_Id",
            "name" : "隔离方式",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "ruyuanRQ",
            "name" : "入院日期",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "ChargeClass",
            "name" : "费用类别",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "diagnosis",
            "name" : "诊断",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "InfectFlag",
            "name" : "感染",
            "staticTypeId" : "09",
            "staticTypeCategory" : "字典",
            "primary" : false
        },
        {
            "_id" : "guomin",
            "name" : "过敏",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "OperationName",
            "name" : "手术名称",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "PressScore",
            "name" : "防压疮",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "FilldownScore",
            "name" : "高危跌倒",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "TOTAL_COSTS",
            "name" : "总额",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "Balance",
            "name" : "余额",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "RuyuanDays",
            "name" : "入院天数",
            "staticTypeId" : "string",
            "staticTypeCategory" : "字符串",
            "primary" : false
        },
        {
            "_id" : "HasQR",
            "name" : "问卷评测",
            "staticTypeId" : "13",
            "staticTypeCategory" : "字典",
            "primary" : false
        }
    ],
    "loader" : "default",
    "binder" : "病人信息绑定",
    "reserved" : false
})