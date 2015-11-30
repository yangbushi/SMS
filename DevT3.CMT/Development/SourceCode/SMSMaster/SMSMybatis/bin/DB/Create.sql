
drop table if exists HC_PERSON_MASTER_INDEX;

/*==============================================================*/
/* Table: HC_PERSON_MASTER_INDEX                                */
/*==============================================================*/
create table HC_PERSON_MASTER_INDEX
(
   identity_no          varchar(30) not null comment 'PK，平台内个人信息唯一标识，采用18位居民本人身份证号码（外国人采用国家编码+护照号码），居民个人信息唯一标识，由系统在建档时生成',
   create_hco_code      varchar(30) comment '建档机构代码',
   create_hco_name      varchar(140) comment '建档机构名称',
   create_user_name     varchar(120) comment '建档人员姓名',
   create_date_time     datetime comment '建档时间',
   status               int comment '人员状态：0-正常1-转入2-转出3-死亡',
   credit_flag          int comment '签约状态是否先看病后付费签约：0-未签约1-医保签约2-银联卡签约9-黑名单',
   credit_ammount       numeric(8,2) comment '先看病后付费信用额度',
   name                 varchar(60) comment '居民本人姓名',
   name_pinyin          varchar(30) comment '姓名拼音',
   sex                  varchar(1) comment '性别',
   date_of_birth        datetime comment '本人出生当天的公元纪年日期',
   country              varchar(3) comment '国籍',
   nation               varchar(2) comment '民族',
   marriage_status_name varchar(20) comment '婚姻状况名称',
   marriage_status_code varchar(1) comment '婚姻状况代码',
   education_level_code varchar(2) comment '文化程度代码',
   education_level_name varchar(20) comment '文化程度名称',
   political_status_code varchar(2) comment '政治面貌代码',
   political_status_name varchar(20) comment '政治面貌名称',
   job_type_code        varchar(3) comment '职业类别',
   job_status_code      varchar(2),
   job_type_name        varchar(50) comment '职业类别名称',
   job_status_name      varchar(20) comment '在职状态名称',
   phone_number         varchar(20) comment '电话号码',
   mobile_number        varchar(20) comment '手机号码',
   contact_name         varchar(60) comment '联系人姓名',
   contact_phone        varchar(20) comment '联系人电话',
   contact_mobile       varchar(20) comment '联系人手机',
   native_place         varchar(400) comment '籍贯名称',
   birth_place          varchar(400) comment '出生地址名称',
   home_address         varchar(400) comment '家庭地址名称',
   blood_type_abo       varchar(2) comment 'ABO血型',
   blood_type_rh        varchar(2) comment 'RH血型',
   child_birth          int comment '育子标志0-无 1-有',
   vaccination_history  int comment '免疫接种史标志0-无 1-有',
   allergy_history      int comment '过敏史标志0-无 1-有',
   allergy_desc         varchar(400) comment '过敏史描述',
   past_history         int comment '既往史标志0-无 1-有',
   past_desc            varchar(400) comment '既往史描述',
   genetic_history      int comment '遗传病史标志0-无 1-有',
   iving_habits         int comment '生活行为习惯标志0-无 1-有',
   hypertension         int comment '高血压标志0-无 1-有',
   hypertension_desc    varchar(400) comment '高血压描述',
   tumor                int comment '肿瘤标志0-无 1-有',
   tumor_desc           varchar(400) comment '肿瘤描述',
   asthma               int comment '哮喘标志0-无 1-有',
   heart_dease          int comment '心脏病标志0-无 1-有',
   cardio_cerebrovascular_disease int comment '心血管病标志0-无 1-有',
   epilepsy             int comment '癫痫病标志0-无 1-有',
   psychosis            int comment '精神疾病标志0-无 1-有',
   psychosis_desc       varchar(400) comment '精神疾病描述',
   coagulopathy         int comment '凝血紊乱标志0-无 1-有',
   diabetes             int comment '糖尿病标志0-无 1-有',
   diabetes_desc        varchar(400) comment '糖尿病描述',
   glaucoma             int comment '青光眼标志0-无 1-有',
   dialysis             int comment '透析标志0-无 1-有',
   transplant           int comment '器官移植标志0-无 1-有',
   organ_deficiency     int comment '器官缺失标志0-无 1-有',
   removable_prosthesis int comment '可装卸的义肢标志0-无 1-有',
   pacemaker            int comment '心脏起搏器标志0-无 1-有',
   medical_warnning     varchar(80) comment '其他医学警示',
   primary_hco_code     varchar(30) comment '基层医疗机构编码',
   primary_hco_name     varchar(140) comment '基层医疗机构名称',
   update_user_name     varchar(60) comment '更新人员姓名',
   update_date_time     datetime comment '更新时间'
);

alter table HC_PERSON_MASTER_INDEX comment '个人档案主索引';

alter table HC_PERSON_MASTER_INDEX
   add primary key (identity_no);


drop table if exists HC_个人照片;

/*==============================================================*/
/* Table: HC_个人照片                                               */
/*==============================================================*/
create table HC_个人照片
(
   identity_no          varchar(30) not null comment 'PK，平台内个人唯一标识',
   photo                longblob comment '照片'
);

alter table HC_个人照片 comment '个人照片';

alter table HC_个人照片
   add primary key (identity_no);



drop table if exists HC_PERSON_IDENTITY;

