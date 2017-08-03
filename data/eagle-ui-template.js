conn = new Mongo('localhost:27117')
db = conn.getDB('birdnest')
db.createCollection('eagleUITemplate')
db.eagleUITemplate.save({
    "_id" : "00",
    "_class" : "com.birdnest.model.template.EagleUITemplate",
    "name" : "管理平台界面模板",
    "pages" : [
        {
            "_id" : "home",
            "ncsViews" : [
                {
                    "_id" : "patientName",
                    "name" : "病人姓名",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "SickName",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "age",
                    "name" : "年龄",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "Age",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "sex",
                    "name" : "性别",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "Sex",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "sickNo",
                    "name" : "住院号",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "SickNO",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "chargeClass",
                    "name" : "费用类别",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "ChargeClass",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "nursingLevel",
                    "name" : "护理等级",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "NurLevel",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "foodStyle",
                    "name" : "饮食方式",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "EatMode",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "hospitalizationDate",
                    "name" : "住院日期",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "ruyuanRQ",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "diagnosis",
                    "name" : "诊断",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "diagnosis",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "doctor1",
                    "name" : "科主任",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "科主任",
                        "dynamicTypeId" : "02",
                        "dynamicFieldId" : "name",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "doctor2",
                    "name" : "责任医生",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "主诊医生",
                        "dynamicTypeId" : "02",
                        "dynamicFieldId" : "name",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "nurse1",
                    "name" : "主管护士",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "护士长",
                        "dynamicTypeId" : "03",
                        "dynamicFieldId" : "name",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "nurse2",
                    "name" : "责任护士",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 0,
                    "layout_height" : 0,
                    "layout_params" : {},
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "责任护士",
                        "dynamicTypeId" : "03",
                        "dynamicFieldId" : "name",
                        "dynamicFieldClass" : "字符串"
                    }
                }
            ]
        }
    ],
    "ImageWidth" : 0,
    "ImageHeight" : 0
})

