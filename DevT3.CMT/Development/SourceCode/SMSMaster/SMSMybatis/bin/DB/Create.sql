
drop table if exists HC_PERSON_MASTER_INDEX;

/*==============================================================*/
/* Table: HC_PERSON_MASTER_INDEX                                */
/*==============================================================*/
create table HC_PERSON_MASTER_INDEX
(
   identity_no          varchar(30) not null comment 'PK��ƽ̨�ڸ�����ϢΨһ��ʶ������18λ���������֤���루����˲��ù��ұ���+���պ��룩�����������ϢΨһ��ʶ����ϵͳ�ڽ���ʱ����',
   create_hco_code      varchar(30) comment '������������',
   create_hco_name      varchar(140) comment '������������',
   create_user_name     varchar(120) comment '������Ա����',
   create_date_time     datetime comment '����ʱ��',
   status               int comment '��Ա״̬��0-����1-ת��2-ת��3-����',
   credit_flag          int comment 'ǩԼ״̬�Ƿ��ȿ����󸶷�ǩԼ��0-δǩԼ1-ҽ��ǩԼ2-������ǩԼ9-������',
   credit_ammount       numeric(8,2) comment '�ȿ����󸶷����ö��',
   name                 varchar(60) comment '����������',
   name_pinyin          varchar(30) comment '����ƴ��',
   sex                  varchar(1) comment '�Ա�',
   date_of_birth        datetime comment '���˳�������Ĺ�Ԫ��������',
   country              varchar(3) comment '����',
   nation               varchar(2) comment '����',
   marriage_status_name varchar(20) comment '����״������',
   marriage_status_code varchar(1) comment '����״������',
   education_level_code varchar(2) comment '�Ļ��̶ȴ���',
   education_level_name varchar(20) comment '�Ļ��̶�����',
   political_status_code varchar(2) comment '������ò����',
   political_status_name varchar(20) comment '������ò����',
   job_type_code        varchar(3) comment 'ְҵ���',
   job_status_code      varchar(2),
   job_type_name        varchar(50) comment 'ְҵ�������',
   job_status_name      varchar(20) comment '��ְ״̬����',
   phone_number         varchar(20) comment '�绰����',
   mobile_number        varchar(20) comment '�ֻ�����',
   contact_name         varchar(60) comment '��ϵ������',
   contact_phone        varchar(20) comment '��ϵ�˵绰',
   contact_mobile       varchar(20) comment '��ϵ���ֻ�',
   native_place         varchar(400) comment '��������',
   birth_place          varchar(400) comment '������ַ����',
   home_address         varchar(400) comment '��ͥ��ַ����',
   blood_type_abo       varchar(2) comment 'ABOѪ��',
   blood_type_rh        varchar(2) comment 'RHѪ��',
   child_birth          int comment '���ӱ�־0-�� 1-��',
   vaccination_history  int comment '���߽���ʷ��־0-�� 1-��',
   allergy_history      int comment '����ʷ��־0-�� 1-��',
   allergy_desc         varchar(400) comment '����ʷ����',
   past_history         int comment '����ʷ��־0-�� 1-��',
   past_desc            varchar(400) comment '����ʷ����',
   genetic_history      int comment '�Ŵ���ʷ��־0-�� 1-��',
   iving_habits         int comment '������Ϊϰ�߱�־0-�� 1-��',
   hypertension         int comment '��Ѫѹ��־0-�� 1-��',
   hypertension_desc    varchar(400) comment '��Ѫѹ����',
   tumor                int comment '������־0-�� 1-��',
   tumor_desc           varchar(400) comment '��������',
   asthma               int comment '������־0-�� 1-��',
   heart_dease          int comment '���ಡ��־0-�� 1-��',
   cardio_cerebrovascular_disease int comment '��Ѫ�ܲ���־0-�� 1-��',
   epilepsy             int comment '��ﲡ��־0-�� 1-��',
   psychosis            int comment '���񼲲���־0-�� 1-��',
   psychosis_desc       varchar(400) comment '���񼲲�����',
   coagulopathy         int comment '��Ѫ���ұ�־0-�� 1-��',
   diabetes             int comment '���򲡱�־0-�� 1-��',
   diabetes_desc        varchar(400) comment '��������',
   glaucoma             int comment '����۱�־0-�� 1-��',
   dialysis             int comment '͸����־0-�� 1-��',
   transplant           int comment '������ֲ��־0-�� 1-��',
   organ_deficiency     int comment '����ȱʧ��־0-�� 1-��',
   removable_prosthesis int comment '��װж����֫��־0-�� 1-��',
   pacemaker            int comment '����������־0-�� 1-��',
   medical_warnning     varchar(80) comment '����ҽѧ��ʾ',
   primary_hco_code     varchar(30) comment '����ҽ�ƻ�������',
   primary_hco_name     varchar(140) comment '����ҽ�ƻ�������',
   update_user_name     varchar(60) comment '������Ա����',
   update_date_time     datetime comment '����ʱ��'
);