/*==============================================================*/
/* Table: HC_PERSON_IDENTITY                                    */
/*==============================================================*/
create table HC_PERSON_IDENTITY
(
   ID                   numeric(6,0) not null ,
   identity_no          varchar(30) not null comment '平台内个人唯一标识',
   id_type              int not null comment '证件类别：01-居民身份证02-港澳居民身份证03-居民户口簿04-护照05-军官证06-文职干部证07-士兵证08-驾驶执照09-残疾证10-医疗保险证99-其他标识100-健康档案号101-医保卡102-银行卡103-市民卡',
   id_no                varchar(60) not null comment '证件号码',
   issued_by            varchar(140) comment '签发单位',
   issue_date           datetime comment '签发日期',
   expire_date          datetime comment '证件有效期',
   primary key (ID)
);

alter table HC_PERSON_IDENTITY comment '个人身份识别表 ';



drop table if exists HC_PRESC_INDEX;

/*==============================================================*/
/* Table: HC_PRESC_INDEX                                        */
/*==============================================================*/
create table HC_PRESC_INDEX
(
   ID                   int(6) not null auto_increment,
   VISIT_ID             varchar(50),
   HIS_PRESC_ID         varchar(20) comment '机构内唯一标识一个处方主记',
   HIS_DEPT_CODE        varchar(30),
   HIS_DEPT_NAME        varchar(70),
   DOCTOR_NAME          varchar(30),
   PRESC_DATE_TIME      datetime,
   DRUG_TYPE_CODE       varchar(30) comment '西药、中成药、中药饮片、中药配方颗粒',
   DRUG_TYPE_NAME       varchar(30) comment '西药、中成药、中药饮片、中药配方颗粒',
   DOSE                 int comment '该字段仅用于中药饮片和配方颗粒，西药中成药默认为1',
   PRESC_TYPE_CODE      varchar(1) comment '普通处方、儿科处方、精一、精二、麻醉处方',
   PRESC_TYPE_NAME      varchar(20) comment '普通处方、儿科处方、精一、精二、麻醉处方',
   INFUSION_FLAG        varchar(1) comment '0 否 1 是',
   ANTIBIOTICS_FLAG     varchar(1) comment '0 否 1 是',
   CHARGE_FLAG          varchar(1) comment '0 否 1 是',
   TOTAL_AMOUNT         float(8),
   AMOUNT_BASIC_DRUG    float(8),
   AMOUNT_SUPPLEMENT_DRUG float(8),
   AMOUNT_OTHER_DRUG    float(8),
   BILL_NO              varchar(30),
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   primary key (ID)
);


drop table if exists HC_VISIT_MASTER_INDEX;

/*==============================================================*/
/* Table: HC_VISIT_MASTER_INDEX                                 */
/*==============================================================*/
create table HC_VISIT_MASTER_INDEX
(
   visit_id             int(6) not null auto_increment comment 'PK，内部流水号，连续自增，发生机构唯一标识该事件的编号；通过此信息可在院内唯一确定此行为并查到详明细；此序号由患者到院内就诊时，由院内系统向中心报到时，中心派发的唯一码；',
   identity_no          varchar(30) comment '平台内个人唯一标识',
   name                 varchar(60) comment '患者姓名',
   sex                  varchar(1) comment '患者性别',
   DATE_OF_BIRTH        datetime comment '患者生日',
   VISIT_START_DATE_TIME datetime comment '就诊开始日期',
   VISIT_END_DATE_TIME  datetime comment '就诊结束日期',
   visit_type           varchar(2) comment '就诊类别1-普通门诊2-急诊3-体检4-住院',
   visit_description    varchar(100) comment '就诊描述',
   visit_hco_code       varchar(30) comment '就诊机构编码',
   visit_hco_name       varchar(140) comment '就诊机构名称',
   his_visit_id         varchar(30) comment '就诊机构内唯一就诊号，例如，门诊号或住院号',
   his_dept_code        varchar(30) comment '就诊科室编码',
   his_dept_name        varchar(140) comment '就诊科室名称',
   insurance_type       varchar(2) comment '医疗费用支付方式1城镇职工基本医疗保险2城镇居民基本医疗保险3新型农村合作医疗4贫困救助5商业医疗保险6全公费7全自费9其他',
   pay_type             varchar(1) comment '支付类型0-普通正常流程1-医保先看病后付费2-银联卡先看病后付费',
   doctor_code          varchar(30) comment '接诊医生编码',
   doctor_name          varchar(60) comment '接诊医生姓名',
   DOCTOR_TEL           varchar(20) comment '接诊医生电话',
   DOCTOR_IDENTITY_CARD_NUM varchar(20) comment '接诊医生身份证号',
   archive_date         datetime comment '就诊确认数据的上报的公元纪年日期',
   upload_flag          int comment '上传标志0-未上传，1-已上传',
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   
   primary key (visit_id)
);

alter table HC_VISIT_MASTER_INDEX comment '就诊主索引';


drop table if exists HC_VISIT_BILL_INDEX;

