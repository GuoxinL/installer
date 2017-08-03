conn = new Mongo('localhost:27117')
db = conn.getDB('birdnest')
db.createCollection('eagleEnumStaticType')
db.eagleEnumStaticType.save({
    "_id" : "01",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "费用类别",
    "items" : [
        {
            "_id" : "00",
            "name" : "无"
        },
        {
            "_id" : "01",
            "name" : "免费"
        },
        {
            "_id" : "02",
            "name" : "自费"
        },
        {
            "_id" : "03",
            "name" : "工费"
        },
        {
            "_id" : "04",
            "name" : "医保"
        },
        {
            "_id" : "05",
            "name" : "军队医改"
        },
        {
            "_id" : "06",
            "name" : "其他"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "04",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "计量方式",
    "items" : [
        {
            "_id" : "01",
            "name" : "记尿量"
        },
        {
            "_id" : "02",
            "name" : "记出入量"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "05",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "隔离方式",
    "items" : [
        {
            "_id" : "01",
            "name" : "空气隔离"
        },
        {
            "_id" : "02",
            "name" : "飞沫隔离"
        },
        {
            "_id" : "03",
            "name" : "接触隔离"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "06",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "过敏",
    "items" : [
        {
            "_id" : "海鲜过敏",
            "name" : "海鲜过敏"
        },
        {
            "_id" : "花粉过敏",
            "name" : "花粉过敏"
        },
        {
            "_id" : "青霉素过敏",
            "name" : "青霉素过敏"
        },
        {
            "_id" : "头孢类过敏",
            "name" : "头孢类过敏"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "08",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "性别",
    "items" : [
        {
            "_id" : "空",
            "name" : ""
        },
        {
            "_id" : "男",
            "name" : "男"
        },
        {
            "_id" : "女",
            "name" : "女"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "07",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "护理等级",
    "items" : [
        {
            "_id" : "空",
            "name" : " ",
            "icon" : "/files/photo/9d/9d229eeb-38ca-46e2-9a4f-4736651338f1.png",
            "bgColor" : "#29b5ce"
        },
        {
            "_id" : "一级护理",
            "name" : "一级护理",
            "icon" : "/files/photo/9d/9d229eeb-38ca-46e2-9a4f-4736651338f1.png",
            "bgColor" : "#b12524"
        },
        {
            "_id" : "二级护理",
            "name" : "二级护理",
            "icon" : "/files/icon/df/df0f4e0f-0f08-4425-8e95-8d931dba31f9.png",
            "bgColor" : "#ffe10d"
        },
        {
            "_id" : "三级护理",
            "name" : "三级护理",
            "icon" : "/files/icon/49/49bf1fab-32ad-4f07-8912-33e197df3cb9.png",
            "bgColor" : "#87ac38"
        },
        {
            "_id" : "特级护理",
            "name" : "病危",
            "icon" : "",
            "bgColor" : "#2e2d29"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "09",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "感染",
    "items" : [
        {
            "_id" : "00",
            "name" : "",
            "icon" : "",
            "bgColor" : "#ebe1e1"
        },
        {
            "_id" : "无",
            "name" : "无",
            "icon" : "",
            "bgColor" : "#ebe1e1"
        },
        {
            "_id" : "有",
            "name" : "有",
            "icon" : "/files/photo/b7/b7adb55d-79f1-4ee9-9057-eb04999d2dce.png",
            "bgColor" : "#e58ce2"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "03",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "饮食方式",
    "items" : [
        {
            "_id" : "禁食水",
            "name" : "禁食水"
        },
        {
            "_id" : "多饮水",
            "name" : "多饮水"
        },
        {
            "_id" : "糖尿病饮食",
            "name" : "糖尿病饮食"
        },
        {
            "_id" : "流质饮食",
            "name" : "流质饮食"
        },
        {
            "_id" : "低盐低脂饮食",
            "name" : "低盐低脂饮食"
        },
        {
            "_id" : "低盐低脂饮食饮方式饮食",
            "name" : "低盐低脂饮食饮方式饮食",
            "icon" : "",
            "bgColor" : ""
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "10",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "注意事项",
    "items" : [
        {
            "_id" : "防跌倒",
            "name" : "防跌倒",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "无",
            "name" : "无",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "防坠床",
            "name" : "防坠床",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "注意血糖",
            "name" : "注意血糖",
            "icon" : "",
            "bgColor" : ""
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "02",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "病情",
    "items" : [
        {
            "_id" : "一般",
            "name" : "一般",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "病重",
            "name" : "病重",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "病危",
            "name" : "病危",
            "icon" : "",
            "bgColor" : ""
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "11",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "防压疮",
    "items" : [
        {
            "_id" : "空",
            "name" : " ",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "防压疮",
            "name" : "防压疮",
            "icon" : "",
            "bgColor" : "#f93529"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "12",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "防跌倒",
    "items" : [
        {
            "_id" : "空",
            "name" : " ",
            "icon" : "",
            "bgColor" : ""
        },
        {
            "_id" : "防跌倒",
            "name" : "防跌倒",
            "icon" : "",
            "bgColor" : "#f93529"
        }
    ]
})
db.eagleEnumStaticType.save({
    "_id" : "13",
    "_class" : "com.birdnest.model.datasource.EagleEnumStaticType",
    "name" : "问卷评测",
    "items" : [
        {
            "_id" : "空",
            "name" : "空",
            "icon" : "",
            "bgColor" : "#4c7bf8"
        },
        {
            "_id" : "已评测",
            "name" : "已评测",
            "icon" : "",
            "bgColor" : "#f3982f"
        },
        {
            "_id" : "未评测",
            "name" : "未评测",
            "icon" : "",
            "bgColor" : "#4c7bf8"
        }
    ]
})