alter table HC_PERSON_MASTER_INDEX comment '���˵���������';

alter table HC_PERSON_MASTER_INDEX
   add primary key (identity_no);


drop table if exists HC_������Ƭ;

/*==============================================================*/
/* Table: HC_������Ƭ                                               */
/*==============================================================*/
create table HC_������Ƭ
(
   identity_no          varchar(30) not null comment 'PK��ƽ̨�ڸ���Ψһ��ʶ',
   photo                longblob comment '��Ƭ'
);

alter table HC_������Ƭ comment '������Ƭ';

alter table HC_������Ƭ
   add primary key (identity_no);



drop table if exists HC_PERSON_IDENTITY;

/*==============================================================*/
/* Table: HC_PERSON_IDENTITY                                    */
/*==============================================================*/
create table HC_PERSON_IDENTITY
(
   ID                   numeric(6,0) not null ,
   identity_no          varchar(30) not null comment 'ƽ̨�ڸ���Ψһ��ʶ',
   id_type              int not null comment '֤�����01-�������֤02-�۰ľ������֤03-���񻧿ڲ�04-����05-����֤06-��ְ�ɲ�֤07-ʿ��֤08-��ʻִ��09-�м�֤10-ҽ�Ʊ���֤99-������ʶ100-����������101-ҽ����102-���п�103-����',
   id_no                varchar(60) not null comment '֤������',
   issued_by            varchar(140) comment 'ǩ����λ',
   issue_date           datetime comment 'ǩ������',
   expire_date          datetime comment '֤����Ч��',
   primary key (ID)
);

alter table HC_PERSON_IDENTITY comment '�������ʶ��� ';



drop table if exists HC_PRESC_INDEX;

/*==============================================================*/
/* Table: HC_PRESC_INDEX                                        */
/*==============================================================*/
create table HC_PRESC_INDEX
(
   ID                   int(6) not null auto_increment,
   VISIT_ID             varchar(50),
   HIS_PRESC_ID         varchar(20) comment '������Ψһ��ʶһ����������',
   HIS_DEPT_CODE        varchar(30),
   HIS_DEPT_NAME        varchar(70),
   DOCTOR_NAME          varchar(30),
   PRESC_DATE_TIME      datetime,
   DRUG_TYPE_CODE       varchar(30) comment '��ҩ���г�ҩ����ҩ��Ƭ����ҩ�䷽����',
   DRUG_TYPE_NAME       varchar(30) comment '��ҩ���г�ҩ����ҩ��Ƭ����ҩ�䷽����',
   DOSE                 int comment '���ֶν�������ҩ��Ƭ���䷽��������ҩ�г�ҩĬ��Ϊ1',
   PRESC_TYPE_CODE      varchar(1) comment '��ͨ���������ƴ�������һ��������������',
   PRESC_TYPE_NAME      varchar(20) comment '��ͨ���������ƴ�������һ��������������',
   INFUSION_FLAG        varchar(1) comment '0 �� 1 ��',
   ANTIBIOTICS_FLAG     varchar(1) comment '0 �� 1 ��',
   CHARGE_FLAG          varchar(1) comment '0 �� 1 ��',
   TOTAL_AMOUNT         float(8),
   AMOUNT_BASIC_DRUG    float(8),
   AMOUNT_SUPPLEMENT_DRUG float(8),
   AMOUNT_OTHER_DRUG    float(8),
   BILL_NO              varchar(30),
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   primary key (ID)
);


drop table if exists HC_VISIT_MASTER_INDEX;