/*==============================================================*/
/* Table: HC_VISIT_BILL_INDEX                                   */
/*==============================================================*/
create table HC_VISIT_BILL_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK，自增长序列号',
   VISIT_ID             varchar(50) not null comment '来自于就诊主索引',
   HIS_BILL_NO          varchar(30) not null comment '费用单据号码',
   INVOICE_DATE         datetime comment '发票日期',
   TOTAL_AMOUNT         float(12) comment '费用总额',
   REIMBURSE_AMOUNT     float(12) comment '报销金额',
   PAYMENT_CARD         float(12) comment '银联支付额',
   PAYMENT_CASH         float(12) comment '现金支付额',
   RECORD_DATE          datetime comment '上传时间',
   VOID_FLAG            varchar(30) comment '作废标志',
   VISIT_HCO_CODE       varchar(30) comment '发生机构编码',
   VISIT_HCO_NAME       varchar(70) comment '就诊机构名称',
   WESTERN_MEDICINE     numeric(9,2) comment '西药费',
   CHS_PATENT_DRUG      numeric(9,2) comment '中成药费',
   CHS_HERBAL_DRUG      numeric(9,2) comment '中草药费',
   DIAGNOSIS            numeric(9,2) comment '诊察费',
   EXAM                 numeric(9,2) comment '检查费',
   LAB_TEST             numeric(9,2) comment '化验费',
   RADIOLOGY            numeric(9,2) comment '放射费',
   TREATMENT            numeric(9,2) comment '治疗费',
   OPERATION            numeric(9,2) comment '手术费',
   ETHNODRUG            numeric(9,2) comment '民族药费',
   SPECIAL_EXAM         numeric(9,2) comment '特检费',
   TRANSBLOOD           numeric(9,2) comment '输血费',
   BED                  numeric(9,2) comment '床位费',
   NURSING              numeric(9,2) comment '护理费',
   PREPARATION          numeric(9,2) comment '自制制剂费',
   CHS_PRESCRIPTION     numeric(9,2) comment '辩证处方费',
   OTHER                numeric(9,2) comment '其他费用',
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   primary key (ID)
);


drop table if exists HC_居民地址表;

/*==============================================================*/
/* Table: HC_居民地址表                                              */
/*==============================================================*/
create table HC_居民地址表
(
   identity_no          varchar(30) not null comment 'PK，平台内个人唯一标识',
   serial_no            int not null comment '序号',
   address_type         int not null comment '地址类型01-户籍地址02-工作地址03-家庭常住地址06-出生地址09-现住址98-籍贯99：其他地址',
   full_address         varchar(400) not null comment '地址名称',
   postcode             varchar(6) comment '邮政编码',
   division_id          int comment '行政区划标识',
   additional_address   varchar(140) comment '补充地址',
   
   primary key (identity_no)
);

alter table HC_居民地址表 comment '居民地址表';


drop table if exists HC_居民联系方式表;

/*==============================================================*/
/* Table: HC_居民联系方式表                                            */
/*==============================================================*/
create table HC_居民联系方式表
(
   identity_no          varchar(30) not null comment 'PK，平台内个人唯一标识',
   serial_no            int not null comment '序号',
   relationship         varchar(2) comment '联系人关系 1：配偶2：子3：女4：孙子、孙女或外孙子、外孙女5：父母6：祖父母或外祖父母7：兄、弟、姐、妹8：其他',
   name                 varchar(120) comment '联系人姓名',
   phone_number         varchar(20) comment '联系人电话',
   mobile_number        varchar(20) comment '联系人手机',
   primary key (identity_no)
);

alter table HC_居民联系方式表 comment '居民联系方式表';

drop table if exists HC_OPERATION;

/*==============================================================*/
/* Table: HC_OPERATION                                          */
/*==============================================================*/
create table HC_OPERATION
(
   ID                   int(6) not null auto_increment comment 'PK，自增长序列号',
   VISIT_ID             varchar(50) comment '来自于就诊主索引',
   HIS_OPERATION_NO     varchar(20),
   OPERATION_DATE_TIME  datetime comment '可空，表示手术时间',
   OPERATION_CODE       varchar(20) comment '手术/操作的分类代码
            手术/操作的分类代码(国际疾病分类临床修订版ICD-9-CM)
            ',
   OPERATION_NAME       varchar(70) comment '手术名称',
   ANESTHESIA_METHOD_CODE varchar(2) comment '实施手术（操作）时所采用的麻醉方法代码
            CV5201.24麻醉方法代码
            ',
   ANESTHESIA_METHOD_NAME varchar(50),
   ANESTHESIA_DOCTOR_NAME varchar(30),
   WOUND_GRADE          varchar(2) comment '手术的切口等级，见手术切口等级字典，如I、II等',
   HEAL_GRADE           varchar(20) comment '手术（操作）的切口愈合等级
            CV5501.14手术切口愈合等级代码
            ',
   SURGEON_NAME         varchar(30) comment '手术医师姓名',
   ASSISTANT1_NAME      varchar(30) comment '第一手术助手姓名',
   ASSISTANT3_NAME      varchar(30) comment '第三手术助手姓名',
   ASSISTANT2_NAME      varchar(30) comment '第二手术助手姓名',
   ASSISTANT4_NAME      varchar(30) comment '第四手术助手姓名',
   TARGET_SITE_CODE     varchar(2) comment 'CV5201.23手术/操作体表部位代码',
   OPERATION_SCALE      varchar(2) comment '指手术规模，取值：特、大、中、小',
   DESCRIPTION          varchar(100) comment '实施手术/操作的名称的详细描述',
   OPERATION_CLASS      varchar(1) comment '1-一般手术 2-急抢救手术 3-术中急抢救',
   OPERATING_DEPT_CODE  varchar(30) comment '实施手术的科室代码',
   OPERATING_DEPT_NAME  varchar(70) comment '实施手术科室的正式名称',
   VISIT_HCO_CODE       varchar(30) comment '使用编码',
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   TARGET_SITE_NAME     varchar(100) comment 'CV5201.23手术/操作体表部位',
   primary key (ID)
);


drop table if exists hc_schedule;

