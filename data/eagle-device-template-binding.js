conn = new Mongo('localhost:27117')
db = conn.getDB('birdnest')
db.createCollection('eagleDeviceTemplateBinding')
db.eagleDeviceTemplateBinding.save({
    "_id" : ObjectId("585379ab5c328fb716fb5075"),
    "_class" : "com.birdnest.model.template.EagleDeviceTemplateBinding",
    "deviceType" : "room",
    "departmentId" : "",
    "uiTemplateId" : "01",
    "dataTemplateId" : "02"
})
db.eagleDeviceTemplateBinding.save({
    "_id" : ObjectId("586cb307d0e644eae3c936bd"),
    "_class" : "com.birdnest.model.template.EagleDeviceTemplateBinding",
    "deviceType" : "bed",
    "departmentId" : "",
    "uiTemplateId" : "PROJECT-9E57DCA87F7B",
    "dataTemplateId" : "01"
})