/*==============================================================*/
/* Table: HC_VISIT_MASTER_INDEX                                 */
/*==============================================================*/
create table HC_VISIT_MASTER_INDEX
(
   visit_id             int(6) not null auto_increment comment 'PK���ڲ���ˮ�ţ�������������������Ψһ��ʶ���¼��ı�ţ�ͨ������Ϣ����Ժ��Ψһȷ������Ϊ���鵽����ϸ��������ɻ��ߵ�Ժ�ھ���ʱ����Ժ��ϵͳ�����ı���ʱ�������ɷ���Ψһ�룻',
   identity_no          varchar(30) comment 'ƽ̨�ڸ���Ψһ��ʶ',
   name                 varchar(60) comment '��������',
   sex                  varchar(1) comment '�����Ա�',
   DATE_OF_BIRTH        datetime comment '��������',
   VISIT_START_DATE_TIME datetime comment '���￪ʼ����',
   VISIT_END_DATE_TIME  datetime comment '�����������',
   visit_type           varchar(2) comment '�������1-��ͨ����2-����3-���4-סԺ',
   visit_description    varchar(100) comment '��������',
   visit_hco_code       varchar(30) comment '�����������',
   visit_hco_name       varchar(140) comment '�����������',
   his_visit_id         varchar(30) comment '���������Ψһ����ţ����磬����Ż�סԺ��',
   his_dept_code        varchar(30) comment '������ұ���',
   his_dept_name        varchar(140) comment '�����������',
   insurance_type       varchar(2) comment 'ҽ�Ʒ���֧����ʽ1����ְ������ҽ�Ʊ���2����������ҽ�Ʊ���3����ũ�����ҽ��4ƶ������5��ҵҽ�Ʊ���6ȫ����7ȫ�Է�9����',
   pay_type             varchar(1) comment '֧������0-��ͨ��������1-ҽ���ȿ����󸶷�2-�������ȿ����󸶷�',
   doctor_code          varchar(30) comment '����ҽ������',
   doctor_name          varchar(60) comment '����ҽ������',
   DOCTOR_TEL           varchar(20) comment '����ҽ���绰',
   DOCTOR_IDENTITY_CARD_NUM varchar(20) comment '����ҽ�����֤��',
   archive_date         datetime comment '����ȷ�����ݵ��ϱ��Ĺ�Ԫ��������',
   upload_flag          int comment '�ϴ���־0-δ�ϴ���1-���ϴ�',
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   
   primary key (visit_id)
);

alter table HC_VISIT_MASTER_INDEX comment '����������';


drop table if exists HC_VISIT_BILL_INDEX;

/*==============================================================*/
/* Table: HC_VISIT_BILL_INDEX                                   */
/*==============================================================*/
create table HC_VISIT_BILL_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK�����������к�',
   VISIT_ID             varchar(50) not null comment '�����ھ���������',
   HIS_BILL_NO          varchar(30) not null comment '���õ��ݺ���',
   INVOICE_DATE         datetime comment '��Ʊ����',
   TOTAL_AMOUNT         float(12) comment '�����ܶ�',
   REIMBURSE_AMOUNT     float(12) comment '�������',
   PAYMENT_CARD         float(12) comment '����֧����',
   PAYMENT_CASH         float(12) comment '�ֽ�֧����',
   RECORD_DATE          datetime comment '�ϴ�ʱ��',
   VOID_FLAG            varchar(30) comment '���ϱ�־',
   VISIT_HCO_CODE       varchar(30) comment '������������',
   VISIT_HCO_NAME       varchar(70) comment '�����������',
   WESTERN_MEDICINE     numeric(9,2) comment '��ҩ��',
   CHS_PATENT_DRUG      numeric(9,2) comment '�г�ҩ��',
   CHS_HERBAL_DRUG      numeric(9,2) comment '�в�ҩ��',
   DIAGNOSIS            numeric(9,2) comment '����',
   EXAM                 numeric(9,2) comment '����',
   LAB_TEST             numeric(9,2) comment '�����',
   RADIOLOGY            numeric(9,2) comment '�����',
   TREATMENT            numeric(9,2) comment '���Ʒ�',
   OPERATION            numeric(9,2) comment '������',
   ETHNODRUG            numeric(9,2) comment '����ҩ��',
   SPECIAL_EXAM         numeric(9,2) comment '�ؼ��',
   TRANSBLOOD           numeric(9,2) comment '��Ѫ��',
   BED                  numeric(9,2) comment '��λ��',
   NURSING              numeric(9,2) comment '�����',
   PREPARATION          numeric(9,2) comment '�����Ƽ���',
   CHS_PRESCRIPTION     numeric(9,2) comment '��֤������',
   OTHER                numeric(9,2) comment '��������',
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   primary key (ID)
);


drop table if exists HC_�����ַ��;

/*==============================================================*/
/* Table: HC_�����ַ��                                              */
/*==============================================================*/
create table HC_�����ַ��
(
   identity_no          varchar(30) not null comment 'PK��ƽ̨�ڸ���Ψһ��ʶ',
   serial_no            int not null comment '���',
   address_type         int not null comment '��ַ����01-������ַ02-������ַ03-��ͥ��ס��ַ06-������ַ09-��סַ98-����99��������ַ',
   full_address         varchar(400) not null comment '��ַ����',
   postcode             varchar(6) comment '��������',
   division_id          int comment '����������ʶ',
   additional_address   varchar(140) comment '�����ַ',
   
   primary key (identity_no)
);