/*==============================================================*/
/* Table: hc_schedule                                           */
/*==============================================================*/
create table hc_schedule
(
   id                   bigint not null comment 'PK，自增长序列号',
   identity_card_num    varchar(30) comment '患者身份证号',
   name                 varchar(60) comment '患者姓名',
   sex                  varchar(1) comment '患者性别',
   birthdate            datetime comment '患者出生日期',
   address              varchar(400) comment '患者联系地址',
   phone_num            varchar(20) comment '患者联系电话',
   mobile_phone_num     varchar(20) comment '患者移动电话',
   hospital_code        varchar(30) comment '医院的组织机构代码',
   hospital_name        varchar(140) comment '预约医院名称',
   department_code      varchar(30) comment '预约科室编码',
   department_name      varchar(140) comment '预约科室名称',
   department_location  varchar(200) comment '科室位置',
   doctor_code          varchar(30) comment '预约医生编码',
   doctor_name          varchar(60) comment '预约医生姓名',
   is_expert            int(1) comment '0-普通，1-专家',
   register_type        int(1) comment '1-普通挂号，2-急诊挂号',
   workshift_id         varchar(30) comment '班次ID',
   visit_date           datetime comment '就诊日期',
   workshift_class      int(1) comment '1-上午，2-下午，3-白天，4-夜间，5-全天',
   time_point_id        varchar(20) comment '号源ID',
   visit_series_num     varchar(4) comment '就诊顺序号',
   time_point_desc      varchar(100) comment '号源描述',
   plan_visit_time_start datetime comment '计划就诊开始时间',
   plan_visit_time_end  datetime comment '计划就诊结束时间',
   register_fee         numeric(9,2) comment '挂号费用',
   payment_status       int(1) comment '支付状态',
   payment_mode         int(1) comment '支付方式',
   payment_series_num   varchar(50) comment '交易号',
   payment_date_time    datetime comment '支付时间',
   register_from        varchar(140) comment '挂号来源名称',
   register_from_memo   varchar(30) comment '挂号来源备注',
   regist_operator_name varchar(60) comment '挂号操作人姓名',
   regist_date_time     datetime comment '挂号时间',
   his_register_series_num varchar(30) comment 'HIS挂号流水号',
   cancel_flag          int(1) comment '退号标志',
   cancel_from          varchar(140) comment '退号来源',
   cancel_from_memo     varchar(30) comment '退号来源备注',
   cancel_operator_name varchar(60) comment '退号操作人姓名',
   cancel_date_time     datetime comment '退号时间',
   stop_flag            int(1) comment '停诊标志',
   stop_reason          varchar(400) comment '停诊原因',
   stop_operator_name   varchar(60) comment '停诊操作人姓名',
   stop_date_time       datetime comment '停诊时间',
   visit_id             varchar(30) comment '就诊号',
   primary key (id)
);

alter table hc_schedule comment '挂号记录';


drop table if exists HC_EXAM_REPORT;

/*==============================================================*/
/* Table: HC_EXAM_REPORT                                        */
/*==============================================================*/
create table HC_EXAM_REPORT
(
   ID                   int not null comment 'PK，自增长序列号',
   VISIT_ID             varchar(50) not null comment '来自于就诊主索引',
   EXAM_NO              varchar(20) comment '机构内唯一标识一个检查主记录',
   REPORT_ITEM_NO       int comment '对同一申请的报告项目序号',
   REPORT_ITEM_CODE     varchar(10) comment '报告项目对应的代码',
   REPORT_ITEM_NAME     varchar(30) comment '此名称可能不同于申请项目名称',
   EXAM_PARAMETER       varchar(200),
   DESCRIPTION          varchar(200),
   IMPRESSION           varchar(200),
   RECOMMENDATION       varchar(200),
   IS_ABNORMAL          varchar(1) comment '1-阳性，即检查可能有病变，其他为阴性',
   FILE_NAME            varchar(255),
   FILE_PATH            varchar(255),
   DATA_TYPE            varchar(50) comment '数据文件的存储格式类型，如PDF、HTML等',
   VISIT_HCO_CODE       varchar(30) comment '使用编码',
   VISIT_HCO_NAME       varchar(70),
   primary key (ID)
);

drop table if exists HC_EXAM_INDEX;

/*==============================================================*/
/* Table: HC_EXAM_INDEX                                         */
/*==============================================================*/
create table HC_EXAM_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK，自增长序列号',
   VISIT_ID             varchar(50) comment '来自于就诊主索引',
   IDENTITY_NO          varchar(30) comment '个人标识',
   HIS_EXAM_NO          varchar(20) comment '机构内唯一标识一个检查主记录',
   EXAM_CLASS           varchar(20) comment '区分各类检查',
   EXAM_SUB_CLASS       varchar(20) comment '区分一种检查类下的各子类，如超声类下的腹部、心脏、妇产等子类',
   EXAM_ITEMS_NAME      varchar(200) comment '如存在多个检查项目，则进行文本拼接',
   REQUEST_DATE_TIME    datetime comment '本次检查的申请时间',
   REQUEST_DEPT_CODE    varchar(30) comment '申请科室代码',
   REQUEST_DEPT_NAME    varchar(70) comment '申请科室名称',
   REQUEST_DOCTOR_NAME  varchar(30) comment '申请医生姓名',
   EXAM_DATE_TIME       datetime comment '检查时间',
   EXAM_DOCTOR_NAME     varchar(30) comment '检查医生姓名',
   CONCLUSION           varchar(500) comment '检查结论',
   REPORT_DATE_TIME     datetime,
   REPORT_DOCTOR_NAME   varchar(30),
   CHARGE_FLAG          varchar(1) comment '0未收费
            1已收费
            ',
   BILL_NO              varchar(30),
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   EXAM_ITEMS_CODE      varchar(200) comment '如存在多个检查项目，则进行文本拼接',
   primary key (ID)
);