db.eagleUITemplate.save({
    "_id" : "PROJECT-9E57DCA87F7B",
    "_class" : "com.birdnest.model.template.EagleUITemplate",
    "name" : "BedModel",
    "pages" : [
        {
            "_id" : "DOCUMENT-00012",
            "name" : "page_home",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00195",
                    "name" : "panel1",
                    "tag" : "panel",
                    "layout_x" : 329,
                    "layout_y" : 10,
                    "layout_width" : 579,
                    "layout_height" : 252,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "radius" : "0",
                        "bgcolor_extra" : "#000000"
                    }
                },
                {
                    "_id" : "CONTROL-00196",
                    "name" : "txtNurLevel",
                    "tag" : "text",
                    "layout_x" : 10,
                    "layout_y" : 270,
                    "layout_width" : 222,
                    "layout_height" : 62,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "text" : "护理等级:",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00197",
                    "name" : "txtEatMode",
                    "tag" : "text",
                    "layout_x" : 10,
                    "layout_y" : 333,
                    "layout_width" : 222,
                    "layout_height" : 63,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "text" : "饮食方式:",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00198",
                    "name" : "txt_describe",
                    "tag" : "text",
                    "layout_x" : 10,
                    "layout_y" : 397,
                    "layout_width" : 222,
                    "layout_height" : 63,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "text" : "过敏药物",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00202",
                    "name" : "txtYaChuang",
                    "tag" : "text",
                    "layout_x" : 469,
                    "layout_y" : 270,
                    "layout_width" : 223,
                    "layout_height" : 62,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "text" : "防 压 疮:",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "",
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00203",
                    "name" : "dataGuomin1",
                    "tag" : "text",
                    "layout_x" : 238,
                    "layout_y" : 467,
                    "layout_width" : 225,
                    "layout_height" : 59,
                    "bgcolor" : "#E72D60",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00204",
                    "name" : "dataGuomin2",
                    "tag" : "text",
                    "layout_x" : 238,
                    "layout_y" : 527,
                    "layout_width" : 225,
                    "layout_height" : 58,
                    "bgcolor" : "#E72D60",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00207",
                    "name" : "panel2",
                    "tag" : "panel",
                    "layout_x" : 10,
                    "layout_y" : 10,
                    "layout_width" : 314,
                    "layout_height" : 252,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "radius" : "0",
                        "bgcolor_extra" : "#000000"
                    }
                },
                {
                    "_id" : "CONTROL-00208",
                    "name" : "dataYaChuang",
                    "tag" : "text",
                    "layout_x" : 697,
                    "layout_y" : 270,
                    "layout_width" : 212,
                    "layout_height" : 62,
                    "bgcolor" : "#FF8106",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#FF0000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "PressScore",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00210",
                    "name" : "menu",
                    "tag" : "menu",
                    "layout_x" : 914,
                    "layout_y" : 11,
                    "layout_width" : 103,
                    "layout_height" : 293,
                    "background" : "",
                    "layout_params" : {
                        "menu_items" : "[{\"Image\":\"files/template/BedModel/images/img_bedcard.png\",\"Text\":\"床卡\",\"TextImageAlign\":0,\"Action\":\"LOAD_PAGE[DOCUMENT-00012]\"},{\"Image\":\"files/template/BedModel/images/img_notice.png\",\"Text\":\"提醒\",\"TextImageAlign\":1,\"Action\":\"LOAD_PAGE[DOCUMENT-00002]\"},{\"Image\":\"files/template/BedModel/images/img_menu.png\",\"Text\":\"导航\",\"TextImageAlign\":1,\"Action\":\"LOAD_PAGE[DOCUMENT-00003]\"}]",
                        "menu_selection_style" : "Square",
                        "fore_color" : "#888EFE",
                        "selected_color" : "#05BAFF",
                        "font_color" : "#FFFFFFFF"
                    },
                    "action" : ""
                },
                {
                    "_id" : "CONTROL-00256",
                    "name" : "colorNurlevel",
                    "tag" : "panel",
                    "layout_x" : 238,
                    "layout_y" : 270,
                    "layout_width" : 225,
                    "layout_height" : 62,
                    "bgcolor" : "#FF8106",
                    "layout_params" : {
                        "radius" : "0",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "NurLevel",
                        "dynamicFieldClass" : "颜色"
                    }
                },
                {
                    "_id" : "CONTROL-00212",
                    "name" : "action2",
                    "tag" : "multiaction",
                    "layout_x" : 914,
                    "layout_y" : 450,
                    "layout_width" : 103,
                    "layout_height" : 137,
                    "bgcolor" : "#F93529",
                    "layout_params" : {
                        "multiaction_items" : "[{\"Action\":\"REINFORCE[]\",\"Text\":\"增援\"},{\"Action\":\"CANCEL_REINFORCE[]\",\"Text\":\"取消\\\\n增援\"}]",
                        "text" : "增援",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 27.75",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "10",
                        "line" : "2"
                    },
                    "action" : ""
                },
                {
                    "_id" : "CONTROL-00213",
                    "name" : "dataDieDao",
                    "tag" : "text",
                    "layout_x" : 697,
                    "layout_y" : 332,
                    "layout_width" : 212,
                    "layout_height" : 63,
                    "bgcolor" : "#FF8106",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#FF0000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "FilldownScore",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00215",
                    "name" : "txtDieDao",
                    "tag" : "text",
                    "layout_x" : 469,
                    "layout_y" : 333,
                    "layout_width" : 223,
                    "layout_height" : 63,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "text" : "防 跌 倒:",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00216",
                    "name" : "txtRuyuanDays",
                    "tag" : "text",
                    "layout_x" : 469,
                    "layout_y" : 467,
                    "layout_width" : 222,
                    "layout_height" : 59,
                    "bgcolor" : "#4F92FA",
                    "layout_params" : {
                        "text" : "入院天数:",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00217",
                    "name" : "dataSickName",
                    "tag" : "text",
                    "layout_x" : 341,
                    "layout_y" : 26,
                    "layout_width" : 562,
                    "layout_height" : 142,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 120",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "SickName",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00218",
                    "name" : "dataSex",
                    "tag" : "text",
                    "layout_x" : 399,
                    "layout_y" : 197,
                    "layout_width" : 58,
                    "layout_height" : 43,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "Sex",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00219",
                    "name" : "dataAge",
                    "tag" : "text",
                    "layout_x" : 502,
                    "layout_y" : 197,
                    "layout_width" : 88,
                    "layout_height" : 43,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "3",
                        "gravityY" : "17",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "Age",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00221",
                    "name" : "dataSickNo",
                    "tag" : "text",
                    "layout_x" : 611,
                    "layout_y" : 197,
                    "layout_width" : 230,
                    "layout_height" : 43,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "3",
                        "gravityY" : "17",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "SickNO",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00231",
                    "name" : "dataBedNo",
                    "tag" : "text",
                    "layout_x" : 26,
                    "layout_y" : 10,
                    "layout_width" : 277,
                    "layout_height" : 228,
                    "bgcolor" : "#04A3FE",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 200.25",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "设备信息",
                        "dynamicTypeId" : "05",
                        "dynamicFieldId" : "bedIndex",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00238",
                    "name" : "chuzhi",
                    "tag" : "multiaction",
                    "layout_x" : 914,
                    "layout_y" : 308,
                    "layout_width" : 103,
                    "layout_height" : 137,
                    "bgcolor" : "#F3982F",
                    "layout_params" : {
                        "multiaction_items" : "[{\"Action\":\"DISPOSAL[]\",\"Text\":\"处置\"},{\"Action\":\"CANCEL_DISPOSAL[]\",\"Text\":\"取消\\\\n处置\"}]",
                        "text" : "处置",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 27.75",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "10",
                        "line" : "2"
                    }
                },
                {
                    "_id" : "CONTROL-00244",
                    "name" : "dataNurlevel",
                    "tag" : "text",
                    "layout_x" : 238,
                    "layout_y" : 270,
                    "layout_width" : 225,
                    "layout_height" : 62,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "NurLevel",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00245",
                    "name" : "dataEatMode",
                    "tag" : "text",
                    "layout_x" : 238,
                    "layout_y" : 333,
                    "layout_width" : 225,
                    "layout_height" : 63,
                    "bgcolor" : "#FF8106",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "EatMode",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00246",
                    "name" : "dataGuoMin",
                    "tag" : "text",
                    "layout_x" : 238,
                    "layout_y" : 397,
                    "layout_width" : 670,
                    "layout_height" : 63,
                    "bgcolor" : "#FF8106",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "3",
                        "gravityY" : "17",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#FF0000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "guomin",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00251",
                    "name" : "countDown",
                    "tag" : "countdown",
                    "layout_x" : 10,
                    "layout_y" : 466,
                    "layout_width" : 222,
                    "layout_height" : 119,
                    "bgcolor" : "#F9342B",
                    "layout_params" : {
                        "text" : "倒计时",
                        "textSize" : " 16"
                    }
                },
                {
                    "_id" : "CONTROL-00253",
                    "name" : "dataOther1",
                    "tag" : "text",
                    "layout_x" : 469,
                    "layout_y" : 527,
                    "layout_width" : 222,
                    "layout_height" : 58,
                    "bgcolor" : "#4F92FA",
                    "layout_params" : {
                        "text" : "隔离方式:",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "",
                        "dynamicTypeId" : "",
                        "dynamicFieldId" : "",
                        "dynamicFieldClass" : ""
                    }
                },
                {
                    "_id" : "CONTROL-00254",
                    "name" : "dataOther2",
                    "tag" : "text",
                    "layout_x" : 696,
                    "layout_y" : 527,
                    "layout_width" : 212,
                    "layout_height" : 59,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "Isolation_Id",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00255",
                    "name" : "dataOther3",
                    "tag" : "text",
                    "layout_x" : 696,
                    "layout_y" : 467,
                    "layout_width" : 212,
                    "layout_height" : 59,
                    "bgcolor" : "#4C7BF8",
                    "layout_params" : {
                        "text" : "",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "RuyuanDays",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00258",
                    "name" : "wenjuanbeijing",
                    "tag" : "image",
                    "layout_x" : 820,
                    "layout_y" : 15,
                    "layout_width" : 80,
                    "layout_height" : 60,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "HasQR",
                        "dynamicFieldClass" : "颜色"
                    }
                },
                {
                    "_id" : "CONTROL-00257",
                    "name" : "wenjuanpingce",
                    "tag" : "text",
                    "layout_x" : 820,
                    "layout_y" : 15,
                    "layout_width" : 80,
                    "layout_height" : 60,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "text" : "文本",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 16",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "0",
                        "textFormat" : "",
                        "bgcolor_extra" : "#00FFFFFF"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "HasQR",
                        "dynamicFieldClass" : "字符串"
                    }
                }
            ],
            "bgColor" : "#1E3F90"
        },
        {
            "_id" : "DOCUMENT-00002",
            "name" : "page_notice",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00147",
                    "name" : "list_notice",
                    "tag" : "listpanel",
                    "layout_x" : 0,
                    "layout_y" : 1,
                    "layout_width" : 890,
                    "layout_height" : 600,
                    "bgcolor" : "#2957C7",
                    "layout_params" : {
                        "text" : "{\"费用提醒\":[]}",
                        "menu_bg_color" : "#DAF5FE",
                        "menu_font_color" : "#A9B8BD",
                        "menu_selected_color" : "#5DCBFF",
                        "list_bg_color" : "#05BAFF",
                        "list_font_color" : "#FFFFFFFF"
                    },
                    "action" : "",
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "提醒",
                        "dynamicTypeId" : "04",
                        "dynamicFieldId" : "data",
                        "dynamicFieldClass" : "字符串"
                    }
                }
            ],
            "bgColor" : "#2957C7"
        },
        {
            "_id" : "DOCUMENT-00003",
            "name" : "page_daohang",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00048",
                    "name" : "panel1",
                    "tag" : "panel",
                    "layout_x" : 10,
                    "layout_y" : 10,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#04C7E3",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00005]"
                },
                {
                    "_id" : "CONTROL-00047",
                    "name" : "txtZhuYuanXuZhi",
                    "tag" : "text",
                    "layout_x" : 74,
                    "layout_y" : 20,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#04C7E3",
                    "layout_params" : {
                        "text" : "住院须知",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00005]"
                },
                {
                    "_id" : "CONTROL-00049",
                    "name" : "imgZhuYuanXuZhi",
                    "tag" : "image",
                    "layout_x" : 106,
                    "layout_y" : 87,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/zhuyuanxuzhi.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/zhuyuanxuzhi.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00005]"
                },
                {
                    "_id" : "CONTROL-00050",
                    "name" : "panel2",
                    "tag" : "panel",
                    "layout_x" : 312,
                    "layout_y" : 10,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#338AFE",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00004]"
                },
                {
                    "_id" : "CONTROL-00051",
                    "name" : "panel3",
                    "tag" : "panel",
                    "layout_x" : 616,
                    "layout_y" : 10,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#E9C100",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00009]"
                },
                {
                    "_id" : "CONTROL-00052",
                    "name" : "panel4",
                    "tag" : "panel",
                    "layout_x" : 312,
                    "layout_y" : 206,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#ACC523",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00006]"
                },
                {
                    "_id" : "CONTROL-00053",
                    "name" : "panel5",
                    "tag" : "panel",
                    "layout_x" : 10,
                    "layout_y" : 206,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#E9C100",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00007]"
                },
                {
                    "_id" : "CONTROL-00054",
                    "name" : "panel6",
                    "tag" : "panel",
                    "layout_x" : 616,
                    "layout_y" : 206,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#218FDC",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00008]"
                },
                {
                    "_id" : "CONTROL-00055",
                    "name" : "panel7",
                    "tag" : "panel",
                    "layout_x" : 10,
                    "layout_y" : 399,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#FC780C",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-000010]"
                },
                {
                    "_id" : "CONTROL-00057",
                    "name" : "panel9",
                    "tag" : "panel",
                    "layout_x" : 313,
                    "layout_y" : 400,
                    "layout_width" : 293,
                    "layout_height" : 186,
                    "bgcolor" : "#11DAB8",
                    "layout_params" : {
                        "radius" : "15",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : ""
                },
                {
                    "_id" : "CONTROL-00061",
                    "name" : "txtXiangGuanZhenLiao",
                    "tag" : "text",
                    "layout_x" : 371,
                    "layout_y" : 22,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#338AFE",
                    "layout_params" : {
                        "text" : "相关诊疗",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00004]"
                },
                {
                    "_id" : "CONTROL-00062",
                    "name" : "txtFeiYong",
                    "tag" : "text",
                    "layout_x" : 686,
                    "layout_y" : 23,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#E9C100",
                    "layout_params" : {
                        "text" : "我的费用",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00009]"
                },
                {
                    "_id" : "CONTROL-00063",
                    "name" : "txtXuanJiao",
                    "tag" : "text",
                    "layout_x" : 374,
                    "layout_y" : 220,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#ACC523",
                    "layout_params" : {
                        "text" : "知识宣教",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00006]"
                },
                {
                    "_id" : "CONTROL-00064",
                    "name" : "txtManYIDu",
                    "tag" : "text",
                    "layout_x" : 75,
                    "layout_y" : 227,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#E9C100",
                    "layout_params" : {
                        "text" : "满意度",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00007]"
                },
                {
                    "_id" : "CONTROL-00065",
                    "name" : "txtChuYuanLiuCheng",
                    "tag" : "text",
                    "layout_x" : 682,
                    "layout_y" : 218,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#218FDC",
                    "layout_params" : {
                        "text" : "出院流程",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00008]"
                },
                {
                    "_id" : "CONTROL-00066",
                    "name" : "txtKeShiJianJie",
                    "tag" : "text",
                    "layout_x" : 64,
                    "layout_y" : 414,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#FC780C",
                    "layout_params" : {
                        "text" : "科室简介",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00010]"
                },
                {
                    "_id" : "CONTROL-00069",
                    "name" : "txtSystemConfig",
                    "tag" : "text",
                    "layout_x" : 378,
                    "layout_y" : 421,
                    "layout_width" : 160,
                    "layout_height" : 45,
                    "bgcolor" : "#11DAB8",
                    "layout_params" : {
                        "text" : "系统设置",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 40",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "0",
                        "line" : "1",
                        "textFormat" : "",
                        "bgcolor_extra" : "#000000"
                    },
                    "action" : "DISPLAY_REGISTER[]"
                },
                {
                    "_id" : "CONTROL-00072",
                    "name" : "imgXiangGuanZhenLiao",
                    "tag" : "image",
                    "layout_x" : 406,
                    "layout_y" : 84,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/xiangguanzhengliao.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/xiangguanzhengliao.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00004]"
                },
                {
                    "_id" : "CONTROL-00073",
                    "name" : "imgFeiYong",
                    "tag" : "image",
                    "layout_x" : 726,
                    "layout_y" : 84,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/wodefeiyon.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/wodefeiyon.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00009]"
                },
                {
                    "_id" : "CONTROL-00074",
                    "name" : "imgXuanJiao",
                    "tag" : "image",
                    "layout_x" : 413,
                    "layout_y" : 283,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/zhishixuanjiao.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/zhishixuanjiao.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00006]"
                },
                {
                    "_id" : "CONTROL-00075",
                    "name" : "imgManYiDu",
                    "tag" : "image",
                    "layout_x" : 117,
                    "layout_y" : 289,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/manyidu.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/manyidu.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00007]"
                },
                {
                    "_id" : "CONTROL-00076",
                    "name" : "imgChuYuanLiuCheng",
                    "tag" : "image",
                    "layout_x" : 719,
                    "layout_y" : 282,
                    "layout_width" : 102,
                    "layout_height" : 94,
                    "background" : "files/template/BedModel/images/chuyuanliucheng.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/chuyuanliucheng.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00008]"
                },
                {
                    "_id" : "CONTROL-00077",
                    "name" : "imgKeShiJianJie",
                    "tag" : "image",
                    "layout_x" : 96,
                    "layout_y" : 477,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/keshijianjie.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/keshijianjie.png"
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00010]"
                },
                {
                    "_id" : "CONTROL-00080",
                    "name" : "imgSystemConfig",
                    "tag" : "image",
                    "layout_x" : 413,
                    "layout_y" : 481,
                    "layout_width" : 88,
                    "layout_height" : 88,
                    "background" : "files/template/BedModel/images/set_img.png",
                    "layout_params" : {
                        "image" : "files/template/BedModel/images/set_img.png"
                    },
                    "action" : "DISPLAY_REGISTER[]"
                }
            ],
            "bgColor" : "#1E3F90"
        },
        {
            "_id" : "DOCUMENT-00004",
            "name" : "相关诊疗",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00157",
                    "name" : "edu_zhengliao",
                    "tag" : "edu",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#DFE0E2",
                    "layout_params" : {
                        "text" : "相关诊疗",
                        "textSize" : " 32",
                        "url" : "/rest/contenttype/04/values/"
                    }
                },
                {
                    "_id" : "CONTROL-00158",
                    "name" : "img_back",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#DFE0E2"
        },
        {
            "_id" : "DOCUMENT-00005",
            "name" : "住院须知",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00155",
                    "name" : "edu_zhuyuan",
                    "tag" : "edu",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#DFE0E2",
                    "layout_params" : {
                        "text" : "住院须知",
                        "textSize" : " 32",
                        "url" : "/rest/contenttype/03/values/"
                    }
                },
                {
                    "_id" : "CONTROL-00156",
                    "name" : "img_back",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#DFE0E2"
        },
        {
            "_id" : "DOCUMENT-00006",
            "name" : "知识宣教",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00149",
                    "name" : "edu_xuanjiao",
                    "tag" : "edu",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#DFE0E2",
                    "layout_params" : {
                        "text" : "知识宣教",
                        "textSize" : " 36",
                        "url" : "/rest/contenttype/02/values/"
                    }
                },
                {
                    "_id" : "CONTROL-00153",
                    "name" : "img_back",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#DFE0E2"
        },
        {
            "_id" : "DOCUMENT-00007",
            "name" : "满意度",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00177",
                    "name" : "wenjuandiaocha",
                    "tag" : "question",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#00FFFF",
                    "layout_params" : {
                        "text" : "满意度调查",
                        "textColor" : "#000000",
                        "textSize" : " 36",
                        "gravityX" : "3",
                        "gravityY" : "17",
                        "url" : "/rest/questionnaires/满意度调查/device/",
                        "contentBgColor" : "#FFFFFF",
                        "titleForeColor" : "#FFFFFF",
                        "optionForeColor" : "#FFFFFF",
                        "titleTextSize" : " 36",
                        "optionTextSize" : " 36"
                    }
                },
                {
                    "_id" : "CONTROL-00179",
                    "name" : "wenjuan_fanhui",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#FCFFEF"
        },
        {
            "_id" : "DOCUMENT-00008",
            "name" : "出院流程",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00159",
                    "name" : "edu_chuyuan",
                    "tag" : "edu",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#DFE0E2",
                    "layout_params" : {
                        "text" : "出院流程",
                        "textSize" : " 36",
                        "url" : "/rest/contenttype/05/values/"
                    }
                },
                {
                    "_id" : "CONTROL-00161",
                    "name" : "img_back",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#DFE0E2"
        },
        {
            "_id" : "DOCUMENT-00009",
            "name" : "我的费用",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00165",
                    "name" : "feiyong",
                    "tag" : "cost",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#00FFFF",
                    "layout_params" : {
                        "text" : "我的费用",
                        "textColor" : "#FFFFFF",
                        "textSize" : " 36",
                        "gravityX" : "3",
                        "gravityY" : "17",
                        "url" : "/rest/costs/",
                        "contentBgColor" : "#800080",
                        "contentForeColor" : "#000000",
                        "contentTextSize" : " 36"
                    }
                },
                {
                    "_id" : "CONTROL-00171",
                    "name" : "cost_type",
                    "tag" : "text",
                    "layout_x" : 11,
                    "layout_y" : 510,
                    "layout_width" : 246,
                    "layout_height" : 80,
                    "bgcolor" : "#8DBD07",
                    "layout_params" : {
                        "text" : "类别",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 26.25",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "10",
                        "line" : "1",
                        "textFormat" : "类别：%s",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "ChargeClass",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00173",
                    "name" : "cost_total",
                    "tag" : "text",
                    "layout_x" : 266,
                    "layout_y" : 510,
                    "layout_width" : 246,
                    "layout_height" : 80,
                    "bgcolor" : "#2984DF",
                    "layout_params" : {
                        "text" : "总额",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 26.25",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "10",
                        "line" : "1",
                        "textFormat" : "总额:%s",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "TOTAL_COSTS",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00174",
                    "name" : "cost_yue",
                    "tag" : "text",
                    "layout_x" : 522,
                    "layout_y" : 510,
                    "layout_width" : 246,
                    "layout_height" : 80,
                    "bgcolor" : "#FE9901",
                    "layout_params" : {
                        "text" : "余额",
                        "textColor" : "#FFFFFFFF",
                        "textSize" : " 26.25",
                        "gravityX" : "1",
                        "gravityY" : "16",
                        "radius" : "10",
                        "line" : "1",
                        "textFormat" : "余额:%s",
                        "bgcolor_extra" : "#000000"
                    },
                    "viewDataSource" : {
                        "dynamicTypeInstanceName" : "病人",
                        "dynamicTypeId" : "01",
                        "dynamicFieldId" : "Balance",
                        "dynamicFieldClass" : "字符串"
                    }
                },
                {
                    "_id" : "CONTROL-00175",
                    "name" : "cost_back",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#DFE0E2"
        },
        {
            "_id" : "DOCUMENT-00010",
            "name" : "科室简介",
            "ncsViews" : [
                {
                    "_id" : "CONTROL-00163",
                    "name" : "edu_keshijianjie",
                    "tag" : "edu",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 1024,
                    "layout_height" : 600,
                    "bgcolor" : "#DFE0E2",
                    "layout_params" : {
                        "text" : "科室简介",
                        "textSize" : " 36",
                        "url" : "/rest/contenttype/01/values/"
                    }
                },
                {
                    "_id" : "CONTROL-00164",
                    "name" : "img_back",
                    "tag" : "image",
                    "layout_x" : 0,
                    "layout_y" : 0,
                    "layout_width" : 120,
                    "layout_height" : 100,
                    "bgcolor" : "#00FFFFFF",
                    "layout_params" : {
                        "image" : null
                    },
                    "action" : "LOAD_PAGE[DOCUMENT-00003]"
                }
            ],
            "bgColor" : "#DFE0E2"
        },
        {
            "_id" : "DOCUMENT-00011",
            "name" : "专家门诊",
            "ncsViews" : [],
            "bgColor" : "#DFE0E2"
        }
    ],
    "userControls" : [],
    "ImageWidth" : 0,
    "ImageHeight" : 0
})