alter table HC_�����ַ�� comment '�����ַ��';


drop table if exists HC_������ϵ��ʽ��;

/*==============================================================*/
/* Table: HC_������ϵ��ʽ��                                            */
/*==============================================================*/
create table HC_������ϵ��ʽ��
(
   identity_no          varchar(30) not null comment 'PK��ƽ̨�ڸ���Ψһ��ʶ',
   serial_no            int not null comment '���',
   relationship         varchar(2) comment '��ϵ�˹�ϵ 1����ż2����3��Ů4�����ӡ���Ů�������ӡ�����Ů5����ĸ6���游ĸ�����游ĸ7���֡��ܡ��㡢��8������',
   name                 varchar(120) comment '��ϵ������',
   phone_number         varchar(20) comment '��ϵ�˵绰',
   mobile_number        varchar(20) comment '��ϵ���ֻ�',
   primary key (identity_no)
);

alter table HC_������ϵ��ʽ�� comment '������ϵ��ʽ��';

drop table if exists HC_OPERATION;

/*==============================================================*/
/* Table: HC_OPERATION                                          */
/*==============================================================*/
create table HC_OPERATION
(
   ID                   int(6) not null auto_increment comment 'PK�����������к�',
   VISIT_ID             varchar(50) comment '�����ھ���������',
   HIS_OPERATION_NO     varchar(20),
   OPERATION_DATE_TIME  datetime comment '�ɿգ���ʾ����ʱ��',
   OPERATION_CODE       varchar(20) comment '����/�����ķ������
            ����/�����ķ������(���ʼ��������ٴ��޶���ICD-9-CM)
            ',
   OPERATION_NAME       varchar(70) comment '��������',
   ANESTHESIA_METHOD_CODE varchar(2) comment 'ʵʩ������������ʱ�����õ�����������
            CV5201.24����������
            ',
   ANESTHESIA_METHOD_NAME varchar(50),
   ANESTHESIA_DOCTOR_NAME varchar(30),
   WOUND_GRADE          varchar(2) comment '�������пڵȼ����������пڵȼ��ֵ䣬��I��II��',
   HEAL_GRADE           varchar(20) comment '���������������п����ϵȼ�
            CV5501.14�����п����ϵȼ�����
            ',
   SURGEON_NAME         varchar(30) comment '����ҽʦ����',
   ASSISTANT1_NAME      varchar(30) comment '��һ������������',
   ASSISTANT3_NAME      varchar(30) comment '����������������',
   ASSISTANT2_NAME      varchar(30) comment '�ڶ�������������',
   ASSISTANT4_NAME      varchar(30) comment '����������������',
   TARGET_SITE_CODE     varchar(2) comment 'CV5201.23����/�������λ����',
   OPERATION_SCALE      varchar(2) comment 'ָ������ģ��ȡֵ���ء����С�С',
   DESCRIPTION          varchar(100) comment 'ʵʩ����/���������Ƶ���ϸ����',
   OPERATION_CLASS      varchar(1) comment '1-һ������ 2-���������� 3-���м�����',
   OPERATING_DEPT_CODE  varchar(30) comment 'ʵʩ�����Ŀ��Ҵ���',
   OPERATING_DEPT_NAME  varchar(70) comment 'ʵʩ�������ҵ���ʽ����',
   VISIT_HCO_CODE       varchar(30) comment 'ʹ�ñ���',
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   TARGET_SITE_NAME     varchar(100) comment 'CV5201.23����/�������λ',
   primary key (ID)
);


drop table if exists hc_schedule;