drop table if exists HC_LAB_TEST_RESULT;

/*==============================================================*/
/* Table: HC_LAB_TEST_RESULT                                    */
/*==============================================================*/
create table HC_LAB_TEST_RESULT
(
   ID                   int not null,
   VISIT_ID             varchar(50) not null comment '来自于就诊主索引',
   HIS_LAB_TEST_NO      varchar(20) comment '机构内唯一标识一个检验主记录',
   REPORT_ITEM_NO       int comment '对同一申请的报告项目序号',
   REPORT_ITEM_CODE     varchar(10) comment '报告项目对应的代码',
   REPORT_ITEM_NAME     varchar(30) comment '此名称可能不同于申请项目名称',
   RESULT               varchar(200) comment '正文描述，可以是定性描述，也可以是定量数值，对于没有值的项目不使用此字段',
   UNITS                varchar(20) comment '对检验结果为数值型的项目使用此字段',
   ABNORMAL_FLAG        varchar(1) comment '结果正常与否标志，
            N-正常 
            L-低 
            H-高
            ',
   INSTRUMENT_ID        varchar(8) comment '同检验仪器检验项目配置中定义的仪器编号，手工输入结果时为“手工”',
   RESULT_DATE_TIME     datetime comment '结果产生的日期和时间。自动采集结果时由采集计算机生成，手工填写结果时由录入处理的计算机生成。',
   REFER_CONTEXT        varchar(200) comment '检查项目所对应的正常参考范围 ',
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   primary key (ID)
);

drop table if exists HC_LAB_TEST_INDEX;

/*==============================================================*/
/* Table: HC_LAB_TEST_INDEX                                     */
/*==============================================================*/
create table HC_LAB_TEST_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK',
   VISIT_ID             varchar(50) comment '来自于就诊主索引',
   IDENTITY_NO          varchar(30) comment '个人标识',
   HIS_LAB_TEST_NO      varchar(20) comment '机构内唯一标识一个检验主记录',
   SUBJECT_CODE         varchar(200) comment '反映本检验的主要内容，如血液生化、大便常规等',
   SUBJECT_NAME         varchar(200) comment '反映本检验的主要内容，如血液生化、大便常规等',
   REQUEST_DATE_TIME    datetime comment '本次检查的申请时间',
   REQUEST_DEPT_CODE    varchar(30) comment '申请科室代码',
   REQUEST_DEPT_NAME    varchar(70) comment '申请科室名称',
   REQUEST_DOCTOR_NAME  varchar(30) comment '申请医生姓名',
   BLOOD_TEST_FLAG      varchar(1) comment '0 否 1 是',
   SPECIMEN_CODE        varchar(20),
   SPECIMEN_NAME        varchar(50) comment '使用标准描述，如血、尿等',
   NOTES_FOR_SPECIMEN   varchar(100),
   SAMPLE_DATE_TIME     datetime,
   SAMPLE_NAME          varchar(30),
   SPECIMEN_RECEIVED_DATE_TIME datetime,
   TEST_DEPT_CODE       varchar(30),
   TEST_DEPT_NAME       varchar(70),
   TEST_DOCTOR_NAME     varchar(30),
   CONCLUSION           varchar(500),
   REPORT_DATE_TIME     datetime,
   REPORT_DOCTOR_NAME   varchar(30),
   CHARGE_FLAG          varchar(1) comment '0未收费
            1已收费
            ',
   BILL_NO              varchar(30),
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   primary key (ID)
);


drop table if exists HC_DOCUMENT_INDEX;

/*==============================================================*/
/* Table: HC_DOCUMENT_INDEX                                     */
/*==============================================================*/
create table HC_DOCUMENT_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK，自增长序列号',
   VISIT_ID             varchar(50) not null comment '来源于就诊主索引',
   HIS_DOCUMENT_ID      varchar(20) comment '机构内唯一标识一个病历记录',
   DOCUMENT_NAME        varchar(100) comment '例如“入院记录”',
   CREATOR              varchar(30),
   CREAT_DATE_TIME      datetime,
   LAs_EDITOR           varchar(30),
   LAST_EDIT_DATE_TIME  datetime,
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   primary key (ID)
);

drop table if exists HC_HOSPITAL;

/*==============================================================*/
/* Table: HC_HOSPITAL                                           */
/*==============================================================*/
create table HC_HOSPITAL
(
   ID                   int not null auto_increment comment '平台代码',
   HOS_NAME             varchar(100) comment '医院名称',
   ALIAS_NAME           varchar(200) comment '医院别名(多个以逗号隔开)',
   HOS_TYPE             varchar(10) comment '医院类型(字典)',
   HOS_LEVEL            varchar(10) comment '医院等级(字典)',
   TCM                  varchar(10) comment '中西医',
   TEL                  varchar(20) comment '联系电话',
   ADDRES               varchar(200) comment '联系地址',
   URL                  varchar(200) comment '官方网址',
   PLAT_CODE            varchar(30) comment '组织机构代码',
   INTRO                varchar(4000) comment '医院介绍',
   BOOK_COUNT           int comment '成功预约数',
   WEIBO                varchar(50) comment '官方微博',
   WEIXIN               varchar(50) comment '微信',
   GIS_LNG              numeric(10,6) comment '地理经度',
   GIS_LAT              numeric(10,6) comment '地理纬度',
   SCH_TIME             varchar(10) comment '放号时间(HH24:MI)',
   AREA_ID              varchar(30) comment '所属地区(字典)',
   HOS_STATE            varchar(1) comment '医院状态(1-正常预约;2-暂停医院;3-注销)',
   MODIFY_TIME          datetime comment '修改时间',
   HOS_ROUTE            varchar(2000) comment '交通路线',
   FEATURE_DEPT         varchar(100) comment '特色科室',
   PY_CODE              varchar(20) comment '拼音码',
   IDX_NAME             varchar(200) comment '索引名(索引用不显示)',
   SCAN                 varchar(1) comment '检验二维码扫描（1走存储过程查询）',
   APK_NAME             varchar(200) comment '对应apk维护',
   CUSTOM_CODE          varchar(20) comment '自定义码',
   HOS_PHOTO            varchar(200) comment '医院图片',
   INVALID_FLAG         varchar(1) comment '作废标志',
   HIS_INTERFACE        varchar(100) comment '院内接口地址',
   primary key (ID)
);

