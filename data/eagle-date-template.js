conn = new Mongo('localhost:27117')
db = conn.getDB('birdnest')
db.createCollection('eagleDataTemplate')
db.eagleDataTemplate.save({
    "_id" : "01",
    "_class" : "com.birdnest.model.template.EagleDataTemplate",
    "name" : "床头模板",
    "dataWrappers" : {
        "病人" : "01",
        "责任护士" : "03",
        "设备信息" : "05",
        "提醒" : "04",
        "费用" : "06"
    }
})

db.eagleDataTemplate.save({
    "_id" : "02",
    "_class" : "com.birdnest.model.template.EagleDataTemplate",
    "name" : "门口模板",
    "dataWrappers" : {
        "科主任" : "02",
        "护士长" : "03",
        "主诊医生" : "02",
        "责任护士" : "03",
        "设备信息" : "05"
    }
})