/*==============================================================*/
/* Table: hc_schedule                                           */
/*==============================================================*/
create table hc_schedule
(
   id                   bigint not null comment 'PK�����������к�',
   identity_card_num    varchar(30) comment '�������֤��',
   name                 varchar(60) comment '��������',
   sex                  varchar(1) comment '�����Ա�',
   birthdate            datetime comment '���߳�������',
   address              varchar(400) comment '������ϵ��ַ',
   phone_num            varchar(20) comment '������ϵ�绰',
   mobile_phone_num     varchar(20) comment '�����ƶ��绰',
   hospital_code        varchar(30) comment 'ҽԺ����֯��������',
   hospital_name        varchar(140) comment 'ԤԼҽԺ����',
   department_code      varchar(30) comment 'ԤԼ���ұ���',
   department_name      varchar(140) comment 'ԤԼ��������',
   department_location  varchar(200) comment '����λ��',
   doctor_code          varchar(30) comment 'ԤԼҽ������',
   doctor_name          varchar(60) comment 'ԤԼҽ������',
   is_expert            int(1) comment '0-��ͨ��1-ר��',
   register_type        int(1) comment '1-��ͨ�Һţ�2-����Һ�',
   workshift_id         varchar(30) comment '���ID',
   visit_date           datetime comment '��������',
   workshift_class      int(1) comment '1-���磬2-���磬3-���죬4-ҹ�䣬5-ȫ��',
   time_point_id        varchar(20) comment '��ԴID',
   visit_series_num     varchar(4) comment '����˳���',
   time_point_desc      varchar(100) comment '��Դ����',
   plan_visit_time_start datetime comment '�ƻ����￪ʼʱ��',
   plan_visit_time_end  datetime comment '�ƻ��������ʱ��',
   register_fee         numeric(9,2) comment '�Һŷ���',
   payment_status       int(1) comment '֧��״̬',
   payment_mode         int(1) comment '֧����ʽ',
   payment_series_num   varchar(50) comment '���׺�',
   payment_date_time    datetime comment '֧��ʱ��',
   register_from        varchar(140) comment '�Һ���Դ����',
   register_from_memo   varchar(30) comment '�Һ���Դ��ע',
   regist_operator_name varchar(60) comment '�ҺŲ���������',
   regist_date_time     datetime comment '�Һ�ʱ��',
   his_register_series_num varchar(30) comment 'HIS�Һ���ˮ��',
   cancel_flag          int(1) comment '�˺ű�־',
   cancel_from          varchar(140) comment '�˺���Դ',
   cancel_from_memo     varchar(30) comment '�˺���Դ��ע',
   cancel_operator_name varchar(60) comment '�˺Ų���������',
   cancel_date_time     datetime comment '�˺�ʱ��',
   stop_flag            int(1) comment 'ͣ���־',
   stop_reason          varchar(400) comment 'ͣ��ԭ��',
   stop_operator_name   varchar(60) comment 'ͣ�����������',
   stop_date_time       datetime comment 'ͣ��ʱ��',
   visit_id             varchar(30) comment '�����',
   primary key (id)
);

alter table hc_schedule comment '�Һż�¼';


drop table if exists HC_EXAM_REPORT;

/*==============================================================*/
/* Table: HC_EXAM_REPORT                                        */
/*==============================================================*/
create table HC_EXAM_REPORT
(
   ID                   int not null comment 'PK�����������к�',
   VISIT_ID             varchar(50) not null comment '�����ھ���������',
   EXAM_NO              varchar(20) comment '������Ψһ��ʶһ���������¼',
   REPORT_ITEM_NO       int comment '��ͬһ����ı�����Ŀ���',
   REPORT_ITEM_CODE     varchar(10) comment '������Ŀ��Ӧ�Ĵ���',
   REPORT_ITEM_NAME     varchar(30) comment '�����ƿ��ܲ�ͬ��������Ŀ����',
   EXAM_PARAMETER       varchar(200),
   DESCRIPTION          varchar(200),
   IMPRESSION           varchar(200),
   RECOMMENDATION       varchar(200),
   IS_ABNORMAL          varchar(1) comment '1-���ԣ����������в��䣬����Ϊ����',
   FILE_NAME            varchar(255),
   FILE_PATH            varchar(255),
   DATA_TYPE            varchar(50) comment '�����ļ��Ĵ洢��ʽ���ͣ���PDF��HTML��',
   VISIT_HCO_CODE       varchar(30) comment 'ʹ�ñ���',
   VISIT_HCO_NAME       varchar(70),
   primary key (ID)
);

drop table if exists HC_EXAM_INDEX;

/*==============================================================*/
/* Table: HC_EXAM_INDEX                                         */
/*==============================================================*/
create table HC_EXAM_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK�����������к�',
   VISIT_ID             varchar(50) comment '�����ھ���������',
   IDENTITY_NO          varchar(30) comment '���˱�ʶ',
   HIS_EXAM_NO          varchar(20) comment '������Ψһ��ʶһ���������¼',
   EXAM_CLASS           varchar(20) comment '���ָ�����',
   EXAM_SUB_CLASS       varchar(20) comment '����һ�ּ�����µĸ����࣬�糬�����µĸ��������ࡢ����������',
   EXAM_ITEMS_NAME      varchar(200) comment '����ڶ�������Ŀ��������ı�ƴ��',
   REQUEST_DATE_TIME    datetime comment '���μ�������ʱ��',
   REQUEST_DEPT_CODE    varchar(30) comment '������Ҵ���',
   REQUEST_DEPT_NAME    varchar(70) comment '�����������',
   REQUEST_DOCTOR_NAME  varchar(30) comment '����ҽ������',
   EXAM_DATE_TIME       datetime comment '���ʱ��',
   EXAM_DOCTOR_NAME     varchar(30) comment '���ҽ������',
   CONCLUSION           varchar(500) comment '������',
   REPORT_DATE_TIME     datetime,
   REPORT_DOCTOR_NAME   varchar(30),
   CHARGE_FLAG          varchar(1) comment '0δ�շ�
            1���շ�
            ',
   BILL_NO              varchar(30),
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   EXAM_ITEMS_CODE      varchar(200) comment '����ڶ�������Ŀ��������ı�ƴ��',
   primary key (ID)
);