drop table if exists HC_DIAGNOSIS;

/*==============================================================*/
/* Table: HC_DIAGNOSIS                                          */
/*==============================================================*/
create table HC_DIAGNOSIS
(
   DIAGNOSIS_ID         int(6) not null auto_increment comment 'PK，自增长序列号',
   VISIT_ID             varchar(60) not null comment '来自于就诊主索引',
   DIAGNOSIS_ITEM_TYPE  varchar(2) comment '诊断类型',
   DIAGNOSIS_DOCTOR_NAME varchar(30) comment '诊断医生姓名',
   DIAGNOSIS_DATE_TIME  datetime comment '诊断时间',
   HIS_DIAGNOSIS_ID     varchar(16) comment '来自机构内部的序号，便于追溯',
   DIAGNOSIS_ITEM_NO    varchar(2) comment '表示主次关系，从1开始排列，1表示主要诊断，大于1的表示其他诊断',
   DIAGNOSIS_ITEM_CODE  varchar(20) comment '使用标准代码，例如I10.x00',
   DIAGNOSIS_ITEM_NAME  varchar(400) comment '诊断出来的疾病名称，例如高血压',
   OLD_FLAG             int comment '原有标志0-否1-是',
   NEW_FLAG             int comment '新发标志0-否1-是',
   SUSPECTED_FLAG       int comment '疑似标志0-否1-是',
   DIAGNOSIS_ITEM_MEMO  varchar(400) comment '对诊断的补充说明，例如“高危”',
   VISIT_HCO_CODE       varchar(30) comment '发生机构编码',
   VISIT_HCO_NAME       varchar(140) comment '就诊机构名称',
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   primary key (DIAGNOSIS_ID)
);

alter table HC_DIAGNOSIS comment '诊断记录';

drop table if exists HC_ALLERGY_HISTORY;

/*==============================================================*/
/* Table: HC_ALLERGY_HISTORY                                    */
/*==============================================================*/
create table HC_ALLERGY_HISTORY
(
   ID                   int(6) not null auto_increment comment '自增序列',
   IDENTITY_NO          varchar(30) comment '平台内个人唯一标识，非建档人员该字段可空',
   VISIT_ID             varchar(50) not null comment '来自于就诊主索引',
   HIS_ALLERGEN_ID      varchar(20) comment 'His中该条过敏史记录的ID',
   INFO_SOURCE_TYPE     varchar(1) comment '1-测试；2-询问。通过检测（例如皮试、检验）获取则信息来源为测试，通过询问患者或家属获取则信息来源为询问',
   ALLERGEN_CODE        varchar(20) comment '标准代码值表-CV05.01.038',
   ALLERGEN_NAME        varchar(100) not null comment '具体名称，例如过敏源编码字段值是101-青霉素类抗生素，这里是具体的青霉素类抗生药物的名称，例如阿莫西林',
   ALLERGY_SYMPTOM      varchar(300),
   EDITOR               varchar(30),
   EDITOR_DATE_TIME     datetime,
   RECORD_HCO_CODE      varchar(30),
   RECORD_HCO_NAME      varchar(70),
   del_sign             int comment '删除标志',
   del_user_code        varchar(20) comment '删除操作者编码',
   del_user_name        varchar(50) comment '删除者名称',
   del_datetime         datetime comment '删除时间',
   primary key (ID)
);

alter table HC_ALLERGY_HISTORY comment '过敏史信息';

drop table if exists SYS_DIVISION;

/*==============================================================*/
/* Table: SYS_DIVISION                                          */
/*==============================================================*/
create table SYS_DIVISION
(
   ID                   int not null auto_increment comment 'ID',
   DIVISION_CODE        varchar(30) comment '区划编码',
   DIVISION_NAME        varchar(100) comment '区划名称',
   DIVISION_TYPE        varchar(10) comment '1.省、2.市、3.县',
   UP_DIVISION          varchar(30) comment '上级区划',
   POSTAL_CODE          varchar(6) comment '邮政编码',
   ORDER_NO             int comment '顺序号',
   PY_CODE              varchar(20) comment '拼音码',
   INVALID_FLAG         varchar(1) comment '作废标志',
   CREATER              int comment '创建人',
   CREATE_TIME          datetime comment '创建日期',
   MODIFIER             int comment '修改人',
   MODIFY_TIME          datetime comment '修改日期',
   primary key (ID)
);

alter table SYS_DIVISION comment 'SYS_行政区划';


drop table if exists TS_TERMINOLOGY_DOMAIN;