drop table if exists HC_LAB_TEST_RESULT;

/*==============================================================*/
/* Table: HC_LAB_TEST_RESULT                                    */
/*==============================================================*/
create table HC_LAB_TEST_RESULT
(
   ID                   int not null,
   VISIT_ID             varchar(50) not null comment '�����ھ���������',
   HIS_LAB_TEST_NO      varchar(20) comment '������Ψһ��ʶһ����������¼',
   REPORT_ITEM_NO       int comment '��ͬһ����ı�����Ŀ���',
   REPORT_ITEM_CODE     varchar(10) comment '������Ŀ��Ӧ�Ĵ���',
   REPORT_ITEM_NAME     varchar(30) comment '�����ƿ��ܲ�ͬ��������Ŀ����',
   RESULT               varchar(200) comment '���������������Ƕ���������Ҳ�����Ƕ�����ֵ������û��ֵ����Ŀ��ʹ�ô��ֶ�',
   UNITS                varchar(20) comment '�Լ�����Ϊ��ֵ�͵���Ŀʹ�ô��ֶ�',
   ABNORMAL_FLAG        varchar(1) comment '�����������־��
            N-���� 
            L-�� 
            H-��
            ',
   INSTRUMENT_ID        varchar(8) comment 'ͬ��������������Ŀ�����ж����������ţ��ֹ�������ʱΪ���ֹ���',
   RESULT_DATE_TIME     datetime comment '������������ں�ʱ�䡣�Զ��ɼ����ʱ�ɲɼ���������ɣ��ֹ���д���ʱ��¼�봦��ļ�������ɡ�',
   REFER_CONTEXT        varchar(200) comment '�����Ŀ����Ӧ�������ο���Χ ',
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
   VISIT_ID             varchar(50) comment '�����ھ���������',
   IDENTITY_NO          varchar(30) comment '���˱�ʶ',
   HIS_LAB_TEST_NO      varchar(20) comment '������Ψһ��ʶһ����������¼',
   SUBJECT_CODE         varchar(200) comment '��ӳ���������Ҫ���ݣ���ѪҺ��������㳣���',
   SUBJECT_NAME         varchar(200) comment '��ӳ���������Ҫ���ݣ���ѪҺ��������㳣���',
   REQUEST_DATE_TIME    datetime comment '���μ�������ʱ��',
   REQUEST_DEPT_CODE    varchar(30) comment '������Ҵ���',
   REQUEST_DEPT_NAME    varchar(70) comment '�����������',
   REQUEST_DOCTOR_NAME  varchar(30) comment '����ҽ������',
   BLOOD_TEST_FLAG      varchar(1) comment '0 �� 1 ��',
   SPECIMEN_CODE        varchar(20),
   SPECIMEN_NAME        varchar(50) comment 'ʹ�ñ�׼��������Ѫ�����',
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
   CHARGE_FLAG          varchar(1) comment '0δ�շ�
            1���շ�
            ',
   BILL_NO              varchar(30),
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   primary key (ID)
);


drop table if exists HC_DOCUMENT_INDEX;

/*==============================================================*/
/* Table: HC_DOCUMENT_INDEX                                     */
/*==============================================================*/
create table HC_DOCUMENT_INDEX
(
   ID                   int(6) not null auto_increment comment 'PK�����������к�',
   VISIT_ID             varchar(50) not null comment '��Դ�ھ���������',
   HIS_DOCUMENT_ID      varchar(20) comment '������Ψһ��ʶһ��������¼',
   DOCUMENT_NAME        varchar(100) comment '���硰��Ժ��¼��',
   CREATOR              varchar(30),
   CREAT_DATE_TIME      datetime,
   LAs_EDITOR           varchar(30),
   LAST_EDIT_DATE_TIME  datetime,
   VISIT_HCO_CODE       varchar(30),
   VISIT_HCO_NAME       varchar(70),
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   primary key (ID)
);

drop table if exists HC_HOSPITAL;

/*==============================================================*/
/* Table: HC_HOSPITAL                                           */
/*==============================================================*/
create table HC_HOSPITAL
(
   ID                   int not null auto_increment comment 'ƽ̨����',
   HOS_NAME             varchar(100) comment 'ҽԺ����',
   ALIAS_NAME           varchar(200) comment 'ҽԺ����(����Զ��Ÿ���)',
   HOS_TYPE             varchar(10) comment 'ҽԺ����(�ֵ�)',
   HOS_LEVEL            varchar(10) comment 'ҽԺ�ȼ�(�ֵ�)',
   TCM                  varchar(10) comment '����ҽ',
   TEL                  varchar(20) comment '��ϵ�绰',
   ADDRES               varchar(200) comment '��ϵ��ַ',
   URL                  varchar(200) comment '�ٷ���ַ',
   PLAT_CODE            varchar(30) comment '��֯��������',
   INTRO                varchar(4000) comment 'ҽԺ����',
   BOOK_COUNT           int comment '�ɹ�ԤԼ��',
   WEIBO                varchar(50) comment '�ٷ�΢��',
   WEIXIN               varchar(50) comment '΢��',
   GIS_LNG              numeric(10,6) comment '������',
   GIS_LAT              numeric(10,6) comment '����γ��',
   SCH_TIME             varchar(10) comment '�ź�ʱ��(HH24:MI)',
   AREA_ID              varchar(30) comment '��������(�ֵ�)',
   HOS_STATE            varchar(1) comment 'ҽԺ״̬(1-����ԤԼ;2-��ͣҽԺ;3-ע��)',
   MODIFY_TIME          datetime comment '�޸�ʱ��',
   HOS_ROUTE            varchar(2000) comment '��ͨ·��',
   FEATURE_DEPT         varchar(100) comment '��ɫ����',
   PY_CODE              varchar(20) comment 'ƴ����',
   IDX_NAME             varchar(200) comment '������(�����ò���ʾ)',
   SCAN                 varchar(1) comment '�����ά��ɨ�裨1�ߴ洢���̲�ѯ��',
   APK_NAME             varchar(200) comment '��Ӧapkά��',
   CUSTOM_CODE          varchar(20) comment '�Զ�����',
   HOS_PHOTO            varchar(200) comment 'ҽԺͼƬ',
   INVALID_FLAG         varchar(1) comment '���ϱ�־',
   HIS_INTERFACE        varchar(100) comment 'Ժ�ڽӿڵ�ַ',
   primary key (ID)
);

drop table if exists HC_DIAGNOSIS;

/*==============================================================*/
/* Table: HC_DIAGNOSIS                                          */
/*==============================================================*/
create table HC_DIAGNOSIS
(
   DIAGNOSIS_ID         int(6) not null auto_increment comment 'PK�����������к�',
   VISIT_ID             varchar(60) not null comment '�����ھ���������',
   DIAGNOSIS_ITEM_TYPE  varchar(2) comment '�������',
   DIAGNOSIS_DOCTOR_NAME varchar(30) comment '���ҽ������',
   DIAGNOSIS_DATE_TIME  datetime comment '���ʱ��',
   HIS_DIAGNOSIS_ID     varchar(16) comment '���Ի����ڲ�����ţ�����׷��',
   DIAGNOSIS_ITEM_NO    varchar(2) comment '��ʾ���ι�ϵ����1��ʼ���У�1��ʾ��Ҫ��ϣ�����1�ı�ʾ�������',
   DIAGNOSIS_ITEM_CODE  varchar(20) comment 'ʹ�ñ�׼���룬����I10.x00',
   DIAGNOSIS_ITEM_NAME  varchar(400) comment '��ϳ����ļ������ƣ������Ѫѹ',
   OLD_FLAG             int comment 'ԭ�б�־0-��1-��',
   NEW_FLAG             int comment '�·���־0-��1-��',
   SUSPECTED_FLAG       int comment '���Ʊ�־0-��1-��',
   DIAGNOSIS_ITEM_MEMO  varchar(400) comment '����ϵĲ���˵�������硰��Σ��',
   VISIT_HCO_CODE       varchar(30) comment '������������',
   VISIT_HCO_NAME       varchar(140) comment '�����������',
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   primary key (DIAGNOSIS_ID)
);

alter table HC_DIAGNOSIS comment '��ϼ�¼';

drop table if exists HC_ALLERGY_HISTORY;