/*==============================================================*/
/* Table: TS_TERMINOLOGY_DOMAIN                                 */
/*==============================================================*/
create table TS_TERMINOLOGY_DOMAIN
(
   ID                   int not null comment '编号',
   SYSTEM_ID            int comment '所属术语系统',
   CODE                 varchar(50) comment '代号',
   VERSION              varchar(50) comment '版本号',
   INPUT_CODE           varchar(50) comment '输入码',
   CNAME                varchar(100) comment '中文名称',
   ENAME                varchar(100) comment '英文名称',
   DESCN                varchar(255) comment '描述',
   INVALID_FLAG         varchar(1) comment '作废标志',
   primary key (ID)
);

alter table TS_TERMINOLOGY_DOMAIN comment 'TS_术语域表';

drop table if exists TS_TERMINOLOGY;

/*==============================================================*/
/* Table: TS_TERMINOLOGY                                        */
/*==============================================================*/
create table TS_TERMINOLOGY
(
   ID                   int not null comment '编号',
   DOMAIN_ID            int comment '术语域编号',
   CODE                 varchar(50) comment '值',
   MEANING              varchar(255) comment '值含义',
   DESCN                varchar(255) comment '描述',
   ISSTANDARD           varchar(1) comment '是否为标准',
   INPUT_CODE           varchar(50) comment '输入码',
   LOW_LIMIT            varchar(100) comment '下限值',
   HIGH_LIMIT           varchar(100) comment '上限值',
   DEFAULT_FLAG         varchar(1) comment '默认标志',
   INVALID_FLAG         varchar(1) comment '作废标志',
   primary key (ID)
);

alter table TS_TERMINOLOGY comment 'TS_术语表';