/*==============================================================*/
/* Table: HC_ALLERGY_HISTORY                                    */
/*==============================================================*/
create table HC_ALLERGY_HISTORY
(
   ID                   int(6) not null auto_increment comment '��������',
   IDENTITY_NO          varchar(30) comment 'ƽ̨�ڸ���Ψһ��ʶ���ǽ�����Ա���ֶοɿ�',
   VISIT_ID             varchar(50) not null comment '�����ھ���������',
   HIS_ALLERGEN_ID      varchar(20) comment 'His�и�������ʷ��¼��ID',
   INFO_SOURCE_TYPE     varchar(1) comment '1-���ԣ�2-ѯ�ʡ�ͨ����⣨����Ƥ�ԡ����飩��ȡ����Ϣ��ԴΪ���ԣ�ͨ��ѯ�ʻ��߻������ȡ����Ϣ��ԴΪѯ��',
   ALLERGEN_CODE        varchar(20) comment '��׼����ֵ��-CV05.01.038',
   ALLERGEN_NAME        varchar(100) not null comment '�������ƣ��������Դ�����ֶ�ֵ��101-��ù���࿹���أ������Ǿ������ù���࿹��ҩ������ƣ����簢Ī����',
   ALLERGY_SYMPTOM      varchar(300),
   EDITOR               varchar(30),
   EDITOR_DATE_TIME     datetime,
   RECORD_HCO_CODE      varchar(30),
   RECORD_HCO_NAME      varchar(70),
   del_sign             int comment 'ɾ����־',
   del_user_code        varchar(20) comment 'ɾ�������߱���',
   del_user_name        varchar(50) comment 'ɾ��������',
   del_datetime         datetime comment 'ɾ��ʱ��',
   primary key (ID)
);

alter table HC_ALLERGY_HISTORY comment '����ʷ��Ϣ';

drop table if exists SYS_DIVISION;

/*==============================================================*/
/* Table: SYS_DIVISION                                          */
/*==============================================================*/
create table SYS_DIVISION
(
   ID                   int not null auto_increment comment 'ID',
   DIVISION_CODE        varchar(30) comment '��������',
   DIVISION_NAME        varchar(100) comment '��������',
   DIVISION_TYPE        varchar(10) comment '1.ʡ��2.�С�3.��',
   UP_DIVISION          varchar(30) comment '�ϼ�����',
   POSTAL_CODE          varchar(6) comment '��������',
   ORDER_NO             int comment '˳���',
   PY_CODE              varchar(20) comment 'ƴ����',
   INVALID_FLAG         varchar(1) comment '���ϱ�־',
   CREATER              int comment '������',
   CREATE_TIME          datetime comment '��������',
   MODIFIER             int comment '�޸���',
   MODIFY_TIME          datetime comment '�޸�����',
   primary key (ID)
);

alter table SYS_DIVISION comment 'SYS_��������';


drop table if exists TS_TERMINOLOGY_DOMAIN;

/*==============================================================*/
/* Table: TS_TERMINOLOGY_DOMAIN                                 */
/*==============================================================*/
create table TS_TERMINOLOGY_DOMAIN
(
   ID                   int not null comment '���',
   SYSTEM_ID            int comment '��������ϵͳ',
   CODE                 varchar(50) comment '����',
   VERSION              varchar(50) comment '�汾��',
   INPUT_CODE           varchar(50) comment '������',
   CNAME                varchar(100) comment '��������',
   ENAME                varchar(100) comment 'Ӣ������',
   DESCN                varchar(255) comment '����',
   INVALID_FLAG         varchar(1) comment '���ϱ�־',
   primary key (ID)
);

alter table TS_TERMINOLOGY_DOMAIN comment 'TS_�������';

drop table if exists TS_TERMINOLOGY;

/*==============================================================*/
/* Table: TS_TERMINOLOGY                                        */
/*==============================================================*/
create table TS_TERMINOLOGY
(
   ID                   int not null comment '���',
   DOMAIN_ID            int comment '��������',
   CODE                 varchar(50) comment 'ֵ',
   MEANING              varchar(255) comment 'ֵ����',
   DESCN                varchar(255) comment '����',
   ISSTANDARD           varchar(1) comment '�Ƿ�Ϊ��׼',
   INPUT_CODE           varchar(50) comment '������',
   LOW_LIMIT            varchar(100) comment '����ֵ',
   HIGH_LIMIT           varchar(100) comment '����ֵ',
   DEFAULT_FLAG         varchar(1) comment 'Ĭ�ϱ�־',
   INVALID_FLAG         varchar(1) comment '���ϱ�־',
   primary key (ID)
);

alter table TS_TERMINOLOGY comment 'TS_�����';



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