-- ----------------------------
-- Table structure for `csr_adverse_event`
-- ----------------------------
DROP TABLE IF EXISTS `csr_adverse_event`;
CREATE TABLE `csr_adverse_event` (
  `EVENT_ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_SOURCE_CODE` varchar(10) NOT NULL,
  `EVENT_SOURCE_NAME` varchar(30) NOT NULL,
  `PLAN_ID` int(20) DEFAULT NULL,
  `RECORD_ID` int(20) DEFAULT NULL,
  `IDENTITY_NO` varchar(30) DEFAULT NULL,
  `NAME` varchar(30) NOT NULL,
  `CALLED_FROM_NUM` varchar(20) NOT NULL,
  `MOBILE_PHONE_NUM` varchar(20) DEFAULT NULL,
  `CONTACT_ADDRESS` varchar(70) DEFAULT NULL,
  `VISIT_ID` varchar(50) DEFAULT NULL,
  `VISIT_TYPE` varchar(2) DEFAULT NULL,
  `VISIT_START_DATE_TIME` date DEFAULT NULL,
  `VISIT_ORG_CODE` varchar(30) DEFAULT NULL,
  `VISIT_ORG_NAME` varchar(70) DEFAULT NULL,
  `HIS_DEPT_CODE` varchar(30) DEFAULT NULL,
  `HIS_DEPT_NAME` varchar(70) DEFAULT NULL,
  `DOCTOR_CODE` varchar(30) DEFAULT NULL,
  `DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `REFLACT_CONTENT` varchar(1000) NOT NULL,
  `REFLACT_DATE_TIME` date NOT NULL,
  `NEED_SECURITY_PROCESS` int(1) DEFAULT NULL,
  `REFLACT_FOR_CODE` varchar(10) DEFAULT NULL,
  `REFLACT_FOR_NAME` varchar(30) DEFAULT NULL,
  `REFLACT_CONTENT_CLASS_CODE` varchar(10) DEFAULT NULL,
  `REFLACT_CONTENT_CLASS_NAME` varchar(30) DEFAULT NULL,
  `ACCEPT_ORG_CODE` varchar(30) DEFAULT NULL,
  `ACCEPT_ORG_NAME` varchar(70) DEFAULT NULL,
  `ACCEPTOR_ID` varchar(30) DEFAULT NULL,
  `ACCEPTOR_NAME` varchar(30) DEFAULT NULL,
  `ACCEPT_DATE_TIME` date DEFAULT NULL,
  `HANDLE_ORG_CODE` varchar(30) DEFAULT NULL,
  `HANDLE_ORG_NAME` varchar(70) DEFAULT NULL,
  `HANDLE_CLOSING_DATE` date DEFAULT NULL,
  `ASSIGN_ORG_CODE` varchar(30) DEFAULT NULL,
  `ASSIGN_ORG_NAME` varchar(70) DEFAULT NULL,
  `ASSIGN_PERSON_ID` varchar(30) DEFAULT NULL,
  `ASSIGN_PERSON_NAME` varchar(30) DEFAULT NULL,
  `ASSIGN_DATE_TIME` date DEFAULT NULL,
  `HANDLE_RESULT` varchar(1000) DEFAULT NULL,
  `FEEDBACK_RESULT` varchar(1000) DEFAULT NULL,
  `RETURN_VISIT_RESULT` varchar(1000) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`EVENT_ID`),
  UNIQUE KEY `EVENT_ID_UNIQUE` (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_adverse_event
-- ----------------------------

-- ----------------------------
-- Table structure for `csr_ae_handle_history`
-- ----------------------------
DROP TABLE IF EXISTS `csr_ae_handle_history`;
CREATE TABLE `csr_ae_handle_history` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(20) DEFAULT NULL,
  `HANDLE_DATE_TIME` date DEFAULT NULL,
  `HANDLE_ORG_CODE` varchar(30) DEFAULT NULL,
  `HANDLE_ORG_NAME` varchar(70) DEFAULT NULL,
  `HANDLE_PERSON_ID` varchar(30) DEFAULT NULL,
  `HANDLE_PERSON_NAME` varchar(30) DEFAULT NULL,
  `HANDLE_RESULT` varchar(1000) DEFAULT NULL,
  `FEEDBACK_SUMMARY` varchar(30) DEFAULT NULL,
  `FEEDBACK_MEMO` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_ae_handle_history
-- ----------------------------

-- ----------------------------
-- Table structure for `csr_ae_return_visit_history`
-- ----------------------------
DROP TABLE IF EXISTS `csr_ae_return_visit_history`;
CREATE TABLE `csr_ae_return_visit_history` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(20) DEFAULT NULL,
  `RETURN_VISIT_DATE_TIME` date DEFAULT NULL,
  `RETURN_VISIT_ORG_CODE` varchar(30) DEFAULT NULL,
  `RETURN_VISIT_ORG_NAME` varchar(70) DEFAULT NULL,
  `RETURN_VISIT_PERSON_ID` varchar(30) DEFAULT NULL,
  `RETURN_VISIT_PERSON_NAME` varchar(30) DEFAULT NULL,
  `RETURN_VISIT_RESULT` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_ae_return_visit_history
-- ----------------------------

-- ----------------------------
-- Table structure for `csr_ae_user_follow_with`
-- ----------------------------
DROP TABLE IF EXISTS `csr_ae_user_follow_with`;
CREATE TABLE `csr_ae_user_follow_with` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(20) DEFAULT NULL,
  `PERSON_ID` varchar(30) DEFAULT NULL,
  `FOLLOW_WITH_START_DATE_TIME` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_ae_user_follow_with
-- ----------------------------

-- ----------------------------
-- Table structure for `csr_plan`
-- ----------------------------
DROP TABLE IF EXISTS `csr_plan`;
CREATE TABLE `csr_plan` (
  `PLAN_ID` int(20) NOT NULL AUTO_INCREMENT,
  `PLAN_NAME` varchar(100) NOT NULL,
  `START_DATE_TIME` date NOT NULL,
  `END_DATE_TIME` date NOT NULL,
  `EVALUATE_SCOPE` varchar(100) DEFAULT NULL,
  `EVALUATE_ORG_CODE` varchar(500) NOT NULL,
  `EVALUATE_ORG_NAME` varchar(1000) NOT NULL,
  `DAY_SMS_COUNT_LIMIT` int(8) DEFAULT NULL,
  `CREATE_ORG_CODE` varchar(30) DEFAULT NULL,
  `CREATE_ORG_NAME` varchar(70) DEFAULT NULL,
  `CREATOR_ID` varchar(30) DEFAULT NULL,
  `CREATOR_NAME` varchar(30) NOT NULL,
  `CREATE_DATE_TIME` date NOT NULL,
  `STATUS` int(2) NOT NULL,
  PRIMARY KEY (`PLAN_ID`),
  UNIQUE KEY `PLAN_ID_UNIQUE` (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `csr_record`
-- ----------------------------
DROP TABLE IF EXISTS `csr_record`;
CREATE TABLE `csr_record` (
  `RECORD_ID` int(20) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(20) DEFAULT NULL,
  `IDENTITY_NO` varchar(30) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `MOBILE_PHONE_NUM` varchar(20) DEFAULT NULL,
  `VISIT_ID` varchar(50) DEFAULT NULL,
  `VISIT_TYPE` varchar(2) NOT NULL,
  `VISIT_START_DATE_TIME` date DEFAULT NULL,
  `VISIT_ORG_CODE` varchar(30) DEFAULT NULL,
  `VISIT_ORG_NAME` varchar(70) DEFAULT NULL,
  `HIS_DEPT_CODE` varchar(30) DEFAULT NULL,
  `HIS_DEPT_NAME` varchar(70) DEFAULT NULL,
  `DOCTOR_CODE` varchar(30) DEFAULT NULL,
  `DOCTOR_NAME` varchar(30) DEFAULT NULL,
  `SMS_SEND_CONTENT` varchar(1000) DEFAULT NULL,
  `IS_REPLY` int(1) DEFAULT NULL,
  `SMS_REPLY_CONTENT` varchar(1000) DEFAULT NULL,
  `REPLY_DATE_TIME` date DEFAULT NULL,
  `REFLACT_CONTENT` varchar(1000) DEFAULT NULL,
  `NEED_MANUAL_PROCESS` int(1) DEFAULT NULL,
  `IS_SATISFACTION` int(1) DEFAULT NULL,
  `CSR_RESULT_CODE` varchar(100) DEFAULT NULL,
  `CSR_RESULT_NAME` varchar(300) DEFAULT NULL,
  `THE_BEST_DOCTOR` varchar(100) DEFAULT NULL,
  `THE_WORST_DOCTOR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RECORD_ID`),
  UNIQUE KEY `RECORD_ID_UNIQUE` (`RECORD_ID`),
  KEY `IS_SATISFACTION` (`IS_SATISFACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_record
-- ----------------------------

-- ----------------------------
-- Table structure for `csr_sms_send_queue`
-- ----------------------------
DROP TABLE IF EXISTS `csr_sms_send_queue`;
CREATE TABLE `csr_sms_send_queue` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(20) DEFAULT NULL,
  `MOBILE_PHONE_NUM` varchar(20) DEFAULT NULL,
  `SMS_CONTENT` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of csr_sms_send_queue
-- ----------------------------