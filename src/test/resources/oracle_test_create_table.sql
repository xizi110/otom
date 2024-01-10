

--交割明细表
create table XF_FX_DELIVERY
(
  DELIVERYID        NUMBER(16) not null,
  BUSINESSNO        VARCHAR2(50) not null,
  TRADEPLAT         VARCHAR2(30) not null,
  PRODUCTID         NUMBER(20) not null,
  ORGPRODUCTID      NUMBER(20) not null,
  ORGINPUTCHANNEL   INTEGER,
  ACCSTATUS         INTEGER not null,
  APPID             NUMBER(2) not null,
  TRADETYPE         number(2) not null,
  ISFARDELIVERY     INTEGER not null,
  SPECIALSTATE      INTEGER not null,
  INPUTCHANNEL      INTEGER not null,
  GROUPTYPE         INTEGER not null,
  CYCODE1           VARCHAR2(10) not null,
  CYCODE2           VARCHAR2(10) not null,
  AMOUNT1           NUMBER(18,2) not null,
  AMOUNT2           NUMBER(18,2),
  NETCYCODE         VARCHAR2(10),
  NETAMOUNT         NUMBER(24,2),
  MASTERBANK        VARCHAR2(16) not null,
  BANKID            VARCHAR2(16) not null,
  USDAMOUNT         NUMBER(18,2),
  CYCODE1ACCTYPE    NUMBER(1),
  CYCODE1ACCOUNT    VARCHAR2(50),
  CYCODE2ACCTYPE    NUMBER(1),
  CYCODE2ACCOUNT    VARCHAR2(50),
  NETACCTYPE        VARCHAR2(1),
  NETACCOUNT        VARCHAR2(50),
  SUBTELLERID       VARCHAR2(60),
  SUBTELLERNAME     VARCHAR2(60),
  CHECKTELLERID     VARCHAR2(60),
  CHECKTELLERNAME   VARCHAR2(60),
  DELIVERYDATE      INTEGER not null,
  SOURCENO          NUMBER(16) not null,
  SOURCETYPE        INTEGER not null,
  HEADNO            NUMBER(16) not null,
  HEADTYPE          INTEGER not null,
  RATE              NUMBER(16,8),
  USEAMOUNT         NUMBER(24,2),
  BUYORSELL         VARCHAR2(3),
  CUSTOMERID        VARCHAR2(30),
  OUTCUSTOMERID     VARCHAR2(30),
  CUSTNAME          VARCHAR2(400),
  DELIVERYIDINT     NUMBER(16),
  GLSTATUS          INTEGER,
  DAYS              INTEGER,
  BLOCKNUMBER       NUMBER(16) not null,
  MASTERTELLERID    VARCHAR2(60),
  MASTERTELLERNAME  VARCHAR2(60),
  CLEARERRMSG       VARCHAR2(500),
  CAPTUREDATE       NUMBER(8),
  ALLAPPROVALNO     VARCHAR2(80),
  SRCCYCODE1AMT     NUMBER(18,2),
  SRCCYCODE2AMT     NUMBER(18,2),
  SRCCYCODE1NEARAMT NUMBER(18,2),
  SRCCYCODE2NEARAMT NUMBER(18,2),
  TRADECHGFLAG      NUMBER(1),
  BOOKINGID         VARCHAR2(15),
  CALCYCODE         INTEGER,
  EARLYAPPOINTFLG   NUMBER(1),
  ACCTYPE           INTEGER not null,
  GLDATE            INTEGER,
  GLCANDATE         INTEGER,
  ATTR1             VARCHAR2(50),
  ATTR2             VARCHAR2(50),
  ATTR3             VARCHAR2(50),
  CLIENTATTR1       VARCHAR2(50),
  CLIENTATTR2       VARCHAR2(50),
  CLIENTATTR3       VARCHAR2(50),
  CLIENTATTR4       VARCHAR2(50),
  orgLegFlag char(1)
);
comment on table XF_FX_DELIVERY
  is '交割明细表';
comment on column XF_FX_DELIVERY.DELIVERYID
  is '交割流水号';
comment on column XF_FX_DELIVERY.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_DELIVERY.TRADEPLAT
  is '交易台';
comment on column XF_FX_DELIVERY.PRODUCTID
  is '产品ID';
comment on column XF_FX_DELIVERY.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_DELIVERY.ORGINPUTCHANNEL
  is '原始交易来源';
comment on column XF_FX_DELIVERY.ACCSTATUS
  is '交割状态 0-正常 1-撤消';
comment on column XF_FX_DELIVERY.APPID
  is '产品类型 1-外汇，2-结售汇';
comment on column XF_FX_DELIVERY.TRADETYPE
  is '交易类型 0-即期 1-远期 2-择期 3-掉期';
comment on column XF_FX_DELIVERY.ISFARDELIVERY
  is '交易腿类型 0-默认 1-掉期近端 2 –掉期远端';
comment on column XF_FX_DELIVERY.SPECIALSTATE
  is '特殊交易状态0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘';
comment on column XF_FX_DELIVERY.INPUTCHANNEL
  is '交易渠道 0-x-funds 1-xpads 2-外汇交易中心 3-国结系统';
comment on column XF_FX_DELIVERY.GROUPTYPE
  is '交易性质 0-代客交易，1-总分交易， 2-自营交易3-平盘交易 4-部门交易';
comment on column XF_FX_DELIVERY.CYCODE1
  is '货币1';
comment on column XF_FX_DELIVERY.CYCODE2
  is '货币2';
comment on column XF_FX_DELIVERY.AMOUNT1
  is '货币1交割金额';
comment on column XF_FX_DELIVERY.AMOUNT2
  is '货币2交割金额';
comment on column XF_FX_DELIVERY.NETCYCODE
  is '轧差货币';
comment on column XF_FX_DELIVERY.NETAMOUNT
  is '轧差金额';
comment on column XF_FX_DELIVERY.MASTERBANK
  is '总行机构号';
comment on column XF_FX_DELIVERY.BANKID
  is '交易发生机构号';
comment on column XF_FX_DELIVERY.USDAMOUNT
  is '折美元金额';
comment on column XF_FX_DELIVERY.CYCODE1ACCTYPE
  is '货币1账号类型 0-内部账号 1-客户账号';
comment on column XF_FX_DELIVERY.CYCODE1ACCOUNT
  is '货币1客户账户';
comment on column XF_FX_DELIVERY.CYCODE2ACCTYPE
  is '货币2账号类型 0-内部账号 1-客户账号';
comment on column XF_FX_DELIVERY.CYCODE2ACCOUNT
  is '货币2客户账户';
comment on column XF_FX_DELIVERY.NETACCTYPE
  is '轧差账号类型 0-内部账号 1-客户账号';
comment on column XF_FX_DELIVERY.NETACCOUNT
  is '轧差账户';
comment on column XF_FX_DELIVERY.SUBTELLERID
  is '经办柜员号';
comment on column XF_FX_DELIVERY.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_DELIVERY.CHECKTELLERID
  is '复核柜员号';
comment on column XF_FX_DELIVERY.CHECKTELLERNAME
  is '复核柜员姓名';
comment on column XF_FX_DELIVERY.DELIVERYDATE
  is '交割日期';
comment on column XF_FX_DELIVERY.SOURCENO
  is '原交易流水号 ';
comment on column XF_FX_DELIVERY.SOURCETYPE
  is '原交易交易类型';
comment on column XF_FX_DELIVERY.HEADNO
  is '原始交易流水号 ';
comment on column XF_FX_DELIVERY.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_DELIVERY.RATE
  is '交割汇率';
comment on column XF_FX_DELIVERY.USEAMOUNT
  is '剩余交割金额';
comment on column XF_FX_DELIVERY.BUYORSELL
  is '买卖方向';
comment on column XF_FX_DELIVERY.CUSTOMERID
  is '客户号';
comment on column XF_FX_DELIVERY.OUTCUSTOMERID
  is '核心客户号';
comment on column XF_FX_DELIVERY.CUSTNAME
  is '客户名称';
comment on column XF_FX_DELIVERY.DELIVERYIDINT
  is '关联交割流水号';
comment on column XF_FX_DELIVERY.GLSTATUS
  is '清算状态 0-未清算、1-清算失败、2-清算成功、3-无需清算、4-未明状态 ';
comment on column XF_FX_DELIVERY.DAYS
  is '原交易期限天数';
comment on column XF_FX_DELIVERY.BLOCKNUMBER
  is '套号流水(对应当前交割交易的套号流水)';
comment on column XF_FX_DELIVERY.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_DELIVERY.MASTERTELLERNAME
  is '总行柜员名称';
comment on column XF_FX_DELIVERY.CLEARERRMSG
  is '清算失败原因';
comment on column XF_FX_DELIVERY.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_DELIVERY.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_DELIVERY.SRCCYCODE1AMT
  is '原交易货币1使用金额，方向原交易';
comment on column XF_FX_DELIVERY.SRCCYCODE2AMT
  is '原交易货币2使用金额，方向原交易';
comment on column XF_FX_DELIVERY.SRCCYCODE1NEARAMT
  is '原交易货币1近端使用金额，方向原交易（全部平仓掉期近端，掉期近端交割）';
comment on column XF_FX_DELIVERY.SRCCYCODE2NEARAMT
  is '原交易货币2近端使用金额，方向原交易（全部平仓掉期近端，掉期近端交割）';
comment on column XF_FX_DELIVERY.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_DELIVERY.BOOKINGID
  is '实体ID';
comment on column XF_FX_DELIVERY.CALCYCODE
  is '交易发生货币';
comment on column XF_FX_DELIVERY.EARLYAPPOINTFLG
  is '预约标识（CF13：1-非预约 2-近端预约 3-远端预约（远期和掉期远端用））';
comment on column XF_FX_DELIVERY.ACCTYPE
  is '账类别 0-客户账  1-总分账';
comment on column XF_FX_DELIVERY.gldate
  is '清算成功日期(成功、无需清算日期),只有清算成功或者无需清算，其余状态，值默认空，更新状态时候同步处理';
comment on column XF_FX_DELIVERY.glcandate
  is '撤销冲正清算成功、无需清算日期(成功、无需清算日期)，更新状态时候同步处理';
comment on column XF_FX_DELIVERY.ATTR1
  is '其它1';
comment on column XF_FX_DELIVERY.ATTR2
  is '其它2';
comment on column XF_FX_DELIVERY.ATTR3
  is '其它3';
comment on column XF_FX_DELIVERY.CLIENTATTR1
  is '实施其它1';
comment on column XF_FX_DELIVERY.CLIENTATTR2
  is '实施其它2';
comment on column XF_FX_DELIVERY.CLIENTATTR3
  is '实施其它3';
comment on column XF_FX_DELIVERY.CLIENTATTR4
  is '实施其它4';
comment on column XF_FX_DELIVERY.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';

--总分远期交易表
create table XF_FX_FWDDEALS
(
  DOWNLOADKEY      NUMBER(16) not null,
  DOWNLOADKEYINT   NUMBER(16) not null,
  BLOCKNUMBER      NUMBER(16) not null,
  BUSINESSNO       VARCHAR2(50) not null,
  APPID            NUMBER(2) not null,
  TYPE             INTEGER not null,
  TRANMODE         INTEGER not null,
  GROUPTYPE        INTEGER not null,
  TRADESTATUS      number(1) not null,
  SPECIALSTATE     NUMBER(10) not null,
  INPUTMODE        INTEGER not null,
  TERMID           VARCHAR2(10) not null,
  DAYS             INTEGER not null,
  MASTERBANK       VARCHAR2(16) not null,
  BANKID           VARCHAR2(16) not null,
  BUYORSELL        VARCHAR2(3) not null,
  CYCODE1          VARCHAR2(10) not null,
  CYCODE2          VARCHAR2(10) not null,
  CALCYCODE        INTEGER,
  AMOUNT1          NUMBER(18,2),
  AMOUNT2          NUMBER(18,2),
  USDAMOUNT        NUMBER(18,2),
  USDCYCODERATE    NUMBER(15,8),
  SPOTRATE         NUMBER(15,8),
  FARCOSTPOINTS    NUMBER(18,2),
  FARCOSTRATE      NUMBER(15,8),
  VALUEDATE        INTEGER not null,
  OPTIONDATE       INTEGER,
  MATURITYDATE     INTEGER not null,
  TRADETIME        number(6) not null,
  TRADEDATE        number(8) not null,
  TELLERID         VARCHAR2(60),
  TELLERNAME       VARCHAR2(60),
  MASTERTELLERID   VARCHAR2(60),
  MASTERTELLERNAME VARCHAR2(60),
  SUBTELLERID      VARCHAR2(60),
  SUBTELLERNAME    VARCHAR2(60),
  INPUTCHANNEL     INTEGER not null,
  MEMO             VARCHAR2(2000),
  SOURCETYPE       INTEGER,
  SOURCENO         NUMBER(16),
  HEADNO           NUMBER(16),
  HEADTYPE         INTEGER,
  BRANCHBANK       VARCHAR2(16),
  SUBBRANCHBANK    VARCHAR2(16),
  OUTLETSBANK      VARCHAR2(16),
  RPTUSDAMOUNT     NUMBER(18,2),
  RPTUSDRATE       NUMBER(15,8),
  USDCNYRATE       NUMBER(15,8),
  USDCNYFARRATE    NUMBER(15,8),
  ISRISKCTL        NUMBER(1) not null,
  CAPTUREDATE      NUMBER(8),
  ALLAPPROVALNO    VARCHAR2(80),
  BOOKINGID        VARCHAR2(15),
  CNYRATE          NUMBER(15,8),
  CNYAMT           NUMBER(18,2),
  BREACHFLAG       NUMBER(1),
  BREACHRMK        VARCHAR2(310),
  MASTERCHECKID    VARCHAR2(60),
  MASTERCHECKNAME  VARCHAR2(50),
  TRADECHGFLAG     NUMBER(1),
  DELIVERYFLAG     NUMBER(1),
  TRADEPLAT        VARCHAR2(30) not null,
  PRODUCTID        NUMBER(20) not null,
  ORGPRODUCTID     NUMBER(20) not null,
  ORGINPUTCHANNEL  INTEGER,
  OTHBUS           VARCHAR2(2),
  OTHBUSKEY        VARCHAR2(50),
  OTHDOWNKEY       NUMBER(16),
  COSTATTR1            VARCHAR2(50),
  COSTATTR2            VARCHAR2(50),
  COSTATTR3            VARCHAR2(50),
  CLIENTCOSTATTR1      VARCHAR2(50),
  CLIENTCOSTATTR2      VARCHAR2(50),
  CLIENTCOSTATTR3      VARCHAR2(50),
  CLIENTCOSTATTR4      VARCHAR2(50),
  orgLegFlag char(1),
  tranCode VARCHAR2(60)
);
comment on table XF_FX_FWDDEALS
  is '总分远期交易表';
comment on column XF_FX_FWDDEALS.DOWNLOADKEY
  is '交易唯一流水号';
comment on column XF_FX_FWDDEALS.DOWNLOADKEYINT
  is '分客交易流水号';
comment on column XF_FX_FWDDEALS.BLOCKNUMBER
  is '套号唯一流水';
comment on column XF_FX_FWDDEALS.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_FWDDEALS.APPID
  is '交易产品类型(1-外汇，2-结售汇)';
comment on column XF_FX_FWDDEALS.TYPE
  is '交易类型(1-远期 2-择期)';
comment on column XF_FX_FWDDEALS.TRANMODE
  is '交易模式(0- 市价交易,1-询价交易)';
comment on column XF_FX_FWDDEALS.GROUPTYPE
  is '交易性质(0-代客交易，1-总分交易， 2-自营交易3-平盘交易 4-部门交易)';
comment on column XF_FX_FWDDEALS.TRADESTATUS
  is '交易状态(0-正常 1-撤消)';
comment on column XF_FX_FWDDEALS.SPECIALSTATE
  is '特殊交易类别(0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘)';
comment on column XF_FX_FWDDEALS.INPUTMODE
  is '录入模式(0-分行录入,1-总行补录)';
comment on column XF_FX_FWDDEALS.TERMID
  is '期限名称';
comment on column XF_FX_FWDDEALS.DAYS
  is '天数';
comment on column XF_FX_FWDDEALS.MASTERBANK
  is '总行机构号';
comment on column XF_FX_FWDDEALS.BANKID
  is '交易发生机构号';
comment on column XF_FX_FWDDEALS.BUYORSELL
  is '买卖方向(B-客户买入 S-客户卖出)';
comment on column XF_FX_FWDDEALS.CYCODE1
  is '货币1代码';
comment on column XF_FX_FWDDEALS.CYCODE2
  is '货币2代码';
comment on column XF_FX_FWDDEALS.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_FWDDEALS.AMOUNT1
  is '货币1金额';
comment on column XF_FX_FWDDEALS.AMOUNT2
  is '货币2金额';
comment on column XF_FX_FWDDEALS.USDAMOUNT
  is '折美元金额(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_FWDDEALS.USDCYCODERATE
  is '折美元汇率(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_FWDDEALS.SPOTRATE
  is '即期汇率';
comment on column XF_FX_FWDDEALS.FARCOSTPOINTS
  is '总分掉期点';
comment on column XF_FX_FWDDEALS.FARCOSTRATE
  is '远期总分汇率';
comment on column XF_FX_FWDDEALS.VALUEDATE
  is '即期起息日';
comment on column XF_FX_FWDDEALS.OPTIONDATE
  is '择期开始日期';
comment on column XF_FX_FWDDEALS.MATURITYDATE
  is '到期日';
comment on column XF_FX_FWDDEALS.TRADETIME
  is '交易时间(HHMMSS)';
comment on column XF_FX_FWDDEALS.TRADEDATE
  is '交易日期(YYYYMMDD)';
comment on column XF_FX_FWDDEALS.TELLERID
  is '分行柜员';
comment on column XF_FX_FWDDEALS.TELLERNAME
  is '分行柜员姓名';
comment on column XF_FX_FWDDEALS.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_FWDDEALS.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_FWDDEALS.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_FWDDEALS.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_FWDDEALS.INPUTCHANNEL
  is '交易渠道(0-x-funds 1-核心系统  2-外汇交易中心 3-国结系统)';
comment on column XF_FX_FWDDEALS.MEMO
  is '备注';
comment on column XF_FX_FWDDEALS.SOURCETYPE
  is '原交易交易类型(取原交易的ID)';
comment on column XF_FX_FWDDEALS.SOURCENO
  is '原交易流水号(取原始交易的ID)';
comment on column XF_FX_FWDDEALS.HEADNO
  is '原始交易流水号';
comment on column XF_FX_FWDDEALS.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_FWDDEALS.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_FWDDEALS.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_FWDDEALS.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_FWDDEALS.RPTUSDAMOUNT
  is '折美元金额(报表使用)';
comment on column XF_FX_FWDDEALS.RPTUSDRATE
  is '折美元汇率(报表使用)';
comment on column XF_FX_FWDDEALS.USDCNYRATE
  is '美元到人民币即期汇率';
comment on column XF_FX_FWDDEALS.USDCNYFARRATE
  is '美元到人民币的远期汇率';
comment on column XF_FX_FWDDEALS.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_FWDDEALS.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_FWDDEALS.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_FWDDEALS.BOOKINGID
  is '簿记ID';
comment on column XF_FX_FWDDEALS.CNYRATE
  is '折人币汇率';
comment on column XF_FX_FWDDEALS.CNYAMT
  is '折人民币金额';
comment on column XF_FX_FWDDEALS.BREACHFLAG
  is '平仓原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_FWDDEALS.BREACHRMK
  is '平仓原因说明';
comment on column XF_FX_FWDDEALS.MASTERCHECKID
  is '总行复核人员ID';
comment on column XF_FX_FWDDEALS.MASTERCHECKNAME
  is '总行复核名字';
comment on column XF_FX_FWDDEALS.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_FWDDEALS.DELIVERYFLAG
  is '交割方式（0-无须交割，1-现金交割，2-实物交割）';
comment on column XF_FX_FWDDEALS.TRADEPLAT
  is '交易台';
comment on column XF_FX_FWDDEALS.PRODUCTID
  is '产品ID';
comment on column XF_FX_FWDDEALS.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_FWDDEALS.ORGINPUTCHANNEL
  is '原始交易来源';
COMMENT ON COLUMN XF_FX_FWDDEALS.OTHBUS
  IS '1-外汇 2-结售汇 4-期权 8-货币掉期 20-贵金属';
comment on column XF_FX_FWDDEALS.othbuskey
  is '其他品种业务编号';
comment on column XF_FX_FWDDEALS.othdownkey
  is '其他品种交易流水号';
COMMENT ON COLUMN XF_FX_FWDDEALS.COSTATTR1
  IS '其它1';
COMMENT ON COLUMN XF_FX_FWDDEALS.COSTATTR2
  IS '其它2';
COMMENT ON COLUMN XF_FX_FWDDEALS.COSTATTR3
  IS '其它3';
COMMENT ON COLUMN XF_FX_FWDDEALS.CLIENTCOSTATTR1
  IS '实施其它1';
COMMENT ON COLUMN XF_FX_FWDDEALS.CLIENTCOSTATTR2
  IS '实施其它2';
COMMENT ON COLUMN XF_FX_FWDDEALS.CLIENTCOSTATTR3
  IS '实施其它3';
COMMENT ON COLUMN XF_FX_FWDDEALS.CLIENTCOSTATTR4
  IS '实施其它4';
comment on column XF_FX_FWDDEALS.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';
comment on column xf_fx_fwddeals.tranCode
  is '交易码';

--代客远期交易表
create table XF_FX_FWDTRADE
(
  DOWNLOADKEY      NUMBER(16) not null,
  DOWNLOADKEYINT   NUMBER(16) not null,
  BLOCKNUMBER      NUMBER(16),
  BUSINESSNO       VARCHAR2(50) not null,
  SOURCENO         NUMBER(16),
  HEADNO           NUMBER(16),
  TRADEPLAT        VARCHAR2(30) not null,
  PRODUCTID        NUMBER(20) not null,
  ORGPRODUCTID     NUMBER(20) not null,
  ORGINPUTCHANNEL  INTEGER,
  APPID            NUMBER(2) not null,
  BANKID           VARCHAR2(16) not null,
  CUSTBANK         VARCHAR2(16),
  MASTERBANK       VARCHAR2(16) not null,
  INPUTBANKID      VARCHAR2(16),
  BOOKINGID        VARCHAR2(15),
  BRANCHBANK       VARCHAR2(16),
  SUBBRANCHBANK    VARCHAR2(16),
  OUTLETSBANK      VARCHAR2(16),
  SUBTELLERID      VARCHAR2(60),
  SUBTELLERNAME    VARCHAR2(60),
  TELLERID         VARCHAR2(60),
  TELLERNAME       VARCHAR2(60),
  MASTERTELLERID   VARCHAR2(60),
  MASTERTELLERNAME VARCHAR2(60),
  MASTERCHECKID    VARCHAR2(60),
  MASTERCHECKNAME  VARCHAR2(50),
  CUSTOMERID       VARCHAR2(30),
  OUTCUSTOMERID    VARCHAR2(30),
  CUSTNAME         VARCHAR2(400),
  CUSTMAINMANAGER  VARCHAR2(60),
  CUSTMANAGERNAME  VARCHAR2(60),
  TRADESTATUS      number(1) not null,
  RPTUSDAMOUNT     NUMBER(18,2),
  RPTUSDRATE       NUMBER(15,8),
  USDCNYRATE       NUMBER(15,8),
  CAPTUREDATE      NUMBER(8),
  MEMO             VARCHAR2(2000),
  CUSTMEMO         VARCHAR2(2000),
  SPECIALSTATE     NUMBER(10) not null,
  INPUTMODE        INTEGER not null,
  custFlag        INTEGER,
  TERMID           VARCHAR2(10) not null,
  DAYS             INTEGER not null,
  BUYORSELL        VARCHAR2(3) not null,
  CYCODE1          VARCHAR2(10) not null,
  CYCODE2          VARCHAR2(10) not null,
  CALCYCODE        INTEGER not null,
  CUSTAMT1         NUMBER(18,2),
  CUSTAMT2         NUMBER(18,2),
  USDAMOUNT        NUMBER(18,2),
  USDCYCODERATE    NUMBER(15,8),
  SPOTRATE         NUMBER(15,8),
  FARCUSTPOINTS    NUMBER(18,2),
  FARCUSTRATE      NUMBER(15,8),
  VALUEDATE        INTEGER not null,
  OPTIONDATE       INTEGER,
  MATURITYDATE     INTEGER not null,
  TRADETIME        INTEGER not null,
  TRADEDATE        INTEGER not null,
  CYCODE1ACCTYPE   NUMBER(1),
  CYCODE1ACCOUNT   VARCHAR2(50),
  CYCODE2ACCTYPE   NUMBER(1),
  CYCODE2ACCOUNT   VARCHAR2(50),
  NETACCTYPE       VARCHAR2(1),
  NETACCOUNT       VARCHAR2(50),
  INPUTCHANNEL     INTEGER not null,
  SOURCETYPE       INTEGER,
  HEADTYPE         INTEGER,
  FARCUSTGUIRATE   NUMBER(15,8),
  USDCNYFARRATE    NUMBER(15,8),
  ISRISKCTL        NUMBER(1) not null,
  ALLAPPROVALNO    VARCHAR2(80),
  CNYRATE          NUMBER(15,8),
  CNYAMT           NUMBER(18,2),
  BREACHFLAG       NUMBER(1),
  BREACHRMK        VARCHAR2(310),
  TRADECHGFLAG     NUMBER(1),
  DELIVERYFLAG     NUMBER(1),
  FIXDATE          INTEGER,
  FIXRATETYPE      NUMBER(1),
  FIXRATEFLG       NUMBER(1),
  FIXRATE          NUMBER(18,6),
  TYPE             INTEGER not null,
  CUSTFAVPOINT     NUMBER(12,2) DEFAULT 0,
  BRANCHPROFITPOINT NUMBER(12,2) DEFAULT 0,
  PROFITBRANCHCURR  VARCHAR2(10),
  PROFITBRANCHCURRAMT NUMBER(18,2) DEFAULT 0,
  TRANMODE         INTEGER not null,
  OTHBUS           VARCHAR2(2),
  OTHBUSKEY        VARCHAR2(50),
  OTHDOWNKEY       NUMBER(16),
  ATTR1            VARCHAR2(50),
  ATTR2            VARCHAR2(50),
  ATTR3            VARCHAR2(50),
  CLIENTATTR1      VARCHAR2(50),
  CLIENTATTR2      VARCHAR2(50),
  CLIENTATTR3      VARCHAR2(50),
  CLIENTATTR4      VARCHAR2(50),
  orgLegFlag char(1),
  ratelock CHAR(1) default '0',
  tranCode VARCHAR2(60),
  lastdate date
);
comment on table XF_FX_FWDTRADE
  is '代客远期交易表';
comment on column XF_FX_FWDTRADE.DOWNLOADKEY
  is '交易唯一流水号';
comment on column XF_FX_FWDTRADE.DOWNLOADKEYINT
  is '总分交易流水号';
comment on column XF_FX_FWDTRADE.BLOCKNUMBER
  is '套号唯一流水';
comment on column XF_FX_FWDTRADE.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_FWDTRADE.SOURCENO
  is '原交易流水号';
comment on column XF_FX_FWDTRADE.HEADNO
  is '原始交易流水号';
comment on column XF_FX_FWDTRADE.TRADEPLAT
  is '交易台';
comment on column XF_FX_FWDTRADE.PRODUCTID
  is '产品ID';
comment on column XF_FX_FWDTRADE.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_FWDTRADE.ORGINPUTCHANNEL
  is '原始交易来源';
comment on column XF_FX_FWDTRADE.APPID
  is '产品类型 (1-外汇，2-结售汇)';
comment on column XF_FX_FWDTRADE.BANKID
  is '交易发生机构号';
comment on column XF_FX_FWDTRADE.CUSTBANK
  is '账务机构号';
comment on column XF_FX_FWDTRADE.MASTERBANK
  is '总行机构号';
comment on column XF_FX_FWDTRADE.INPUTBANKID
  is '录入机构号';
comment on column XF_FX_FWDTRADE.BOOKINGID
  is '实体ID';
comment on column XF_FX_FWDTRADE.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_FWDTRADE.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_FWDTRADE.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_FWDTRADE.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_FWDTRADE.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_FWDTRADE.TELLERID
  is '分行复核柜员';
comment on column XF_FX_FWDTRADE.TELLERNAME
  is '分行复核柜员姓名';
comment on column XF_FX_FWDTRADE.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_FWDTRADE.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_FWDTRADE.MASTERCHECKID
  is '总行复核柜员';
comment on column XF_FX_FWDTRADE.MASTERCHECKNAME
  is '总行复核柜员姓名';
comment on column XF_FX_FWDTRADE.CUSTOMERID
  is '内部客户号';
comment on column XF_FX_FWDTRADE.OUTCUSTOMERID
  is '核心客户号';
comment on column XF_FX_FWDTRADE.CUSTNAME
  is '客户名称 ';
comment on column XF_FX_FWDTRADE.CUSTMAINMANAGER
  is '客户经理';
comment on column XF_FX_FWDTRADE.CUSTMANAGERNAME
  is '客户经理名称';
comment on column XF_FX_FWDTRADE.TRADESTATUS
  is '交易状态 (0-正常 1-撤消)';
comment on column XF_FX_FWDTRADE.RPTUSDAMOUNT
  is '折美元金额(报表使用)';
comment on column XF_FX_FWDTRADE.RPTUSDRATE
  is '折美元汇率(报表使用)';
comment on column XF_FX_FWDTRADE.USDCNYRATE
  is '美元到人民币汇率';
comment on column XF_FX_FWDTRADE.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_FWDTRADE.MEMO
  is '摘要';
comment on column XF_FX_FWDTRADE.CUSTMEMO
  is '客户化备注';
comment on column XF_FX_FWDTRADE.SPECIALSTATE
  is '特殊交易类别( 0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期 6-全部平仓 7-反向平盘 10-提前平仓，11-到期平仓，12-近端原价展期，13-近端市价展期，14-近端到期交割，15-近端到期平仓，16-近端提前交割，17-近端提前平仓)';
comment on column XF_FX_FWDTRADE.INPUTMODE
  is '录入模式(0-分行录入,1-总行补录)';
comment on column xf_fx_fwdtrade.custFlag
  is '客户性质(0-企业客户,1-同业客户)';
comment on column XF_FX_FWDTRADE.TERMID
  is '期限名称';
comment on column XF_FX_FWDTRADE.DAYS
  is '天数';
comment on column XF_FX_FWDTRADE.BUYORSELL
  is '买卖方向(B-客户买入 S-客户卖出)';
comment on column XF_FX_FWDTRADE.CYCODE1
  is '货币1代码';
comment on column XF_FX_FWDTRADE.CYCODE2
  is '货币2代码';
comment on column XF_FX_FWDTRADE.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_FWDTRADE.CUSTAMT1
  is '货币1客户金额';
comment on column XF_FX_FWDTRADE.CUSTAMT2
  is '货币2客户金额';
comment on column XF_FX_FWDTRADE.USDAMOUNT
  is '折美元金额(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_FWDTRADE.USDCYCODERATE
  is '折美元汇率(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_FWDTRADE.SPOTRATE
  is '即期汇率';
comment on column XF_FX_FWDTRADE.FARCUSTPOINTS
  is '客户掉期点';
comment on column XF_FX_FWDTRADE.FARCUSTRATE
  is '远期客户汇率';
comment on column XF_FX_FWDTRADE.VALUEDATE
  is '即期起息日';
comment on column XF_FX_FWDTRADE.OPTIONDATE
  is '择期开始日期';
comment on column XF_FX_FWDTRADE.MATURITYDATE
  is '到期日';
comment on column XF_FX_FWDTRADE.TRADETIME
  is '交易时间(HHMMSS)';
comment on column XF_FX_FWDTRADE.TRADEDATE
  is '交易日期(YYYYMMDD)';
comment on column XF_FX_FWDTRADE.CYCODE1ACCTYPE
  is '货币1账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_FWDTRADE.CYCODE1ACCOUNT
  is '货币1客户账号';
comment on column XF_FX_FWDTRADE.CYCODE2ACCTYPE
  is '货币2账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_FWDTRADE.CYCODE2ACCOUNT
  is '货币2客户账号';
comment on column XF_FX_FWDTRADE.NETACCTYPE
  is '轧差账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_FWDTRADE.NETACCOUNT
  is '轧差账户';
comment on column XF_FX_FWDTRADE.INPUTCHANNEL
  is '交易渠道(0-x-funds 1-核心系统  2-外汇交易中心 3-国结系统)';
comment on column XF_FX_FWDTRADE.SOURCETYPE
  is '原交易交易类型(取原交易的ID)';
comment on column XF_FX_FWDTRADE.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_FWDTRADE.FARCUSTGUIRATE
  is '远期客户参考汇率';
comment on column XF_FX_FWDTRADE.USDCNYFARRATE
  is '美元到人民币的远期汇率';
comment on column XF_FX_FWDTRADE.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_FWDTRADE.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_FWDTRADE.CNYRATE
  is '折人币汇率';
comment on column XF_FX_FWDTRADE.CNYAMT
  is '折人民币金额';
comment on column XF_FX_FWDTRADE.BREACHFLAG
  is '平仓原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_FWDTRADE.BREACHRMK
  is '平仓原因说明';
comment on column XF_FX_FWDTRADE.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_FWDTRADE.DELIVERYFLAG
  is '交割方式(0-无需交割2-实物交割，1-现金交割)';
comment on column XF_FX_FWDTRADE.FIXDATE
  is '定盘日';
comment on column XF_FX_FWDTRADE.FIXRATETYPE
  is '定盘汇率类型(CF12：0-BJ9:00 1-BJ15:00 2-实时价)';
comment on column XF_FX_FWDTRADE.FIXRATEFLG
  is '定盘标识（CF08：0-未定盘 1-批量定盘 2-手工改价）';
comment on column XF_FX_FWDTRADE.FIXRATE
  is '定盘汇率';
comment on column XF_FX_FWDTRADE.TYPE
  is '交易类型(1-远期 2-择期)';
comment on column XF_FX_FWDTRADE.TRANMODE
  is '交易模式(0- 市价交易,1-询价交易)';
COMMENT ON COLUMN XF_FX_FWDTRADE.CUSTFAVPOINT
  IS '客户优惠点';
COMMENT ON COLUMN XF_FX_FWDTRADE.BRANCHPROFITPOINT
  IS '分行收益点';
COMMENT ON COLUMN XF_FX_FWDTRADE.PROFITBRANCHCURR
  IS '原币分行损益货币';
COMMENT ON COLUMN XF_FX_FWDTRADE.PROFITBRANCHCURRAMT
  IS '原币分行损益金额（总分和分客价差）';
COMMENT ON COLUMN XF_FX_FWDTRADE.OTHBUS
  IS '1-外汇 2-结售汇 4-期权 8-货币掉期 20-贵金属';
comment on column XF_FX_FWDTRADE.othbuskey
  is '其他品种业务编号';
comment on column XF_FX_FWDTRADE.othdownkey
  is '其他品种交易流水号';
COMMENT ON COLUMN XF_FX_FWDTRADE.ATTR1
  IS '其它1';
COMMENT ON COLUMN XF_FX_FWDTRADE.ATTR2
  IS '其它2';
COMMENT ON COLUMN XF_FX_FWDTRADE.ATTR3
  IS '其它3';
COMMENT ON COLUMN XF_FX_FWDTRADE.CLIENTATTR1
  IS '实施其它1';
COMMENT ON COLUMN XF_FX_FWDTRADE.CLIENTATTR2
  IS '实施其它2';
COMMENT ON COLUMN XF_FX_FWDTRADE.CLIENTATTR3
  IS '实施其它3';
COMMENT ON COLUMN XF_FX_FWDTRADE.CLIENTATTR4
  IS '实施其它4';
comment on column XF_FX_FWDTRADE.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';
comment on column XF_FX_FWDTRADE.ratelock
  is '锁价类型 0-实时价 1-价格 2-收益点 F60';
comment on column xf_fx_fwdtrade.tranCode
is '交易码';
comment on column xf_fx_fwdtrade.lastdate
  is '时间戳';

--外汇委托挂交易表
create table XF_FX_ORDERLOG
(
  DOWNLOADKEY       NUMBER(16) not null,
  BUSINESSNO        VARCHAR2(50) not null,
  APPID             INTEGER not null,
  TYPE              INTEGER,
  LEG1COSTAMT2      NUMBER(18,2),
  LEG2CUSTAMT1      NUMBER(18,2),
  LEG2CUSTAMT2      NUMBER(18,2),
  LEG2COSTAMT1      NUMBER(18,2),
  LEG2COSTAMT2      NUMBER(18,2),
  SPOTRATE          NUMBER(15,8),
  LEG1COSTRATE      NUMBER(15,8),
  LEG2COSTRATE      NUMBER(15,8),
  LEG1CUSTRATE      NUMBER(15,8),
  LEG2CUSTRATE      NUMBER(15,8),
  LEG1FARCOSTPOINTS NUMBER(12,2),
  LEG2FARCOSTPOINTS NUMBER(12,2),
  LEG1FARCUSTPOINTS NUMBER(12,2),
  LEG2FARCUSTPOINTS NUMBER(12,2),
  LEG1FARCOSTRATE   NUMBER(15,8),
  LEG2FARCOSTRATE   NUMBER(15,8),
  LEG1FARCUSTRATE   NUMBER(15,8),
  LEG2FARCUSTRATE   NUMBER(15,8),
  OPTIONDATE        NUMBER(8),
  MATURITYDATE      NUMBER(8),
  TRADETIME         NUMBER(6) not null,
  TRADEDATE         NUMBER(8) not null,
  EFFTIME           NUMBER(6) not null,
  EFFDATE           NUMBER(8) not null,
  CYCODE1ACCTYPE    NUMBER(1),
  CYCODE1ACCOUNT    VARCHAR2(50),
  CYCODE2ACCTYPE    NUMBER(1),
  CYCODE2ACCOUNT    VARCHAR2(50),
  TELLERID          VARCHAR2(60),
  TELLERNAME        VARCHAR2(60),
  MASTERTELLERID    VARCHAR2(60),
  MASTERTELLERNAME  VARCHAR2(60),
  SUBTELLERID       VARCHAR2(60),
  SUBTELLERNAME     VARCHAR2(60),
  CUSTOMERID        VARCHAR2(30),
  CUSTNAME          VARCHAR2(400),
  OUTCUSTOMERID     VARCHAR2(30),
  MEMO              VARCHAR2(2000),
  CUSTMAINMANAGER   VARCHAR2(60),
  CUSTMANAGERNAME   VARCHAR2(60),
  FARCUSTGUIRATE    NUMBER(15,8),
  BRANCHBANK        VARCHAR2(16),
  SUBBRANCHBANK     VARCHAR2(16),
  OUTLETSBANK       VARCHAR2(16),
  ISRISKCTL         NUMBER(1) not null,
  CALAMOUNT         NUMBER(18,2),
  TOUCHTYPE         INTEGER,
  TRADEDEADLINE     INTEGER,
  CNYRATE           NUMBER(15,8),
  CNYAMT            NUMBER(18,2),
  USDAMOUNT         NUMBER(18,2),
  USDCYCODERATE     NUMBER(15,8),
  BREACHFLAG        NUMBER(1),
  BREACHRMK         VARCHAR2(310),
  LASTMODIFYDATE    NUMBER(8),
  MASTERCHECKID     VARCHAR2(60),
  MASTERCHECKNAME   VARCHAR2(50),
  PTEXERATE         NUMBER(18,8),
  SLEXERATE         NUMBER(18,8),
  PTEXEPRICEDATE    DATE,
  SLEXEPRICEDATE    DATE,
  PTEXEACTDATE      DATE,
  SLEXEACTDATE      DATE,
  BOOKINGID         VARCHAR2(15) not null,
  ORDER1JUDGERATE   NUMBER(18,8),
  ORDER2JUDGERATE   NUMBER(18,8),
  TOLERATEPOINT     NUMBER(18,8),
  TRANMODE          INTEGER,
  ORDERTYPE         INTEGER,
  ORDERFLAG         INTEGER,
  CUSTTYPE          VARCHAR2(3) not null,
  TERMID            VARCHAR2(10),
  DAYS              INTEGER,
  MASTERBANK        VARCHAR2(16) not null,
  BANKID            VARCHAR2(16),
  INPUTCHANNEL      INTEGER,
  CUSTBANK          VARCHAR2(16),
  BUYORSELL         VARCHAR2(3) not null,
  CYCODE1           VARCHAR2(10) not null,
  CYCODE2           VARCHAR2(10) not null,
  CALCYCODE         INTEGER not null,
  LEG1CUSTAMT1      NUMBER(18,2),
  LEG1CUSTAMT2      NUMBER(18,2),
  LEG1COSTAMT1      NUMBER(18,2),
  TRADEPLAT         VARCHAR2(30) not null,
  PRODUCTID         NUMBER(20) not null,
  ORGPRODUCTID      NUMBER(20) not null,
  ORGINPUTCHANNEL   INTEGER,
  LEG1CUSTRATEFAVBEF NUMBER(18,8),
  LEG2CUSTRATEFAVBEF NUMBER(18,8),
  LEG1CUSTRATETYPE   INTEGER default 0,
  LEG2CUSTRATETYPE   INTEGER default 0,
  DELIVERYFLAG       INTEGER default 0,
  FIXDATETYPE        INTEGER,
  FIXRATETYPE        INTEGER,
  LEG1COSTRATEFAVBEF NUMBER(18,8),
  LEG2COSTRATEFAVBEF NUMBER(18,8),
  FIXDATE NUMBER(8,0),
  NETACCOUNT VARCHAR2(100),
  NETACCTYPE NUMBER(18,8),
  DELIVERDATETYPE NUMBER(18,8)
)
;
comment on table XF_FX_ORDERLOG
  is '外汇委托挂交易表';
comment on column XF_FX_ORDERLOG.DOWNLOADKEY
  is '交易流水号';
comment on column XF_FX_ORDERLOG.BUSINESSNO
  is '业务编号';
comment on column XF_FX_ORDERLOG.APPID
  is '交易产品类型(1-外汇，2-结售汇) ';
comment on column XF_FX_ORDERLOG.TYPE
  is '交易类型(0-即期 1-远期 2-择期)';
comment on column XF_FX_ORDERLOG.LEG1COSTAMT2
  is '第一腿货币2总分金额';
comment on column XF_FX_ORDERLOG.LEG2CUSTAMT1
  is '第二腿货币1客户金额';
comment on column XF_FX_ORDERLOG.LEG2CUSTAMT2
  is '第二腿货币2客户金额';
comment on column XF_FX_ORDERLOG.LEG2COSTAMT1
  is '第二腿货币1成本金额';
comment on column XF_FX_ORDERLOG.LEG2COSTAMT2
  is '第二腿货币2成本金额';
comment on column XF_FX_ORDERLOG.SPOTRATE
  is '即期市场汇率';
comment on column XF_FX_ORDERLOG.LEG1COSTRATE
  is '即期成本汇率（IF/DONE为IF端，OCO为P/T端）';
comment on column XF_FX_ORDERLOG.LEG2COSTRATE
  is '即期成本汇率（IF/DONE为DONE端，OCO为S/L端）';
comment on column XF_FX_ORDERLOG.LEG1CUSTRATE
  is '即期客户汇率（IF/DONE为IF端，OCO为P/T端）';
comment on column XF_FX_ORDERLOG.LEG2CUSTRATE
  is '即期客户汇率（IF/DONE为DONE端，OCO为S/L端）';
comment on column XF_FX_ORDERLOG.LEG1FARCOSTPOINTS
  is '成本掉期点（IF/DONE为IF端，OCO为P/T端）';
comment on column XF_FX_ORDERLOG.LEG2FARCOSTPOINTS
  is '成本掉期点（IF/DONE为DONE端，OCO为S/L端）';
comment on column XF_FX_ORDERLOG.LEG1FARCUSTPOINTS
  is '客户掉期点（IF/DONE为IF端，OCO为P/T端）';
comment on column XF_FX_ORDERLOG.LEG2FARCUSTPOINTS
  is '客户掉期点（IF/DONE为DONE端，OCO为S/L端）';
comment on column XF_FX_ORDERLOG.LEG1FARCOSTRATE
  is '远期成本汇率（IF/DONE为IF端，OCO为P/T端）';
comment on column XF_FX_ORDERLOG.LEG2FARCOSTRATE
  is '远期成本汇率（IF/DONE为DONE端，OCO为S/L端）';
comment on column XF_FX_ORDERLOG.LEG1FARCUSTRATE
  is '远期客户汇率（IF/DONE为IF端，OCO为P/T端）';
comment on column XF_FX_ORDERLOG.LEG2FARCUSTRATE
  is '远期客户汇率（IF/DONE为DONE端，OCO为S/L端）';
comment on column XF_FX_ORDERLOG.OPTIONDATE
  is '择期开始日期';
comment on column XF_FX_ORDERLOG.MATURITYDATE
  is '到期日';
comment on column XF_FX_ORDERLOG.TRADETIME
  is '交易时间(HHMMSS)';
comment on column XF_FX_ORDERLOG.TRADEDATE
  is '交易日期(YYYYMMDD)';
comment on column XF_FX_ORDERLOG.EFFTIME
  is '生效时间(HHMMSS)';
comment on column XF_FX_ORDERLOG.EFFDATE
  is '生效日期(YYYYMMDD)';
comment on column XF_FX_ORDERLOG.CYCODE1ACCTYPE
  is '货币1账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_ORDERLOG.CYCODE1ACCOUNT
  is '货币1客户账号';
comment on column XF_FX_ORDERLOG.CYCODE2ACCTYPE
  is '货币2账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_ORDERLOG.CYCODE2ACCOUNT
  is '货币2客户账号';
comment on column XF_FX_ORDERLOG.TELLERID
  is '分行柜员';
comment on column XF_FX_ORDERLOG.TELLERNAME
  is '分行柜员姓名';
comment on column XF_FX_ORDERLOG.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_ORDERLOG.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_ORDERLOG.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_ORDERLOG.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_ORDERLOG.CUSTOMERID
  is '客户号';
comment on column XF_FX_ORDERLOG.CUSTNAME
  is '客户名称';
comment on column XF_FX_ORDERLOG.OUTCUSTOMERID
  is '核心客户号';
comment on column XF_FX_ORDERLOG.MEMO
  is '备注';
comment on column XF_FX_ORDERLOG.CUSTMAINMANAGER
  is '客户经理';
comment on column XF_FX_ORDERLOG.CUSTMANAGERNAME
  is '客户经理名称';
comment on column XF_FX_ORDERLOG.FARCUSTGUIRATE
  is '远期客户参考汇率';
comment on column XF_FX_ORDERLOG.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_ORDERLOG.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_ORDERLOG.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_ORDERLOG.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_ORDERLOG.CALAMOUNT
  is '录入金额';
comment on column XF_FX_ORDERLOG.TOUCHTYPE
  is '触碰类型 1-基于即期价 2-基于远期价';
comment on column XF_FX_ORDERLOG.TRADEDEADLINE
  is '即期起息日  T+0  T+1  T+2';
comment on column XF_FX_ORDERLOG.CNYRATE
  is '折人民币汇率';
comment on column XF_FX_ORDERLOG.CNYAMT
  is '折人民币金额';
comment on column XF_FX_ORDERLOG.USDAMOUNT
  is '折美元金额';
comment on column XF_FX_ORDERLOG.USDCYCODERATE
  is '折美元汇率';
comment on column XF_FX_ORDERLOG.BREACHFLAG
  is '撤销原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_ORDERLOG.BREACHRMK
  is '撤销原因说明';
comment on column XF_FX_ORDERLOG.LASTMODIFYDATE
  is '最后修改日期';
comment on column XF_FX_ORDERLOG.MASTERCHECKID
  is '总行复核人员ID';
comment on column XF_FX_ORDERLOG.MASTERCHECKNAME
  is '总行复核人员名称';
comment on column XF_FX_ORDERLOG.PTEXERATE
  is 'PT自动到价时的价格';
comment on column XF_FX_ORDERLOG.SLEXERATE
  is 'SL自动到价时的价格';
comment on column XF_FX_ORDERLOG.PTEXEPRICEDATE
  is 'PT自动到价对应的牌价发布时间';
comment on column XF_FX_ORDERLOG.SLEXEPRICEDATE
  is 'SL自动到价对应的牌价发布时间';
comment on column XF_FX_ORDERLOG.PTEXEACTDATE
  is 'PT自动到价对应实际服务器时间';
comment on column XF_FX_ORDERLOG.SLEXEACTDATE
  is 'SL自动到价对应实际服务器时间';
comment on column XF_FX_ORDERLOG.BOOKINGID
  is '实体ID';
comment on column XF_FX_ORDERLOG.ORDER1JUDGERATE
  is '委托价格判断字段1';
comment on column XF_FX_ORDERLOG.ORDER2JUDGERATE
  is '委托价格判断字段2';
comment on column XF_FX_ORDERLOG.TOLERATEPOINT
  is '容忍点差';
comment on column XF_FX_ORDERLOG.TRANMODE
  is '交易模式(0-市价交易,1-询价交易)';
comment on column XF_FX_ORDERLOG.ORDERTYPE
  is '委托类型 1-P/T委托 2-S/L委托 3-IF/DONE委托 4-OCO委托';
comment on column XF_FX_ORDERLOG.ORDERFLAG
  is '委托状态：-1-委托撤销 0-委托挂单 1-P/T到价 2-S/L到价 3-IF到价 4-IF成交 5-IF到价DONE到价 6-P/T成交 7-S/T成交 8-IF成交DONE到价 9-DONE成交 10-委托过期 11-IF到价DONE到价（只用于显示DONE到价）';
comment on column XF_FX_ORDERLOG.CUSTTYPE
  is '客户性质 (1 - 同业,2 - 对公,3 - 对私)';
comment on column XF_FX_ORDERLOG.TERMID
  is '期限名称';
comment on column XF_FX_ORDERLOG.DAYS
  is '天数';
comment on column XF_FX_ORDERLOG.MASTERBANK
  is '总行机构号';
comment on column XF_FX_ORDERLOG.BANKID
  is '交易发生机构号';
comment on column XF_FX_ORDERLOG.INPUTCHANNEL
  is '交易渠道';
comment on column XF_FX_ORDERLOG.CUSTBANK
  is '客户经理归属机构号';
comment on column XF_FX_ORDERLOG.BUYORSELL
  is '买卖方向(B-客户卖出 S-客户买入)';
comment on column XF_FX_ORDERLOG.CYCODE1
  is '货币1代码';
comment on column XF_FX_ORDERLOG.CYCODE2
  is '货币2代码';
comment on column XF_FX_ORDERLOG.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_ORDERLOG.LEG1CUSTAMT1
  is '第一腿货币1客户金额';
comment on column XF_FX_ORDERLOG.LEG1CUSTAMT2
  is '第一腿货币2客户金额';
comment on column XF_FX_ORDERLOG.LEG1COSTAMT1
  is '第一腿货币1总分金额';
comment on column XF_FX_ORDERLOG.TRADEPLAT
  is '交易台';
comment on column XF_FX_ORDERLOG.PRODUCTID
  is '产品ID';
comment on column XF_FX_ORDERLOG.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_ORDERLOG.ORGINPUTCHANNEL
  is '原始交易来源';
comment on column XF_FX_ORDERLOG.LEG1CUSTRATEFAVBEF
  is '第一腿货币优惠前客户价格';
comment on column XF_FX_ORDERLOG.LEG2CUSTRATEFAVBEF
  is '第二腿货币优惠前客户价格';
comment on column XF_FX_ORDERLOG.LEG1CUSTRATETYPE
  is '委托价格类型';
comment on column XF_FX_ORDERLOG.LEG2CUSTRATETYPE
  is '第二腿货委托价格类型';
comment on column XF_FX_ORDERLOG.DELIVERYFLAG
  is '交割方式';
comment on column XF_FX_ORDERLOG.FIXDATETYPE
  is '定盘日规则';
comment on column XF_FX_ORDERLOG.FIXRATETYPE
  is '定盘价格类型';
comment on column XF_FX_ORDERLOG.LEG1COSTRATEFAVBEF
  is '到价前总分价格';
comment on column XF_FX_ORDERLOG.LEG2COSTRATEFAVBEF
  is '到价前总分价格';
comment on column XF_FX_ORDERLOG.FIXDATE
  is '定盘日';
comment on column XF_FX_ORDERLOG.NETACCOUNT
  is '交割账号';
comment on column XF_FX_ORDERLOG.NETACCTYPE
  is '交割账号类型';
comment on column XF_FX_ORDERLOG.DELIVERDATETYPE
  is '交割日类型';

--结售汇(外汇)附加资料交易表
create table XF_FX_ORDERSUB
(
  BUSINESSNO VARCHAR2(50) not null,
  RMK2       VARCHAR2(2000),
  RMK3       VARCHAR2(2000),
  RMK4       VARCHAR2(2000),
  RMK5       VARCHAR2(2000),
  RMK6       VARCHAR2(2000),
  RMK7       VARCHAR2(2000),
  RMK8       VARCHAR2(2000),
  RMK9       VARCHAR2(2000),
  RMK10      VARCHAR2(2000),
  RMK11      VARCHAR2(2000),
  RMK12      VARCHAR2(2000),
  RMK13      VARCHAR2(2000),
  RMK14      VARCHAR2(2000),
  RMK15      VARCHAR2(2000),
  RMK16      VARCHAR2(400),
  RMK17      VARCHAR2(400),
  RMK18      VARCHAR2(400),
  RMK19      VARCHAR2(400),
  RMK20      VARCHAR2(400),
  RMK21      VARCHAR2(400),
  RMK22      VARCHAR2(400),
  RMK23      VARCHAR2(400),
  RMK24      VARCHAR2(400),
  RMK25      VARCHAR2(400),
  RMK26      VARCHAR2(400),
  RMK27      VARCHAR2(400),
  RMK28      VARCHAR2(400),
  RMK29      VARCHAR2(400),
  RMK30      VARCHAR2(400),
  RMK31      VARCHAR2(400),
  RMK32      VARCHAR2(400),
  RMK33      VARCHAR2(400),
  RMK34      VARCHAR2(400),
  RMK35      VARCHAR2(400),
  RMK36      VARCHAR2(400),
  RMK37      VARCHAR2(400),
  RMK38      VARCHAR2(400),
  RMK39      VARCHAR2(400),
  RMK40      VARCHAR2(400),
  AMT1       NUMBER(28,8) default 0,
  AMT2       NUMBER(28,8) default 0,
  AMT3       NUMBER(28,8) default 0,
  AMT4       NUMBER(28,8) default 0,
  AMT5       NUMBER(28,8) default 0,
  INT1       NUMBER(16) default 0,
  INT2       NUMBER(16) default 0,
  INT3       NUMBER(16) default 0,
  INT4       NUMBER(16) default 0,
  INT5       NUMBER(16) default 0,
  RMK1       VARCHAR2(2000),
  RMK41      VARCHAR2(400),
  RMK42      VARCHAR2(400),
  RMK43      VARCHAR2(400),
  RMK44      VARCHAR2(400),
  RMK45      VARCHAR2(400),
  RMK46      VARCHAR2(400),
  RMK47      VARCHAR2(400),
  RMK48      VARCHAR2(400),
  RMK49      VARCHAR2(400),
  RMK50      VARCHAR2(400),
  RMK51      VARCHAR2(400),
  RMK52      VARCHAR2(400),
  RMK53      VARCHAR2(400),
  RMK54      VARCHAR2(400),
  RMK55      VARCHAR2(400),
  RMK56      VARCHAR2(400),
  RMK57      VARCHAR2(400),
  RMK58      VARCHAR2(400),
  RMK59      VARCHAR2(400),
  RMK60      VARCHAR2(400),
  CUSTRMK1   VARCHAR2(400),
  CUSTRMK2   VARCHAR2(400),
  CUSTRMK3   VARCHAR2(400),
  CUSTRMK4   VARCHAR2(400),
  CUSTRMK5   VARCHAR2(400),
  CUSTRMK6   VARCHAR2(400),
  CUSTRMK7   VARCHAR2(400),
  CUSTRMK8   VARCHAR2(400),
  CUSTRMK9   VARCHAR2(400),
  CUSTRMK10  VARCHAR2(400)
)
;
comment on table XF_FX_ORDERSUB
  is '结售汇(外汇)附加资料交易表';
comment on column XF_FX_ORDERSUB.BUSINESSNO
  is '交易流水主key(对应交易套号流水)';
comment on column XF_FX_ORDERSUB.RMK2
  is '结售汇交易项目代码';
comment on column XF_FX_ORDERSUB.RMK3
  is '结售汇交易子项目代码';
comment on column XF_FX_ORDERSUB.RMK4
  is '交易编码代码';
comment on column XF_FX_ORDERSUB.RMK5
  is '近端结售汇交易项目代码';
comment on column XF_FX_ORDERSUB.RMK6
  is '近端结售汇交易子项目代码';
comment on column XF_FX_ORDERSUB.RMK7
  is '近端交易编码代码 ';
comment on column XF_FX_ORDERSUB.RMK8
  is '客户结售汇类型';
comment on column XF_FX_ORDERSUB.RMK9
  is '客户经理';
comment on column XF_FX_ORDERSUB.RMK10
  is '货币1我行账户行';
comment on column XF_FX_ORDERSUB.RMK11
  is '货币1对手行账户行';
comment on column XF_FX_ORDERSUB.RMK12
  is '货币1中间行账户行';
comment on column XF_FX_ORDERSUB.RMK13
  is '货币2我行账户行';
comment on column XF_FX_ORDERSUB.RMK14
  is '货币2对手行账户行';
comment on column XF_FX_ORDERSUB.RMK15
  is '货币2中间行账户行';
comment on column XF_FX_ORDERSUB.RMK16
  is '是否银行卡支付（0 不是，1 是）';
comment on column XF_FX_ORDERSUB.RMK17
  is '参数17';
comment on column XF_FX_ORDERSUB.RMK18
  is '参数18';
comment on column XF_FX_ORDERSUB.RMK19
  is '参数19';
comment on column XF_FX_ORDERSUB.RMK20
  is '参数20';
comment on column XF_FX_ORDERSUB.RMK21
  is '参数21';
comment on column XF_FX_ORDERSUB.RMK22
  is '参数22';
comment on column XF_FX_ORDERSUB.RMK23
  is '参数23';
comment on column XF_FX_ORDERSUB.RMK24
  is '参数24';
comment on column XF_FX_ORDERSUB.RMK25
  is '参数25';
comment on column XF_FX_ORDERSUB.RMK26
  is '参数26';
comment on column XF_FX_ORDERSUB.RMK27
  is '参数27';
comment on column XF_FX_ORDERSUB.RMK28
  is '参数28';
comment on column XF_FX_ORDERSUB.RMK29
  is '参数29';
comment on column XF_FX_ORDERSUB.RMK30
  is '参数30';
comment on column XF_FX_ORDERSUB.RMK31
  is '参数31';
comment on column XF_FX_ORDERSUB.RMK32
  is '参数32';
comment on column XF_FX_ORDERSUB.RMK33
  is '参数33';
comment on column XF_FX_ORDERSUB.RMK34
  is '参数34';
comment on column XF_FX_ORDERSUB.RMK35
  is '参数35';
comment on column XF_FX_ORDERSUB.RMK36
  is '参数36';
comment on column XF_FX_ORDERSUB.RMK37
  is '参数37';
comment on column XF_FX_ORDERSUB.RMK38
  is '参数38';
comment on column XF_FX_ORDERSUB.RMK39
  is '参数39';
comment on column XF_FX_ORDERSUB.RMK40
  is '参数40';
comment on column XF_FX_ORDERSUB.AMT1
  is '金额1';
comment on column XF_FX_ORDERSUB.AMT2
  is '金额2';
comment on column XF_FX_ORDERSUB.AMT3
  is '金额3';
comment on column XF_FX_ORDERSUB.AMT4
  is '金额4';
comment on column XF_FX_ORDERSUB.AMT5
  is '金额5';
comment on column XF_FX_ORDERSUB.INT1
  is '数字1';
comment on column XF_FX_ORDERSUB.INT2
  is '数字2';
comment on column XF_FX_ORDERSUB.INT3
  is '数字3';
comment on column XF_FX_ORDERSUB.INT4
  is '数字4';
comment on column XF_FX_ORDERSUB.INT5
  is '数字5';
comment on column XF_FX_ORDERSUB.RMK1
  is ' 国结业务类型';
comment on column XF_FX_ORDERSUB.RMK41
  is '参数41';
comment on column XF_FX_ORDERSUB.RMK42
  is '参数42';
comment on column XF_FX_ORDERSUB.RMK43
  is '参数43';
comment on column XF_FX_ORDERSUB.RMK44
  is '参数44';
comment on column XF_FX_ORDERSUB.RMK45
  is '参数45';
comment on column XF_FX_ORDERSUB.RMK46
  is '参数46';
comment on column XF_FX_ORDERSUB.RMK47
  is '参数47';
comment on column XF_FX_ORDERSUB.RMK48
  is '参数48';
comment on column XF_FX_ORDERSUB.RMK49
  is '参数49';
comment on column XF_FX_ORDERSUB.RMK50
  is '参数50';
comment on column XF_FX_ORDERSUB.RMK51
  is '参数51:优惠点差';
comment on column XF_FX_ORDERSUB.RMK52
  is '优惠前到价价格';
comment on column XF_FX_ORDERSUB.RMK53
  is '备用53(产品)';
comment on column XF_FX_ORDERSUB.RMK54
  is '备用54(产品)';
comment on column XF_FX_ORDERSUB.RMK55
  is '备用55(产品)';
comment on column XF_FX_ORDERSUB.RMK56
  is '备用56(产品)';
comment on column XF_FX_ORDERSUB.RMK57
  is '备用57(产品)';
comment on column XF_FX_ORDERSUB.RMK58
  is '备用58(产品)';
comment on column XF_FX_ORDERSUB.RMK59
  is '备用59(产品)';
comment on column XF_FX_ORDERSUB.RMK60
  is '备用60(产品)';
comment on column XF_FX_ORDERSUB.CUSTRMK1
  is '备用1(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK2
  is '备用2(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK3
  is '备用3(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK4
  is '备用4(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK5
  is '备用5(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK6
  is '备用6(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK7
  is '备用7(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK8
  is '备用8(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK9
  is '备用9(实施)';
comment on column XF_FX_ORDERSUB.CUSTRMK10
  is '备用10(实施)';

--外汇损益明细表
create table XF_FX_PROFIT
(
  TRADETYPE     NUMBER(2) not null,
  DOWNLOADKEY   NUMBER(16) not null,
  BUSINESSNO    VARCHAR2(50) not null,
  PROFITSTATE   INTEGER not null,
  PROFITTYPE    INTEGER not null,
  APPID         NUMBER(2) not null,
  TRANMODE      INTEGER not null,
  GROUPTYPE     INTEGER not null,
  TRADESTATUS   NUMBER(1) not null,
  SPECIALSTATE  NUMBER(10) not null,
  MASTERBANK    VARCHAR2(16) not null,
  BANKID        VARCHAR2(16) not null,
  CUSTBANK      VARCHAR2(16),
  CYCODE1       VARCHAR2(10) not null,
  CYCODE2       VARCHAR2(10) not null,
  PROFITCYCODE  VARCHAR2(10) not null,
  PROFITAMT     NUMBER(18,2) default 0 not null,
  RATE          NUMBER(15,8) default 0,
  TRADEDATE     NUMBER(8) not null,
  CUSTOMERID    VARCHAR2(30),
  OUTCUSTOMERID VARCHAR2(30),
  CUSTOMERNAME  VARCHAR2(400),
  RMK           VARCHAR2(2000),
  AMTTYPE       INTEGER default 0,
  DELIVERYID    NUMBER(16),
  NEARNETPROFIT NUMBER(18,2) default 0.00,
  FARNETPROFIT  NUMBER(18,2) default 0.00,
  NEARPROFIT    NUMBER(18,2) default 0.00,
  FARPROFIT     NUMBER(18,2) default 0.00,
  ATTR1             VARCHAR2(50),
  ATTR2             VARCHAR2(50),
  ATTR3             VARCHAR2(50),
  CLIENTATTR1       VARCHAR2(50),
  CLIENTATTR2       VARCHAR2(50),
  CLIENTATTR3       VARCHAR2(50),
  CLIENTATTR4       VARCHAR2(50)
)
;
comment on table XF_FX_PROFIT
  is '外汇损益明细表';
comment on column XF_FX_PROFIT.TRADETYPE
  is '交易类型,0-即期 1-远期 2-择期 3-掉期 ';
comment on column XF_FX_PROFIT.DOWNLOADKEY
  is '系统内部唯一流水';
comment on column XF_FX_PROFIT.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_PROFIT.PROFITSTATE
  is '损益类型0-分行损益 1-总行损益 2-客户损益';
comment on column XF_FX_PROFIT.PROFITTYPE
  is '损益日类型0-交易日  1-交割日';
comment on column XF_FX_PROFIT.APPID
  is '交易产品类型1-外汇，2-结售汇';
comment on column XF_FX_PROFIT.TRANMODE
  is '交易模式0- 市价交易,1- 询价交易';
comment on column XF_FX_PROFIT.GROUPTYPE
  is '交易性质(0-代客交易，1-总分交易， 2-自营交易3-平盘交易 4-部门交易)';
comment on column XF_FX_PROFIT.TRADESTATUS
  is '交易状态0-正常, 1-撤消';
comment on column XF_FX_PROFIT.SPECIALSTATE
  is '特殊交易类型(0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘)';
comment on column XF_FX_PROFIT.MASTERBANK
  is '总行机构号';
comment on column XF_FX_PROFIT.BANKID
  is '交易发生机构号';
comment on column XF_FX_PROFIT.CUSTBANK
  is '客户归属机构号';
comment on column XF_FX_PROFIT.CYCODE1
  is '货币1代码';
comment on column XF_FX_PROFIT.CYCODE2
  is '货币2代码';
comment on column XF_FX_PROFIT.PROFITCYCODE
  is '损益货币';
comment on column XF_FX_PROFIT.PROFITAMT
  is '损益金额';
comment on column XF_FX_PROFIT.RATE
  is '折算汇率';
comment on column XF_FX_PROFIT.TRADEDATE
  is '生成日期';
comment on column XF_FX_PROFIT.CUSTOMERID
  is '客户号';
comment on column XF_FX_PROFIT.OUTCUSTOMERID
  is '核心客户号';
comment on column XF_FX_PROFIT.CUSTOMERNAME
  is '核心客户名称';
comment on column XF_FX_PROFIT.RMK
  is '备注';
comment on column XF_FX_PROFIT.AMTTYPE
  is '0-原币损益;1-折币损益';
comment on column XF_FX_PROFIT.DELIVERYID
  is '交割流水号';
comment on column XF_FX_PROFIT.NEARNETPROFIT
  is '近端分行轧差损益';
comment on column XF_FX_PROFIT.FARNETPROFIT
  is '远端分行轧差损益';
comment on column XF_FX_PROFIT.NEARPROFIT
  is '近端损益(掉期近端)';
comment on column XF_FX_PROFIT.FARPROFIT
  is '远端损益(非掉期近端)';
   comment on column XF_FX_PROFIT.ATTR1
  is '其它1';
comment on column XF_FX_PROFIT.ATTR2
  is '其它2';
comment on column XF_FX_PROFIT.ATTR3
  is '其它3';
comment on column XF_FX_PROFIT.CLIENTATTR1
  is '实施其它1';
comment on column XF_FX_PROFIT.CLIENTATTR2
  is '实施其它2';
comment on column XF_FX_PROFIT.CLIENTATTR3
  is '实施其它3';
comment on column XF_FX_PROFIT.CLIENTATTR4
  is '实施其它4';

--总分即期交易表
create table XF_FX_SPOTDEALS
(
  DOWNLOADKEY      NUMBER(16) not null,
  DOWNLOADKEYINT   NUMBER(16) not null,
  BLOCKNUMBER      NUMBER(16) not null,
  BUSINESSNO       VARCHAR2(50) not null,
  TRADECHGFLAG     NUMBER(1),
  BOOKINGID        VARCHAR2(15),
  TRADEPLAT        VARCHAR2(30) not null,
  PRODUCTID        NUMBER(20) not null,
  ORGPRODUCTID     NUMBER(20) not null,
  ORGINPUTCHANNEL  INTEGER,
  DELAYINDELIVERY  INTEGER,
  DELIVERYFLAG     NUMBER(1) not null,
  APPID            NUMBER(2) not null,
  TRANMODE         INTEGER not null,
  GROUPTYPE        INTEGER not null,
  TRADESTATUS      NUMBER(1) not null,
  SPECIALSTATE     NUMBER(10) not null,
  INPUTMODE        INTEGER not null,
  MASTERBANK       VARCHAR2(16) not null,
  BANKID           VARCHAR2(16) not null,
  CYCODE1          VARCHAR2(10) not null,
  CYCODE2          VARCHAR2(10) not null,
  CALCYCODE        INTEGER not null,
  BUYORSELL        VARCHAR2(3) not null,
  COSTAMT1         NUMBER(18,2) not null,
  COSTAMT2         NUMBER(18,2) not null,
  COSTRATE         NUMBER(15,8) not null,
  TRADETIME        NUMBER(6) not null,
  TRADEDATE        NUMBER(8) not null,
  VALUEDATE        INTEGER not null,
  TELLERID         VARCHAR2(60),
  TELLERNAME       VARCHAR2(60),
  MASTERTELLERID   VARCHAR2(60),
  MASTERTELLERNAME VARCHAR2(60),
  SUBTELLERID      VARCHAR2(60),
  SUBTELLERNAME    VARCHAR2(60),
  MASTERCHECKID    VARCHAR2(60),
  MASTERCHECKNAME  VARCHAR2(50),
  INPUTCHANNEL     INTEGER,
  MEMO             VARCHAR2(2000),
  SOURCETYPE       INTEGER,
  SOURCENO         NUMBER(16),
  HEADNO           NUMBER(16),
  HEADTYPE         INTEGER,
  RMK              VARCHAR2(2000),
  USDAMOUNT        NUMBER(18,2),
  USDCYCODERATE    NUMBER(18,8),
  BRANCHBANK       VARCHAR2(16),
  SUBBRANCHBANK    VARCHAR2(16),
  OUTLETSBANK      VARCHAR2(16),
  USDCNYRATE       NUMBER(15,8),
  RPTUSDAMOUNT     NUMBER(18,2),
  RPTUSDRATE       NUMBER(18,8),
  ISRISKCTL        NUMBER(1) not null,
  DEPTBANK         VARCHAR2(16),
  CAPTUREDATE      NUMBER(8),
  ALLAPPROVALNO    VARCHAR2(80),
  CNYRATE          NUMBER(15,8),
  CNYAMT           NUMBER(18,2),
  BREACHFLAG       NUMBER(1),
  BREACHRMK        VARCHAR2(310),
  OTHBUS           VARCHAR2(2),
  OTHBUSKEY        VARCHAR2(50),
  OTHDOWNKEY       NUMBER(16),
  COSTATTR1            VARCHAR2(50),
  COSTATTR2            VARCHAR2(50),
  COSTATTR3            VARCHAR2(50),
  CLIENTCOSTATTR1      VARCHAR2(50),
  CLIENTCOSTATTR2      VARCHAR2(50),
  CLIENTCOSTATTR3      VARCHAR2(50),
  CLIENTCOSTATTR4      VARCHAR2(50),
  TRANCODE             VARCHAR2(60),
  orgLegFlag char(1)
);
comment on table XF_FX_SPOTDEALS
  is '总分即期交易表';
comment on column XF_FX_SPOTDEALS.DOWNLOADKEY
  is '交易唯一流水号';
comment on column XF_FX_SPOTDEALS.DOWNLOADKEYINT
  is '分客交易流水号';
comment on column XF_FX_SPOTDEALS.BLOCKNUMBER
  is '套号唯一流水(同一套交易流水号相同)';
comment on column XF_FX_SPOTDEALS.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_SPOTDEALS.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_SPOTDEALS.BOOKINGID
  is '实体ID';
comment on column XF_FX_SPOTDEALS.TRADEPLAT
  is '交易台';
comment on column XF_FX_SPOTDEALS.PRODUCTID
  is '产品ID';
comment on column XF_FX_SPOTDEALS.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_SPOTDEALS.ORGINPUTCHANNEL
  is '原始交易来源';
comment on column XF_FX_SPOTDEALS.DELAYINDELIVERY
  is '延迟交割 0-不延迟 1-延迟';
comment on column XF_FX_SPOTDEALS.DELIVERYFLAG
  is '交割方式（0-无须交割，1-现金交割，2-实物交割）';
comment on column XF_FX_SPOTDEALS.APPID
  is '交易产品类型(1-外汇，2-结售汇)';
comment on column XF_FX_SPOTDEALS.TRANMODE
  is '交易模式(0-市价交易,1-询价交易)';
comment on column XF_FX_SPOTDEALS.GROUPTYPE
  is '交易性质(0-代客交易，1-总分交易， 2-自营交易3-平盘交易 4-部门交易)';
comment on column XF_FX_SPOTDEALS.TRADESTATUS
  is '交易状态(0-正常 1-撤消)';
comment on column XF_FX_SPOTDEALS.SPECIALSTATE
  is '特殊交易类别(0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘)';
comment on column XF_FX_SPOTDEALS.INPUTMODE
  is '录入模式(0-分行录入,1-总行补录)';
comment on column XF_FX_SPOTDEALS.MASTERBANK
  is '总行机构号';
comment on column XF_FX_SPOTDEALS.BANKID
  is '交易发生机构号';
comment on column XF_FX_SPOTDEALS.CYCODE1
  is '货币1代码';
comment on column XF_FX_SPOTDEALS.CYCODE2
  is '货币2代码';
comment on column XF_FX_SPOTDEALS.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_SPOTDEALS.BUYORSELL
  is '买卖方向(B-总行买入 S-总行卖出)';
comment on column XF_FX_SPOTDEALS.COSTAMT1
  is '货币1总分金额';
comment on column XF_FX_SPOTDEALS.COSTAMT2
  is '货币2总分金额';
comment on column XF_FX_SPOTDEALS.COSTRATE
  is '成交汇率';
comment on column XF_FX_SPOTDEALS.TRADETIME
  is '交易时间 ';
comment on column XF_FX_SPOTDEALS.TRADEDATE
  is '交易日期';
comment on column XF_FX_SPOTDEALS.VALUEDATE
  is '起息日';
comment on column XF_FX_SPOTDEALS.TELLERID
  is '分行柜员';
comment on column XF_FX_SPOTDEALS.TELLERNAME
  is '分行柜员姓名';
comment on column XF_FX_SPOTDEALS.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_SPOTDEALS.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_SPOTDEALS.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_SPOTDEALS.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_SPOTDEALS.MASTERCHECKID
  is '总行复核人员ID';
comment on column XF_FX_SPOTDEALS.MASTERCHECKNAME
  is '总行复核名字';
comment on column XF_FX_SPOTDEALS.INPUTCHANNEL
  is '交易渠道(0-x-funds 1-核心系统  2-外汇交易中心 3-国结系统)';
comment on column XF_FX_SPOTDEALS.MEMO
  is '摘要';
comment on column XF_FX_SPOTDEALS.SOURCETYPE
  is '原交易交易类型';
comment on column XF_FX_SPOTDEALS.SOURCENO
  is '原交易流水号';
comment on column XF_FX_SPOTDEALS.HEADNO
  is '原始交易流水号';
comment on column XF_FX_SPOTDEALS.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_SPOTDEALS.RMK
  is '备注';
comment on column XF_FX_SPOTDEALS.USDAMOUNT
  is '折美元金额(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SPOTDEALS.USDCYCODERATE
  is '折美元汇率(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SPOTDEALS.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_SPOTDEALS.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_SPOTDEALS.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_SPOTDEALS.USDCNYRATE
  is '美元到人民币的总分汇率';
comment on column XF_FX_SPOTDEALS.RPTUSDAMOUNT
  is '折美元金额(报表使用)';
comment on column XF_FX_SPOTDEALS.RPTUSDRATE
  is '折美元汇率(报表使用)';
comment on column XF_FX_SPOTDEALS.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_SPOTDEALS.DEPTBANK
  is '对手机构';
comment on column XF_FX_SPOTDEALS.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_SPOTDEALS.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_SPOTDEALS.CNYRATE
  is '折人币汇率';
comment on column XF_FX_SPOTDEALS.CNYAMT
  is '折人民币金额';
comment on column XF_FX_SPOTDEALS.BREACHFLAG
  is '平仓原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_SPOTDEALS.BREACHRMK
  is '平仓原因说明';
COMMENT ON COLUMN XF_FX_SPOTDEALS.OTHBUS
  IS '1-外汇 2-结售汇 4-期权 8-货币掉期 20-贵金属';
comment on column XF_FX_SPOTDEALS.othbuskey
  is '其他品种业务编号';
comment on column XF_FX_SPOTDEALS.othdownkey
  is '其他品种交易流水号';
COMMENT ON COLUMN XF_FX_SPOTDEALS.COSTATTR1
  IS '其它1';
COMMENT ON COLUMN XF_FX_SPOTDEALS.COSTATTR2
  IS '其它2';
COMMENT ON COLUMN XF_FX_SPOTDEALS.COSTATTR3
  IS '其它3';
COMMENT ON COLUMN XF_FX_SPOTDEALS.CLIENTCOSTATTR1
  IS '实施其它1';
COMMENT ON COLUMN XF_FX_SPOTDEALS.CLIENTCOSTATTR2
  IS '实施其它2';
COMMENT ON COLUMN XF_FX_SPOTDEALS.CLIENTCOSTATTR3
  IS '实施其它3';
COMMENT ON COLUMN XF_FX_SPOTDEALS.CLIENTCOSTATTR4
  IS '实施其它4';
comment on column XF_FX_SPOTDEALS.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';
  comment on column XF_FX_SPOTDEALS.tranCode
is '交易码';

--代客即期交易表
create table XF_FX_SPOTTRADE
(
  DOWNLOADKEY      NUMBER(16) not null,
  DOWNLOADKEYINT   NUMBER(16) not null,
  BLOCKNUMBER      NUMBER(16),
  BUSINESSNO       VARCHAR2(50) not null,
  SOURCENO         NUMBER(16),
  HEADNO           NUMBER(16),
  TRADEPLAT        VARCHAR2(30) not null,
  PRODUCTID        NUMBER(20) not null,
  ORGPRODUCTID     NUMBER(20) not null,
  APPID            NUMBER(2) not null,
  BANKID           VARCHAR2(16) not null,
  CUSTBANK         VARCHAR2(16),
  MASTERBANK       VARCHAR2(16) not null,
  INPUTBANKID      VARCHAR2(16),
  BOOKINGID        VARCHAR2(15),
  BRANCHBANK       VARCHAR2(16),
  SUBBRANCHBANK    VARCHAR2(16),
  OUTLETSBANK      VARCHAR2(16),
  SUBTELLERID      VARCHAR2(60),
  SUBTELLERNAME    VARCHAR2(60),
  TELLERID         VARCHAR2(60),
  TELLERNAME       VARCHAR2(60),
  MASTERTELLERID   VARCHAR2(60),
  MASTERTELLERNAME VARCHAR2(60),
  MASTERCHECKID    VARCHAR2(60),
  MASTERCHECKNAME  VARCHAR2(50),
  CUSTOMERID       VARCHAR2(30),
  OUTCUSTOMERID    VARCHAR2(30),
  CUSTNAME         VARCHAR2(400),
  CUSTMAINMANAGER  VARCHAR2(60),
  CUSTMANAGERNAME  VARCHAR2(60),
  TRADESTATUS      number(1) not null,
  RPTUSDAMOUNT     NUMBER(18,2),
  RPTUSDRATE       NUMBER(15,8),
  USDCNYRATE       NUMBER(15,8),
  CAPTUREDATE      NUMBER(8),
  MEMO             VARCHAR2(2000),
  CUSTMEMO         VARCHAR2(2000),
  ISRISKCTL        NUMBER(1) not null,
  INPUTCHANNEL     INTEGER,
  ORGINPUTCHANNEL  INTEGER,
  SPECIALSTATE     NUMBER(10),
  INPUTMODE        INTEGER,
  custFlag       INTEGER,
  CYCODE1          VARCHAR2(10) not null,
  CYCODE2          VARCHAR2(10) not null,
  CALCYCODE        INTEGER not null,
  BUYORSELL        VARCHAR2(3) not null,
  CUSTAMT1         NUMBER(18,2),
  CUSTAMT2         NUMBER(18,2),
  CUSTRATE         NUMBER(15,8),
  CUSTGUIRATE      NUMBER(15,8),
  COSTRATE         NUMBER(15,8),
  USDAMOUNT        NUMBER(18,2),
  USDCYCODERATE    NUMBER(15,8),
  TRADETIME        number(6) not null,
  TRADEDATE        number(8) not null,
  VALUEDATE        INTEGER not null,
  CYCODE1ACCTYPE   NUMBER(1),
  CYCODE1ACCOUNT   VARCHAR2(50),
  CYCODE2ACCTYPE   NUMBER(1),
  CYCODE2ACCOUNT   VARCHAR2(50),
  NETACCTYPE       VARCHAR2(1),
  NETACCOUNT       VARCHAR2(50),
  SOURCETYPE       INTEGER,
  HEADTYPE         INTEGER,
  ALLAPPROVALNO    VARCHAR2(80),
  CNYRATE          NUMBER(15,8),
  CNYAMT           NUMBER(18,2),
  BREACHFLAG       NUMBER(1),
  BREACHRMK        VARCHAR2(310),
  TRADECHGFLAG     NUMBER(1),
  DELAYINDELIVERY  INTEGER,
  DELIVERYFLAG     NUMBER(1),
  T2FLAG           NUMBER(1) DEFAULT 0,
  CUSTFAVPOINT     NUMBER(12,2) DEFAULT 0,
  BRANCHPROFITPOINT NUMBER(12,2) DEFAULT 0,
  PROFITBRANCHCURR  VARCHAR2(10),
  PROFITBRANCHCURRAMT NUMBER(18,2) DEFAULT 0,
  TRANMODE         INTEGER not null,
  OTHBUS           VARCHAR2(2),
  OTHBUSKEY        VARCHAR2(50),
  OTHDOWNKEY       NUMBER(16),
  FIXDATE           INTEGER,
  FIXRATETYPE       NUMBER(1),
  FIXRATEFLG        NUMBER(1),
  FIXRATE           NUMBER(18,6),
  ATTR1            VARCHAR2(50),
  ATTR2            VARCHAR2(50),
  ATTR3            VARCHAR2(50),
  CLIENTATTR1      VARCHAR2(50),
  CLIENTATTR2      VARCHAR2(50),
  CLIENTATTR3      VARCHAR2(50),
  CLIENTATTR4      VARCHAR2(50),
  orgLegFlag char(1),
  FOREXTYPE char(1),
  tranCode VARCHAR2(60),
  ratelock char(1) default '0',
  lastdate date
)
;
comment on table XF_FX_SPOTTRADE
  is '代客即期交易表';
comment on column XF_FX_SPOTTRADE.DOWNLOADKEY
  is '交易唯一流水 ';
comment on column XF_FX_SPOTTRADE.DOWNLOADKEYINT
  is '总分交易流水号';
comment on column XF_FX_SPOTTRADE.BLOCKNUMBER
  is '套号唯一流水';
comment on column XF_FX_SPOTTRADE.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_SPOTTRADE.SOURCENO
  is '原交易流水号';
comment on column XF_FX_SPOTTRADE.HEADNO
  is '原始交易流水号';
comment on column XF_FX_SPOTTRADE.TRADEPLAT
  is '交易台';
comment on column XF_FX_SPOTTRADE.PRODUCTID
  is '产品ID';
comment on column XF_FX_SPOTTRADE.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_SPOTTRADE.APPID
  is '产品类型 (1-外汇，2-结售汇)';
comment on column XF_FX_SPOTTRADE.BANKID
  is '交易发生机构号';
comment on column XF_FX_SPOTTRADE.CUSTBANK
  is '账务机构号';
comment on column XF_FX_SPOTTRADE.MASTERBANK
  is '总行机构号';
comment on column XF_FX_SPOTTRADE.INPUTBANKID
  is '录入机构号';
comment on column XF_FX_SPOTTRADE.BOOKINGID
  is '实体ID';
comment on column XF_FX_SPOTTRADE.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_SPOTTRADE.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_SPOTTRADE.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_SPOTTRADE.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_SPOTTRADE.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_SPOTTRADE.TELLERID
  is '分行复核柜员';
comment on column XF_FX_SPOTTRADE.TELLERNAME
  is '分行复核柜员姓名';
comment on column XF_FX_SPOTTRADE.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_SPOTTRADE.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_SPOTTRADE.MASTERCHECKID
  is '总行复核柜员';
comment on column XF_FX_SPOTTRADE.MASTERCHECKNAME
  is '总行复核柜员姓名';
comment on column XF_FX_SPOTTRADE.CUSTOMERID
  is '内部客户号';
comment on column XF_FX_SPOTTRADE.OUTCUSTOMERID
  is '核心客户号';
comment on column XF_FX_SPOTTRADE.CUSTNAME
  is '客户名称 ';
comment on column XF_FX_SPOTTRADE.CUSTMAINMANAGER
  is '客户经理';
comment on column XF_FX_SPOTTRADE.CUSTMANAGERNAME
  is '客户经理名称';
comment on column XF_FX_SPOTTRADE.TRADESTATUS
  is '交易状态 (0-正常 1-撤消)';
comment on column XF_FX_SPOTTRADE.RPTUSDAMOUNT
  is '折美元金额(报表使用)';
comment on column XF_FX_SPOTTRADE.RPTUSDRATE
  is '折美元汇率(报表使用)';
comment on column XF_FX_SPOTTRADE.USDCNYRATE
  is '美元到人民币汇率';
comment on column XF_FX_SPOTTRADE.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_SPOTTRADE.MEMO
  is '摘要';
comment on column XF_FX_SPOTTRADE.CUSTMEMO
  is '客户化备注';
comment on column XF_FX_SPOTTRADE.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_SPOTTRADE.INPUTCHANNEL
  is '交易来源 (0-x-funds 1-核心系统  2-外汇交易中心 3-国结系统)';
comment on column XF_FX_SPOTTRADE.ORGINPUTCHANNEL
  is '原始交易来源';
comment on column XF_FX_SPOTTRADE.SPECIALSTATE
  is '特殊交易类别(0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘)';
comment on column XF_FX_SPOTTRADE.INPUTMODE
  is '录入模式(0-分行录入,1-总行补录)';
comment on column xf_fx_spottrade.custFlag
  is '客户性质(0-企业客户,1-同业客户)';
comment on column XF_FX_SPOTTRADE.CYCODE1
  is '货币1代码 ';
comment on column XF_FX_SPOTTRADE.CYCODE2
  is '货币2代码 ';
comment on column XF_FX_SPOTTRADE.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_SPOTTRADE.BUYORSELL
  is '买卖方向(B-分行买入 S-分行卖出)';
comment on column XF_FX_SPOTTRADE.CUSTAMT1
  is '货币1客户金额';
comment on column XF_FX_SPOTTRADE.CUSTAMT2
  is '货币2客户金额';
comment on column XF_FX_SPOTTRADE.CUSTRATE
  is '客户成交汇率';
comment on column XF_FX_SPOTTRADE.CUSTGUIRATE
  is '客户参考汇率';
comment on column XF_FX_SPOTTRADE.COSTRATE
  is '成本汇率';
comment on column XF_FX_SPOTTRADE.USDAMOUNT
  is '折美元金额(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SPOTTRADE.USDCYCODERATE
  is '折美元汇率(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SPOTTRADE.TRADETIME
  is '交易时间(HHMMSS)';
comment on column XF_FX_SPOTTRADE.TRADEDATE
  is '交易日期 (YYYYMMDD)';
comment on column XF_FX_SPOTTRADE.VALUEDATE
  is '起息日  ';
comment on column XF_FX_SPOTTRADE.CYCODE1ACCTYPE
  is '账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SPOTTRADE.CYCODE1ACCOUNT
  is '货币1客户账号';
comment on column XF_FX_SPOTTRADE.CYCODE2ACCTYPE
  is '账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SPOTTRADE.CYCODE2ACCOUNT
  is '货币2客户账号';
comment on column XF_FX_SPOTTRADE.NETACCTYPE
  is '轧差账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SPOTTRADE.NETACCOUNT
  is '轧差账号  ';
comment on column XF_FX_SPOTTRADE.SOURCETYPE
  is '原交易交易类型';
comment on column XF_FX_SPOTTRADE.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_SPOTTRADE.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_SPOTTRADE.CNYRATE
  is '折人币汇率';
comment on column XF_FX_SPOTTRADE.CNYAMT
  is '折人民币金额';
comment on column XF_FX_SPOTTRADE.BREACHFLAG
  is '平仓原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_SPOTTRADE.BREACHRMK
  is '平仓原因说明';
comment on column XF_FX_SPOTTRADE.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_SPOTTRADE.DELAYINDELIVERY
  is '延迟交割 0-不延迟 1-延迟';
comment on column XF_FX_SPOTTRADE.DELIVERYFLAG
  is '交割方式（0-无须交割，1-现金交割，2-实物交割）';
comment on column XF_FX_SPOTTRADE.TRANMODE
  is '交易模式(0- 市价交易,1-询价交易)';
COMMENT ON COLUMN XF_FX_SPOTTRADE.CUSTFAVPOINT
  IS '客户优惠点';
COMMENT ON COLUMN XF_FX_SPOTTRADE.BRANCHPROFITPOINT
  IS '分行收益点';
COMMENT ON COLUMN XF_FX_SPOTTRADE.PROFITBRANCHCURR
  IS '原币分行损益货币';
COMMENT ON COLUMN XF_FX_SPOTTRADE.PROFITBRANCHCURRAMT
  IS '原币分行损益金额（总分和分客价差）';
COMMENT ON COLUMN XF_FX_SPOTTRADE.OTHBUS
  IS '1-外汇 2-结售汇 4-期权 8-货币掉期 20-贵金属';
comment on column XF_FX_SPOTTRADE.othbuskey
  is '其他品种业务编号';
comment on column XF_FX_SPOTTRADE.othdownkey
  is '其他品种交易流水号';
comment on column xf_fx_spottrade.FIXDATE
  is '定盘日';
comment on column xf_fx_spottrade.FIXRATETYPE
  is '定盘汇率类型(CF12：0-BJ9:00 1-BJ15:00 2-实时价)';
comment on column xf_fx_spottrade.FIXRATE
  is '定盘汇率';
comment on column xf_fx_spottrade.FIXRATEFLG
  is '定盘标识（CF08：0-未定盘 1-批量定盘 2-手工改价）';
COMMENT ON COLUMN XF_FX_SPOTTRADE.ATTR1
  IS '其它1';
COMMENT ON COLUMN XF_FX_SPOTTRADE.ATTR2
  IS '其它2';
COMMENT ON COLUMN XF_FX_SPOTTRADE.ATTR3
  IS '其它3';
COMMENT ON COLUMN XF_FX_SPOTTRADE.CLIENTATTR1
  IS '实施其它1';
COMMENT ON COLUMN XF_FX_SPOTTRADE.CLIENTATTR2
  IS '实施其它2';
COMMENT ON COLUMN XF_FX_SPOTTRADE.CLIENTATTR3
  IS '实施其它3';
COMMENT ON COLUMN XF_FX_SPOTTRADE.CLIENTATTR4
  IS '实施其它4';
comment on column XF_FX_SPOTTRADE.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';
comment on column XF_FX_SPOTTRADE.ratelock
  is '锁价类型 0-实时价 1-价格 2-收益点 F60';
comment on column xf_fx_spottrade.tranCode
is '交易码';
comment on column xf_fx_spottrade.lastdate
  is '时间戳';
comment on column xf_fx_spottrade.FOREXTYPE
  is '码表A04,1-自身2-金融机构3-中资机构4-外资机构';

--总分掉期交易表
create table XF_FX_SWAPDEALS
(
  DOWNLOADKEY      NUMBER(16) not null,
  DOWNLOADKEYINT   NUMBER(16) not null,
  BLOCKNUMBER      NUMBER(16) not null,
  BUSINESSNO       VARCHAR2(50) not null,
  APPID            NUMBER(2) not null,
  TRANMODE         INTEGER not null,
  GROUPTYPE        INTEGER not null,
  TRADESTATUS      NUMBER(1) not null,
  SPECIALSTATE     NUMBER(10) not null,
  INPUTMODE        INTEGER not null,
  NEARTERMID       VARCHAR2(10) not null,
  FARTERMID        VARCHAR2(10) not null,
  NEARDAYS         INTEGER not null,
  FARDAYS          INTEGER not null,
  MASTERBANK       VARCHAR2(16) not null,
  BANKID           VARCHAR2(16) not null,
  BUYORSELL        VARCHAR2(3) not null,
  CYCODE1          VARCHAR2(10) not null,
  CYCODE2          VARCHAR2(10) not null,
  CALCYCODE        INTEGER not null,
  COSTNEARAMT1     NUMBER(18,2),
  COSTNEARAMT2     NUMBER(18,2),
  COSTFARAMT1      NUMBER(18,2),
  COSTFARAMT2      NUMBER(18,2),
  USDAMOUNT        NUMBER(18,2),
  USDCYCODERATE    NUMBER(15,8),
  SPOTRATE         NUMBER(15,8),
  NEARCOSTPOINTS   NUMBER(12,2),
  NEARCOSTRATE     NUMBER(15,8),
  FARCOSTPOINTS    NUMBER(12,2),
  FARCOSTRATE      NUMBER(15,8),
  SPOTDATE         NUMBER(8) not null,
  VALUEDATE        INTEGER not null,
  MATURITYDATE     INTEGER not null,
  TRADETIME        NUMBER(6) not null,
  TRADEDATE        NUMBER(8) not null,
  OPTIONDATE       NUMBER(8),
  TELLERID         VARCHAR2(60),
  TELLERNAME       VARCHAR2(60),
  MASTERTELLERID   VARCHAR2(60),
  MASTERTELLERNAME VARCHAR2(60),
  SUBTELLERID      VARCHAR2(60),
  SUBTELLERNAME    VARCHAR2(60),
  INPUTCHANNEL     INTEGER not null,
  MEMO             VARCHAR2(2000),
  SOURCETYPE       INTEGER,
  SOURCENO         NUMBER(16),
  HEADNO           NUMBER(16),
  HEADTYPE         INTEGER,
  BRANCHBANK       VARCHAR2(16),
  SUBBRANCHBANK    VARCHAR2(16),
  OUTLETSBANK      VARCHAR2(16),
  RPTUSDAMOUNT     NUMBER(18,2),
  RPTUSDRATE       NUMBER(15,8),
  USDCNYRATE       NUMBER(15,8),
  USDCNYNEARRATE   NUMBER(15,8),
  USDCNYFARRATE    NUMBER(15,8),
  ISRISKCTL        NUMBER(1) not null,
  CAPTUREDATE      NUMBER(8),
  ALLAPPROVALNO    VARCHAR2(80),
  CNYRATE          NUMBER(15,8),
  CNYAMT           NUMBER(18,2),
  BREACHFLAG       NUMBER(1),
  BREACHRMK        VARCHAR2(310),
  MASTERCHECKID    VARCHAR2(60),
  MASTERCHECKNAME  VARCHAR2(50),
  TRADECHGFLAG     NUMBER(1),
  BOOKINGID        VARCHAR2(15),
  DELIVERYFLAG     NUMBER(1),
  FARDELIVERYFLAG  NUMBER(1),
  TRADEPLAT        VARCHAR2(30) not null,
  PRODUCTID        NUMBER(20) not null,
  ORGPRODUCTID     NUMBER(20) not null,
  ORGINPUTCHANNEL  INTEGER,
  OTHBUS           VARCHAR2(2),
  OTHBUSKEY        VARCHAR2(50),
  OTHDOWNKEY       NUMBER(16),
  COSTATTR1            VARCHAR2(50),
  COSTATTR2            VARCHAR2(50),
  COSTATTR3            VARCHAR2(50),
  CLIENTCOSTATTR1      VARCHAR2(50),
  CLIENTCOSTATTR2      VARCHAR2(50),
  CLIENTCOSTATTR3      VARCHAR2(50),
  CLIENTCOSTATTR4      VARCHAR2(50),
  orgLegFlag char(1),
  COSTSWAPPOINTS NUMBER(12,2),
  tranCode VARCHAR2(60)
)
;
comment on table XF_FX_SWAPDEALS
  is '总分掉期交易表';
comment on column XF_FX_SWAPDEALS.DOWNLOADKEY
  is '交易唯一流水号';
comment on column XF_FX_SWAPDEALS.DOWNLOADKEYINT
  is '分客交易流水号';
comment on column XF_FX_SWAPDEALS.BLOCKNUMBER
  is '套号唯一流水';
comment on column XF_FX_SWAPDEALS.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_SWAPDEALS.APPID
  is '交易产品类型(1-外汇，2-结售汇)';
comment on column XF_FX_SWAPDEALS.TRANMODE
  is '交易模式(0- 市价交易,1-询价交易)';
comment on column XF_FX_SWAPDEALS.GROUPTYPE
  is '交易性质(0-代客交易，1-总分交易， 2-自营交易3-平盘交易 4-部门交易)';
comment on column XF_FX_SWAPDEALS.TRADESTATUS
  is '交易状态(0-正常 1-撤消)';
comment on column XF_FX_SWAPDEALS.SPECIALSTATE
  is '特殊交易类别(0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘)';
comment on column XF_FX_SWAPDEALS.INPUTMODE
  is '录入模式(0-分行录入,1-总行补录)';
comment on column XF_FX_SWAPDEALS.NEARTERMID
  is '近端期限名称';
comment on column XF_FX_SWAPDEALS.FARTERMID
  is '远端期限名称';
comment on column XF_FX_SWAPDEALS.NEARDAYS
  is '近端天数';
comment on column XF_FX_SWAPDEALS.FARDAYS
  is '远端天数';
comment on column XF_FX_SWAPDEALS.MASTERBANK
  is '总行机构号';
comment on column XF_FX_SWAPDEALS.BANKID
  is '交易发生机构号';
comment on column XF_FX_SWAPDEALS.BUYORSELL
  is '买卖方向(S/B-客户买入 B/S-客户卖出)';
comment on column XF_FX_SWAPDEALS.CYCODE1
  is '货币1代码';
comment on column XF_FX_SWAPDEALS.CYCODE2
  is '货币2代码';
comment on column XF_FX_SWAPDEALS.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_SWAPDEALS.COSTNEARAMT1
  is '货币1近端金额';
comment on column XF_FX_SWAPDEALS.COSTNEARAMT2
  is '货币2近端金额';
comment on column XF_FX_SWAPDEALS.COSTFARAMT1
  is '货币1远端金额';
comment on column XF_FX_SWAPDEALS.COSTFARAMT2
  is '货币2远端金额';
comment on column XF_FX_SWAPDEALS.USDAMOUNT
  is '折美元金额(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SWAPDEALS.USDCYCODERATE
  is '折美元汇率(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SWAPDEALS.SPOTRATE
  is '即期汇率';
comment on column XF_FX_SWAPDEALS.NEARCOSTPOINTS
  is '近端掉期点';
comment on column XF_FX_SWAPDEALS.NEARCOSTRATE
  is '近端总分汇率';
comment on column XF_FX_SWAPDEALS.FARCOSTPOINTS
  is '远端掉期点';
comment on column XF_FX_SWAPDEALS.FARCOSTRATE
  is '远端总分汇率';
comment on column XF_FX_SWAPDEALS.SPOTDATE
  is '即期起息日';
comment on column XF_FX_SWAPDEALS.VALUEDATE
  is '起息日';
comment on column XF_FX_SWAPDEALS.MATURITYDATE
  is '到期日';
comment on column XF_FX_SWAPDEALS.TRADETIME
  is '交易时间(HHMMSS)';
comment on column XF_FX_SWAPDEALS.TRADEDATE
  is '交易日期(YYYYMMDD)';
comment on column XF_FX_SWAPDEALS.TELLERID
  is '分行柜员';
comment on column XF_FX_SWAPDEALS.TELLERNAME
  is '分行柜员姓名';
comment on column XF_FX_SWAPDEALS.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_SWAPDEALS.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_SWAPDEALS.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_SWAPDEALS.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_SWAPDEALS.INPUTCHANNEL
  is '交易渠道(0-x-funds 1-核心系统  2-外汇交易中心 3-国结系统)';
comment on column XF_FX_SWAPDEALS.MEMO
  is '备注';
comment on column XF_FX_SWAPDEALS.SOURCETYPE
  is '原交易交易类型(取原交易的ID)';
comment on column XF_FX_SWAPDEALS.SOURCENO
  is '原交易流水号(取原始交易的ID)';
comment on column XF_FX_SWAPDEALS.HEADNO
  is '原始交易流水号';
comment on column XF_FX_SWAPDEALS.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_SWAPDEALS.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_SWAPDEALS.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_SWAPDEALS.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_SWAPDEALS.RPTUSDAMOUNT
  is '折美元金额(报表使用)';
comment on column XF_FX_SWAPDEALS.RPTUSDRATE
  is '折美元汇率(报表使用)';
comment on column XF_FX_SWAPDEALS.USDCNYRATE
  is '美元到人民币的即期汇率';
comment on column XF_FX_SWAPDEALS.USDCNYNEARRATE
  is '美元到人民币的近端汇率';
comment on column XF_FX_SWAPDEALS.USDCNYFARRATE
  is '美元到人民币的远端汇率';
comment on column XF_FX_SWAPDEALS.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_SWAPDEALS.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_SWAPDEALS.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_SWAPDEALS.CNYRATE
  is '折人币汇率';
comment on column XF_FX_SWAPDEALS.CNYAMT
  is '折人民币金额';
comment on column XF_FX_SWAPDEALS.BREACHFLAG
  is '平仓原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_SWAPDEALS.BREACHRMK
  is '平仓原因说明';
comment on column XF_FX_SWAPDEALS.MASTERCHECKID
  is '总行复核人员ID';
comment on column XF_FX_SWAPDEALS.MASTERCHECKNAME
  is '总行复核名字';
comment on column XF_FX_SWAPDEALS.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_SWAPDEALS.BOOKINGID
  is '簿记ID';
comment on column XF_FX_SWAPDEALS.DELIVERYFLAG
  is '交割方式（0-无须交割，1-现金交割，2-实物交割）';
comment on column XF_FX_SWAPDEALS.FARDELIVERYFLAG
  is '远端交割方式(0-无须交割，1-实物交割，2-现金交割)';
comment on column XF_FX_SWAPDEALS.TRADEPLAT
  is '交易台';
comment on column XF_FX_SWAPDEALS.PRODUCTID
  is '产品ID';
comment on column XF_FX_SWAPDEALS.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_SWAPDEALS.ORGINPUTCHANNEL
  is '原始交易来源';
COMMENT ON COLUMN XF_FX_SWAPDEALS.OTHBUS
  IS '1-外汇 2-结售汇 4-期权 8-货币掉期 20-贵金属';
comment on column XF_FX_SWAPDEALS.othbuskey
  is '其他品种业务编号';
comment on column XF_FX_SWAPDEALS.othdownkey
  is '其他品种交易流水号';
COMMENT ON COLUMN XF_FX_SWAPDEALS.COSTATTR1
  IS '其它1';
COMMENT ON COLUMN XF_FX_SWAPDEALS.COSTATTR2
  IS '其它2';
COMMENT ON COLUMN XF_FX_SWAPDEALS.COSTATTR3
  IS '其它3';
COMMENT ON COLUMN XF_FX_SWAPDEALS.CLIENTCOSTATTR1
  IS '实施其它1';
COMMENT ON COLUMN XF_FX_SWAPDEALS.CLIENTCOSTATTR2
  IS '实施其它2';
COMMENT ON COLUMN XF_FX_SWAPDEALS.CLIENTCOSTATTR3
  IS '实施其它3';
COMMENT ON COLUMN XF_FX_SWAPDEALS.CLIENTCOSTATTR4
  IS '实施其它4';
comment on column XF_FX_SWAPDEALS.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';
comment on column XF_FX_SWAPDEALS.COSTSWAPPOINTS
  is '总分掉期点';
comment on column xf_fx_swapdeals.tranCode
  is '交易码';
comment on column xf_fx_swapdeals.optiondate
  is '择期日';

--代客掉期交易表
create table XF_FX_SWAPTRADE
(
  DOWNLOADKEY        NUMBER(16) not null,
  DOWNLOADKEYINT     NUMBER(16) not null,
  BLOCKNUMBER        NUMBER(16),
  BUSINESSNO         VARCHAR2(50) not null,
  SOURCENO           NUMBER(16),
  HEADNO             NUMBER(16),
  TRADEPLAT          VARCHAR2(30) not null,
  PRODUCTID          NUMBER(20) not null,
  ORGPRODUCTID       NUMBER(20) not null,
  ORGINPUTCHANNEL    INTEGER,
  APPID              NUMBER(2) not null,
  BANKID             VARCHAR2(16) not null,
  CUSTBANK           VARCHAR2(16),
  MASTERBANK         VARCHAR2(16) not null,
  INPUTBANKID        VARCHAR2(16),
  BOOKINGID          VARCHAR2(15),
  BRANCHBANK         VARCHAR2(16),
  SUBBRANCHBANK      VARCHAR2(16),
  OUTLETSBANK        VARCHAR2(16),
  SUBTELLERID        VARCHAR2(60),
  SUBTELLERNAME      VARCHAR2(60),
  TELLERID           VARCHAR2(60),
  TELLERNAME         VARCHAR2(60),
  MASTERTELLERID     VARCHAR2(60),
  MASTERTELLERNAME   VARCHAR2(60),
  MASTERCHECKID      VARCHAR2(60),
  MASTERCHECKNAME    VARCHAR2(50),
  CUSTOMERID         VARCHAR2(30),
  CUSTNAME           VARCHAR2(400),
  OUTCUSTOMERID      VARCHAR2(30),
  CUSTMAINMANAGER    VARCHAR2(60),
  CUSTMANAGERNAME    VARCHAR2(60),
  TRADESTATUS        number(1) not null,
  RPTUSDAMOUNT       NUMBER(18,2),
  RPTUSDRATE         NUMBER(15,8),
  USDCNYRATE         NUMBER(15,8),
  CAPTUREDATE        NUMBER(8),
  MEMO               VARCHAR2(2000),
  CUSTMEMO           VARCHAR2(2000),
  USDCNYNEARRATE     NUMBER(15,8),
  USDCNYFARRATE      NUMBER(15,8),
  ISRISKCTL          NUMBER(1) not null,
  ALLAPPROVALNO      VARCHAR2(80),
  CNYRATE            NUMBER(15,8),
  CNYAMT             NUMBER(18,2),
  BREACHFLAG         NUMBER(1),
  BREACHRMK          VARCHAR2(310),
  TRADECHGFLAG       NUMBER(1),
  DELIVERYFLAG       NUMBER(1),
  FARDELIVERYFLAG    NUMBER(1),
  FIXDATE            INTEGER,
  FIXRATETYPE        NUMBER(1),
  NEARFIXDATE        INTEGER,
  NEARFIXRATETYPE    NUMBER(1),
  FIXRATE            NUMBER(18,6),
  FIXRATEFLG         NUMBER(1),
  NEARFIXRATE        NUMBER(18,6),
  NEARFIXRATEFLG     NUMBER(1),
  EARLYAPPOINTFLG    NUMBER(1),
  ALLBREACHTRADETYPE NUMBER(1),
  TRANMODE           INTEGER not null,
  SPECIALSTATE       NUMBER(10) not null,
  INPUTMODE          INTEGER not null,
  custFlag          INTEGER,
  NEARTERMID         VARCHAR2(10),
  FARTERMID          VARCHAR2(10),
  NEARDAYS           INTEGER,
  FARDAYS            INTEGER,
  BUYORSELL          VARCHAR2(3) not null,
  CYCODE1            VARCHAR2(10) not null,
  CYCODE2            VARCHAR2(10) not null,
  CALCYCODE          INTEGER not null,
  CUSTNEARAMT1       NUMBER(18,2),
  CUSTNEARAMT2       NUMBER(18,2),
  CUSTFARAMT1        NUMBER(18,2),
  CUSTFARAMT2        NUMBER(18,2),
  USDAMOUNT          NUMBER(18,2),
  SPOTRATE           NUMBER(15,8),
  NEARCUSTPOINTS     NUMBER(12,2),
  NEARCUSTRATE       NUMBER(15,8),
  FARCUSTPOINTS      NUMBER(12,2),
  FARCUSTRATE        NUMBER(15,8),
  SPOTDATE           number(8) not null,
  VALUEDATE          INTEGER not null,
  MATURITYDATE       INTEGER not null,
  TRADETIME          number(6) not null,
  TRADEDATE          number(8) not null,
  OPTIONDATE         number(8) null,
  NEARCYCODE1ACCTYPE INTEGER,
  NEARCYCODE1ACCOUNT VARCHAR2(50),
  NEARCYCODE2ACCTYPE INTEGER,
  NEARCYCODE2ACCOUNT VARCHAR2(50),
  NEARNETACCTYPE     INTEGER,
  NEARNETACCOUNT     VARCHAR2(50),
  FARCYCODE1ACCTYPE  INTEGER,
  FARCYCODE1ACCOUNT  VARCHAR2(50),
  FARCYCODE2ACCTYPE  INTEGER,
  FARCYCODE2ACCOUNT  VARCHAR2(50),
  FARNETACCTYPE      INTEGER,
  FARNETACCOUNT      VARCHAR2(50),
  INPUTCHANNEL       INTEGER not null,
  SOURCETYPE         INTEGER,
  HEADTYPE           INTEGER,
  CUSTFAVPOINT       NUMBER(12,2) DEFAULT 0,
  BRANCHPROFITPOINT  NUMBER(12,2) DEFAULT 0,
  PROFITBRANCHCURR   VARCHAR2(10),
  PROFITBRANCHCURRAMT NUMBER(18,2) DEFAULT 0,
  NEARCUSTFAVPOINT       NUMBER(12,2) DEFAULT 0,
  NEARBRANCHPROFITPOINT  NUMBER(12,2) DEFAULT 0,
  NEARPROFITBRANCHCURRAMT NUMBER(18,2) DEFAULT 0,
  USDCYCODERATE      NUMBER(15,8),
  FARCUSTGUIRATE     NUMBER(15,8),
  NEARCUSTGUIRATE    NUMBER(15,8),
  OTHBUS           VARCHAR2(2),
  OTHBUSKEY        VARCHAR2(50),
  OTHDOWNKEY       NUMBER(16),
  ATTR1            VARCHAR2(50),
  ATTR2            VARCHAR2(50),
  ATTR3            VARCHAR2(50),
  CLIENTATTR1      VARCHAR2(50),
  CLIENTATTR2      VARCHAR2(50),
  CLIENTATTR3      VARCHAR2(50),
  CLIENTATTR4      VARCHAR2(50),
  orgLegFlag char(1),
  ratelock char(1) default '0',
  CUSTSWAPPOINTS  NUMBER(12,2),
  tranCode VARCHAR2(60),
  lastdate date
)
;
comment on table XF_FX_SWAPTRADE
  is '代客掉期交易表';
comment on column XF_FX_SWAPTRADE.DOWNLOADKEY
  is '交易唯一流水号';
comment on column XF_FX_SWAPTRADE.DOWNLOADKEYINT
  is '总分交易流水号';
comment on column XF_FX_SWAPTRADE.BLOCKNUMBER
  is '套号唯一流水';
comment on column XF_FX_SWAPTRADE.BUSINESSNO
  is '交易业务编号';
comment on column XF_FX_SWAPTRADE.SOURCENO
  is '原交易流水号';
comment on column XF_FX_SWAPTRADE.HEADNO
  is '原始交易流水号';
comment on column XF_FX_SWAPTRADE.TRADEPLAT
  is '交易台';
comment on column XF_FX_SWAPTRADE.PRODUCTID
  is '产品ID';
comment on column XF_FX_SWAPTRADE.ORGPRODUCTID
  is '原始产品ID';
comment on column XF_FX_SWAPTRADE.ORGINPUTCHANNEL
  is '原始交易来源';
comment on column XF_FX_SWAPTRADE.APPID
  is '产品类型 (1-外汇，2-结售汇)';
comment on column XF_FX_SWAPTRADE.BANKID
  is '交易发生机构号';
comment on column XF_FX_SWAPTRADE.CUSTBANK
  is '账务机构号';
comment on column XF_FX_SWAPTRADE.MASTERBANK
  is '总行机构号';
comment on column XF_FX_SWAPTRADE.INPUTBANKID
  is '录入机构号';
comment on column XF_FX_SWAPTRADE.BOOKINGID
  is '实体ID';
comment on column XF_FX_SWAPTRADE.BRANCHBANK
  is '分行机构号';
comment on column XF_FX_SWAPTRADE.SUBBRANCHBANK
  is '支行机构号';
comment on column XF_FX_SWAPTRADE.OUTLETSBANK
  is '网点机构号';
comment on column XF_FX_SWAPTRADE.SUBTELLERID
  is '经办柜员';
comment on column XF_FX_SWAPTRADE.SUBTELLERNAME
  is '经办柜员姓名';
comment on column XF_FX_SWAPTRADE.TELLERID
  is '分行复核柜员';
comment on column XF_FX_SWAPTRADE.TELLERNAME
  is '分行复核柜员姓名';
comment on column XF_FX_SWAPTRADE.MASTERTELLERID
  is '总行柜员';
comment on column XF_FX_SWAPTRADE.MASTERTELLERNAME
  is '总行柜员姓名';
comment on column XF_FX_SWAPTRADE.MASTERCHECKID
  is '总行复核柜员';
comment on column XF_FX_SWAPTRADE.MASTERCHECKNAME
  is '总行复核柜员姓名';
comment on column XF_FX_SWAPTRADE.CUSTOMERID
  is '内部客户号';
comment on column XF_FX_SWAPTRADE.CUSTNAME
  is '客户名称 ';
comment on column XF_FX_SWAPTRADE.OUTCUSTOMERID
  is '核心客户号';
comment on column XF_FX_SWAPTRADE.CUSTMAINMANAGER
  is '客户经理';
comment on column XF_FX_SWAPTRADE.CUSTMANAGERNAME
  is '客户经理名称';
comment on column XF_FX_SWAPTRADE.TRADESTATUS
  is '交易状态 (0-正常 1-撤消)';
comment on column XF_FX_SWAPTRADE.RPTUSDAMOUNT
  is '折美元金额(报表使用)';
comment on column XF_FX_SWAPTRADE.RPTUSDRATE
  is '折美元汇率(报表使用)';
comment on column XF_FX_SWAPTRADE.USDCNYRATE
  is '美元到人民币汇率';
comment on column XF_FX_SWAPTRADE.CAPTUREDATE
  is '当前记录产生日期（取低频系统当前的日期，不可修改）';
comment on column XF_FX_SWAPTRADE.MEMO
  is '摘要';
comment on column XF_FX_SWAPTRADE.CUSTMEMO
  is '客户化备注';
comment on column XF_FX_SWAPTRADE.USDCNYNEARRATE
  is '美元到人民币的近端汇率';
comment on column XF_FX_SWAPTRADE.USDCNYFARRATE
  is '美元到人民币的远端汇率';
comment on column XF_FX_SWAPTRADE.ISRISKCTL
  is '是否免风控(0-是1-否)';
comment on column XF_FX_SWAPTRADE.ALLAPPROVALNO
  is '组合审批号';
comment on column XF_FX_SWAPTRADE.CNYRATE
  is '折人币汇率';
comment on column XF_FX_SWAPTRADE.CNYAMT
  is '折人民币金额';
comment on column XF_FX_SWAPTRADE.BREACHFLAG
  is '平仓原因标识 0－默认  1－银行原因 2－客户原因';
comment on column XF_FX_SWAPTRADE.BREACHRMK
  is '平仓原因说明';
comment on column XF_FX_SWAPTRADE.TRADECHGFLAG
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_SWAPTRADE.DELIVERYFLAG
  is '近端交割方式(2-实物交割，1-现金交割)';
comment on column XF_FX_SWAPTRADE.FARDELIVERYFLAG
  is '远端交割方式(2-实物交割，1-现金交割)';
comment on column XF_FX_SWAPTRADE.FIXDATE
  is '定盘日';
comment on column XF_FX_SWAPTRADE.FIXRATETYPE
  is '定盘汇率类型(CF12：0-BJ9:00 1-BJ15:00 2-实时价)';
comment on column XF_FX_SWAPTRADE.NEARFIXDATE
  is '近端定盘日';
comment on column XF_FX_SWAPTRADE.NEARFIXRATETYPE
  is '近端定盘汇率类型(CF12：0-BJ9:00 1-BJ15:00 2-实时价)';
comment on column XF_FX_SWAPTRADE.FIXRATE
  is '定盘汇率';
comment on column XF_FX_SWAPTRADE.FIXRATEFLG
  is '定盘标识（CF08：0-未定盘 1-批量定盘 2-手工改价）';
comment on column XF_FX_SWAPTRADE.NEARFIXRATE
  is '近端定盘汇率';
comment on column XF_FX_SWAPTRADE.NEARFIXRATEFLG
  is '近端定盘标识（CF08：0-未定盘 1-批量定盘 2-手工改价）';
comment on column XF_FX_SWAPTRADE.EARLYAPPOINTFLG
  is '预约标识（CF13：1-非预约 2-近端预约 3-远端预约（远期和掉期远端用））';
comment on column XF_FX_SWAPTRADE.ALLBREACHTRADETYPE
  is '全部平仓类型：(CF14：0-全部平仓1-近端全部平仓 2-远端全部平仓)';
comment on column XF_FX_SWAPTRADE.TRANMODE
  is '交易模式(0- 市价交易,1-询价交易)';
comment on column XF_FX_SWAPTRADE.SPECIALSTATE
  is '特殊交易类别(0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘 10-提前平仓，11-到期平仓，12-近端原价展期，13-近端市价展期，14-近端到期交割，15-近端到期平仓，16-近端提前交割，17-近端提前平仓)';
comment on column XF_FX_SWAPTRADE.INPUTMODE
  is '录入模式(0-分行录入,1-总行补录)';
comment on column xf_fx_swaptrade.custFlag
  is '客户性质(0-企业客户,1-同业客户)';
comment on column XF_FX_SWAPTRADE.NEARTERMID
  is '近端期限名称';
comment on column XF_FX_SWAPTRADE.FARTERMID
  is '远端期限名称';
comment on column XF_FX_SWAPTRADE.NEARDAYS
  is '近端天数';
comment on column XF_FX_SWAPTRADE.FARDAYS
  is '远端天数';
comment on column XF_FX_SWAPTRADE.BUYORSELL
  is '买卖方向(S/B-客户买入 B/S-客户卖出)';
comment on column XF_FX_SWAPTRADE.CYCODE1
  is '货币1代码';
comment on column XF_FX_SWAPTRADE.CYCODE2
  is '货币2代码';
comment on column XF_FX_SWAPTRADE.CALCYCODE
  is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_SWAPTRADE.CUSTNEARAMT1
  is '货币1近端客户金额';
comment on column XF_FX_SWAPTRADE.CUSTNEARAMT2
  is '货币2近端客户金额';
comment on column XF_FX_SWAPTRADE.CUSTFARAMT1
  is '货币1远端客户金额';
comment on column XF_FX_SWAPTRADE.CUSTFARAMT2
  is '货币2远端客户金额';
comment on column XF_FX_SWAPTRADE.USDAMOUNT
  is '折美元金额(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SWAPTRADE.SPOTRATE
  is '即期汇率';
comment on column XF_FX_SWAPTRADE.NEARCUSTPOINTS
  is '客户近端掉期点';
comment on column XF_FX_SWAPTRADE.NEARCUSTRATE
  is '近端客户汇率';
comment on column XF_FX_SWAPTRADE.FARCUSTPOINTS
  is '客户远端掉期点';
comment on column XF_FX_SWAPTRADE.FARCUSTRATE
  is '远端客户汇率';
comment on column XF_FX_SWAPTRADE.SPOTDATE
  is '即期起息日';
comment on column XF_FX_SWAPTRADE.VALUEDATE
  is '起息日';
comment on column XF_FX_SWAPTRADE.MATURITYDATE
  is '到期日';
comment on column XF_FX_SWAPTRADE.TRADETIME
  is '交易时间';
comment on column XF_FX_SWAPTRADE.TRADEDATE
  is '交易日期';
comment on column XF_FX_SWAPTRADE.NEARCYCODE1ACCTYPE
  is '近端货币1账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SWAPTRADE.NEARCYCODE1ACCOUNT
  is '近端货币1客户账号';
comment on column XF_FX_SWAPTRADE.NEARCYCODE2ACCTYPE
  is '近端货币2账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SWAPTRADE.NEARCYCODE2ACCOUNT
  is '近端货币2客户账号';
comment on column XF_FX_SWAPTRADE.NEARNETACCTYPE
  is '近端轧差账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SWAPTRADE.NEARNETACCOUNT
  is '近端轧差账户';
comment on column XF_FX_SWAPTRADE.FARCYCODE1ACCTYPE
  is '远端货币1账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SWAPTRADE.FARCYCODE1ACCOUNT
  is '远端货币1客户账号';
comment on column XF_FX_SWAPTRADE.FARCYCODE2ACCTYPE
  is '远端货币2账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SWAPTRADE.FARCYCODE2ACCOUNT
  is '远端货币2客户账号';
comment on column XF_FX_SWAPTRADE.FARNETACCTYPE
  is '远端轧差账号类型(0-内部账号 1-客户账号)';
comment on column XF_FX_SWAPTRADE.FARNETACCOUNT
  is '远端轧差账户';
comment on column XF_FX_SWAPTRADE.INPUTCHANNEL
  is '交易渠道(0-x-funds 1-核心系统  2-外汇交易中心 3-国结系统)';
comment on column XF_FX_SWAPTRADE.SOURCETYPE
  is '原交易交易类型';
comment on column XF_FX_SWAPTRADE.HEADTYPE
  is '原始交易类型';
comment on column XF_FX_SWAPTRADE.USDCYCODERATE
  is '折美元汇率(用于金额优惠判断时使用，市价询价判断不适用该金额)';
comment on column XF_FX_SWAPTRADE.FARCUSTGUIRATE
  is '远端客户参考汇率';
comment on column XF_FX_SWAPTRADE.NEARCUSTGUIRATE
  is '近端客户参考汇率';
COMMENT ON COLUMN XF_FX_SWAPTRADE.CUSTFAVPOINT
  IS '客户优惠点';
COMMENT ON COLUMN XF_FX_SWAPTRADE.BRANCHPROFITPOINT
  IS '分行收益点';
COMMENT ON COLUMN XF_FX_SWAPTRADE.PROFITBRANCHCURR
  IS '原币分行损益货币';
COMMENT ON COLUMN XF_FX_SWAPTRADE.PROFITBRANCHCURRAMT
  IS '原币分行损益金额（总分和分客价差）';
COMMENT ON COLUMN XF_FX_SWAPTRADE.NEARCUSTFAVPOINT
  IS '近端客户优惠点';
COMMENT ON COLUMN XF_FX_SWAPTRADE.NEARBRANCHPROFITPOINT
  IS '近端分行收益点';
COMMENT ON COLUMN XF_FX_SWAPTRADE.NEARPROFITBRANCHCURRAMT
  IS '近端原币分行损益金额（总分和分客价差）';
COMMENT ON COLUMN XF_FX_SWAPTRADE.OTHBUS
  IS '1-外汇 2-结售汇 4-期权 8-货币掉期 20-贵金属';
comment on column XF_FX_SWAPTRADE.othbuskey
  is '其他品种业务编号';
comment on column XF_FX_SWAPTRADE.othdownkey
  is '其他品种交易流水号';
COMMENT ON COLUMN XF_FX_SWAPTRADE.ATTR1
  IS '其它1';
COMMENT ON COLUMN XF_FX_SWAPTRADE.ATTR2
  IS '其它2';
COMMENT ON COLUMN XF_FX_SWAPTRADE.ATTR3
  IS '其它3';
COMMENT ON COLUMN XF_FX_SWAPTRADE.CLIENTATTR1
  IS '实施其它1';
COMMENT ON COLUMN XF_FX_SWAPTRADE.CLIENTATTR2
  IS '实施其它2';
COMMENT ON COLUMN XF_FX_SWAPTRADE.CLIENTATTR3
  IS '实施其它3';
COMMENT ON COLUMN XF_FX_SWAPTRADE.CLIENTATTR4
  IS '实施其它4';
comment on column XF_FX_SWAPTRADE.orgLegFlag
  is '原始交易 0-即期 远期、掉期远端(近端+远端) 1-掉期近端';
comment on column XF_FX_SWAPTRADE.CUSTSWAPPOINTS
  is '客户掉期点';
comment on column XF_FX_SWAPTRADE.ratelock
  is '锁价类型 0-实时价 1-价格 2-收益点 F60';
comment on column xf_fx_swaptrade.tranCode
is '交易码';
comment on column xf_fx_swaptrade.lastdate
  is '时间戳';
comment on column xf_fx_swaptrade.optiondate
  is '择期日';

--交割汇总表
create table XF_FX_TOTALDELIVERY
(
  DOWNLOADKEY            INTEGER not null,
  GLSTATUS               INTEGER not null,
  ROLLBACKDATE           INTEGER,
  DELIVERYAMOUNT1        NUMBER(18,2) default 0,
  DELIVERYAMOUNT2        NUMBER(18,2) default 0,
  DURATIONAMOUNT1        NUMBER(18,2) default 0,
  DURATIONAMOUNT2        NUMBER(18,2) default 0,
  BREACHAMOUNT1          NUMBER(18,2) default 0,
  BREACHAMOUNT2          NUMBER(18,2) default 0,
  EDELIVERYAMOUNT1       NUMBER(18,2) default 0,
  EDELIVERYAMOUNT2       NUMBER(18,2) default 0,
  NEARDELIVERYAMOUNT1    NUMBER(18,2) default 0,
  NEARDELIVERYAMOUNT2    NUMBER(18,2) default 0,
  NEARBREACHAMOUNT1      NUMBER(18,2) default 0,
  NEARBREACHAMOUNT2      NUMBER(18,2) default 0,
  CREDITAMOUNT           NUMBER(18,2) default 0,
  NODELIVERYAMOUNT1      NUMBER(18,2) default 0,
  NODELIVERYAMOUNT2      NUMBER(18,2) default 0,
  NOFARDELIVERYAMOUNT1   NUMBER(18,2) default 0,
  NOFARDELIVERYAMOUNT2   NUMBER(18,2) default 0,
  CLEARERRMSG            VARCHAR2(500),
  BUSINESSNO             VARCHAR2(50) not null,
  BLOCKNUMBER            NUMBER(16) not null,
  INAMOUNT1              NUMBER(18,2) default 0,
  INAMOUNT2              NUMBER(18,2) default 0,
  OUTAMOUNT1             NUMBER(18,2) default 0,
  OUTAMOUNT2             NUMBER(18,2) default 0,
  LIQUIDATIONAMOUNT1     NUMBER(18,2) default 0,
  LIQUIDATIONAMOUNT2     NUMBER(18,2) default 0,
  NEARLIQUIDATIONAMOUNT1 NUMBER(18,2) default 0,
  NEARLIQUIDATIONAMOUNT2 NUMBER(18,2) default 0,
  NEARDURATIONAMOUNT1    NUMBER(18,2) default 0,
  NEARDURATIONAMOUNT2    NUMBER(18,2) default 0,
  NEAREDELIVERYAMOUNT1   NUMBER(18,2) default 0,
  NEAREDELIVERYAMOUNT2   NUMBER(18,2) default 0,
  GLDATE                 INTEGER,
  GLCANDATE              INTEGER,
  ATTR1             VARCHAR2(50),
  ATTR2             VARCHAR2(50),
  ATTR3             VARCHAR2(50),
  CLIENTATTR1       VARCHAR2(50),
  CLIENTATTR2       VARCHAR2(50),
  CLIENTATTR3       VARCHAR2(50),
  CLIENTATTR4       VARCHAR2(50)
);
comment on table XF_FX_TOTALDELIVERY
  is '交割汇总表';
comment on column XF_FX_TOTALDELIVERY.DOWNLOADKEY
  is '系统内部唯一流水';
comment on column XF_FX_TOTALDELIVERY.GLSTATUS
  is '清算状态 0-未清算、1-清算失败、2-清算成功、3-无需清算、4-未明状态 ';
comment on column XF_FX_TOTALDELIVERY.ROLLBACKDATE
  is '交割宽限日期';
comment on column XF_FX_TOTALDELIVERY.DELIVERYAMOUNT1
  is '已交割金额1(即期,远期,掉期远端)';
comment on column XF_FX_TOTALDELIVERY.DELIVERYAMOUNT2
  is '已交割金额2(即期,远期,掉期远端)';
comment on column XF_FX_TOTALDELIVERY.DURATIONAMOUNT1
  is '已展期金额1';
comment on column XF_FX_TOTALDELIVERY.DURATIONAMOUNT2
  is '已展期金额2';
comment on column XF_FX_TOTALDELIVERY.BREACHAMOUNT1
  is '已平仓金额1';
comment on column XF_FX_TOTALDELIVERY.BREACHAMOUNT2
  is '已平仓金额2';
comment on column XF_FX_TOTALDELIVERY.EDELIVERYAMOUNT1
  is '已提前交割金额1';
comment on column XF_FX_TOTALDELIVERY.EDELIVERYAMOUNT2
  is '已提前交割金额2';
comment on column XF_FX_TOTALDELIVERY.NEARDELIVERYAMOUNT1
  is '掉期近端已交割金额1';
comment on column XF_FX_TOTALDELIVERY.NEARDELIVERYAMOUNT2
  is '掉期近端已交割金额2';
comment on column XF_FX_TOTALDELIVERY.NEARBREACHAMOUNT1
  is '掉期近端已平仓金额1';
comment on column XF_FX_TOTALDELIVERY.NEARBREACHAMOUNT2
  is '掉期近端已平仓金额2';
comment on column XF_FX_TOTALDELIVERY.CREDITAMOUNT
  is '授信已扣减额度';
comment on column XF_FX_TOTALDELIVERY.NODELIVERYAMOUNT1
  is '货币1剩余未交割金额(即期远期,掉期近端)';
comment on column XF_FX_TOTALDELIVERY.NODELIVERYAMOUNT2
  is '货币2剩余未交割金额(即期远期,掉期近端)';
comment on column XF_FX_TOTALDELIVERY.NOFARDELIVERYAMOUNT1
  is '货币1剩余未交割金额(掉期远端)';
comment on column XF_FX_TOTALDELIVERY.NOFARDELIVERYAMOUNT2
  is '货币2剩余未交割金额(掉期远端)';
comment on column XF_FX_TOTALDELIVERY.CLEARERRMSG
  is '清算状态说明';
comment on column XF_FX_TOTALDELIVERY.BUSINESSNO
  is '业务编号';
comment on column XF_FX_TOTALDELIVERY.BLOCKNUMBER
  is '套号流水';
comment on column XF_FX_TOTALDELIVERY.INAMOUNT1
  is '货币1结转入金额';
comment on column XF_FX_TOTALDELIVERY.INAMOUNT2
  is '货币2结转入金额';
comment on column XF_FX_TOTALDELIVERY.OUTAMOUNT1
  is '货币1结转出金额';
comment on column XF_FX_TOTALDELIVERY.OUTAMOUNT2
  is '货币2结转出金额';
comment on column XF_FX_TOTALDELIVERY.LIQUIDATIONAMOUNT1
  is '平仓金额1（即期、远期、掉期远端）';
comment on column XF_FX_TOTALDELIVERY.LIQUIDATIONAMOUNT2
  is '平仓金额2(即期、远期、掉期远端)';
comment on column XF_FX_TOTALDELIVERY.NEARLIQUIDATIONAMOUNT1
  is '掉期近端平仓金额1';
comment on column XF_FX_TOTALDELIVERY.NEARLIQUIDATIONAMOUNT2
  is '掉期近端平仓金额2';
comment on column XF_FX_TOTALDELIVERY.NEARDURATIONAMOUNT1
  is '掉期近端已展期金额1';
comment on column XF_FX_TOTALDELIVERY.NEARDURATIONAMOUNT2
  is '掉期近端已展期金额2';
comment on column XF_FX_TOTALDELIVERY.NEAREDELIVERYAMOUNT1
  is '掉期近端已提前交割金额1';
comment on column XF_FX_TOTALDELIVERY.NEAREDELIVERYAMOUNT2
  is '掉期近端已提前交割金额2';
comment on column XF_FX_TOTALDELIVERY.gldate
  is '清算成功日期(成功、无需清算日期),只有清算成功或者无需清算，其余状态，值默认空，更新状态时候同步处理';
comment on column XF_FX_TOTALDELIVERY.glcandate
  is '撤销冲正清算成功、无需清算日期(成功、无需清算日期)，更新状态时候同步处理';
   comment on column XF_FX_TOTALDELIVERY.ATTR1
  is '其它1';
comment on column XF_FX_TOTALDELIVERY.ATTR2
  is '其它2';
comment on column XF_FX_TOTALDELIVERY.ATTR3
  is '其它3';
comment on column XF_FX_TOTALDELIVERY.CLIENTATTR1
  is '实施其它1';
comment on column XF_FX_TOTALDELIVERY.CLIENTATTR2
  is '实施其它2';
comment on column XF_FX_TOTALDELIVERY.CLIENTATTR3
  is '实施其它3';
comment on column XF_FX_TOTALDELIVERY.CLIENTATTR4
  is '实施其它4';

--结售汇(外汇)附加资料交易表
create table XF_FX_TRADESUB
(
  DOWNLOADKEY NUMBER(16) not null,
  RMK1        VARCHAR2(400),
  RMK2        VARCHAR2(400),
  RMK3        VARCHAR2(400),
  RMK4        VARCHAR2(400),
  RMK5        VARCHAR2(400),
  RMK6        VARCHAR2(400),
  RMK7        VARCHAR2(400),
  RMK8        VARCHAR2(400),
  RMK9        VARCHAR2(400),
  RMK10       VARCHAR2(400),
  RMK11       VARCHAR2(400),
  RMK12       VARCHAR2(400),
  RMK13       VARCHAR2(400),
  RMK14       VARCHAR2(400),
  RMK15       VARCHAR2(400),
  RMK16       VARCHAR2(400),
  RMK17       VARCHAR2(400),
  RMK18       VARCHAR2(400),
  RMK19       VARCHAR2(400),
  RMK20       VARCHAR2(400),
  RMK21       VARCHAR2(400),
  RMK22       VARCHAR2(400),
  RMK23       VARCHAR2(400),
  RMK24       VARCHAR2(400),
  RMK25       VARCHAR2(400),
  RMK26       VARCHAR2(400),
  RMK27       VARCHAR2(400),
  RMK28       VARCHAR2(400),
  RMK29       VARCHAR2(400),
  RMK30       VARCHAR2(400),
  RMK31      VARCHAR2(400),
  RMK32      VARCHAR2(400),
  RMK33      VARCHAR2(400),
  RMK34      VARCHAR2(400),
  RMK35      VARCHAR2(400),
  RMK36      VARCHAR2(400),
  RMK37      VARCHAR2(400),
  RMK38      VARCHAR2(400),
  RMK39      VARCHAR2(400),
  RMK40      VARCHAR2(400),
  RMK41      VARCHAR2(400),
  RMK42      VARCHAR2(400),
  RMK43      VARCHAR2(400),
  RMK44      VARCHAR2(400),
  RMK45      VARCHAR2(400),
  RMK46      VARCHAR2(400),
  RMK47      VARCHAR2(400),
  RMK48      VARCHAR2(400),
  RMK49      VARCHAR2(400),
  RMK50      VARCHAR2(400),
  CRMK51      VARCHAR2(400),
  CRMK52      VARCHAR2(400),
  CRMK53      VARCHAR2(400),
  CRMK54      VARCHAR2(400),
  CRMK55      VARCHAR2(400),
  CRMK56      VARCHAR2(400),
  CRMK57      VARCHAR2(400),
  CRMK58      VARCHAR2(400),
  CRMK59      VARCHAR2(400),
  CRMK60      VARCHAR2(400),
  CAMT1       NUMBER(28,8),
  CAMT2       NUMBER(28,8),
  CAMT3       NUMBER(28,8),
  CAMT4       NUMBER(28,8),
  CAMT5       NUMBER(28,8),
  CINT1       NUMBER(16),
  CINT2       NUMBER(16),
  CINT3       NUMBER(16),
  CINT4       NUMBER(16),
  CINT5       NUMBER(16)
)
;
comment on table XF_FX_TRADESUB
  is '结售汇(外汇)附加资料交易表';
comment on column XF_FX_TRADESUB.DOWNLOADKEY
  is '交易流水主key(对应交易套号流水)';
comment on column XF_FX_TRADESUB.RMK1
  is ' 国结业务类型';
comment on column XF_FX_TRADESUB.RMK2
  is '结售汇交易项目代码(掉期远端、即期、远期)';
comment on column XF_FX_TRADESUB.RMK3
  is '结售汇交易子项目代码(掉期远端、即期、远期)';
comment on column XF_FX_TRADESUB.RMK4
  is '交易编码代码(掉期远端、即期、远期)';
comment on column XF_FX_TRADESUB.RMK5
  is '掉期近端结售汇交易项目代码';
comment on column XF_FX_TRADESUB.RMK6
  is '掉期近端结售汇交易子项目代码';
comment on column XF_FX_TRADESUB.RMK7
  is '掉期近端交易编码代码 ';
comment on column XF_FX_TRADESUB.RMK8
  is '备用8';
comment on column XF_FX_TRADESUB.RMK9
  is '备用9';
comment on column XF_FX_TRADESUB.RMK10
  is '货币1我行账户行';
comment on column XF_FX_TRADESUB.RMK11
  is '货币1对手行账户行';
comment on column XF_FX_TRADESUB.RMK12
  is '货币1中间行账户行';
comment on column XF_FX_TRADESUB.RMK13
  is '货币2我行账户行';
comment on column XF_FX_TRADESUB.RMK14
  is '货币2对手行账户行';
comment on column XF_FX_TRADESUB.RMK15
  is '货币2中间行账户行';
comment on column XF_FX_TRADESUB.RMK16
  is '是否银行卡支付（0 不是，1 是）';
comment on column XF_FX_TRADESUB.RMK17
  is '参数17';
comment on column XF_FX_TRADESUB.RMK18
  is '参数18';
comment on column XF_FX_TRADESUB.RMK19
  is '参数19';
comment on column XF_FX_TRADESUB.RMK20
  is '参数20';
comment on column XF_FX_TRADESUB.RMK21
  is '参数21';
comment on column XF_FX_TRADESUB.RMK22
  is '参数22';
comment on column XF_FX_TRADESUB.RMK23
  is '参数23';
comment on column XF_FX_TRADESUB.RMK24
  is '参数24';
comment on column XF_FX_TRADESUB.RMK25
  is '参数25';
comment on column XF_FX_TRADESUB.RMK26
  is '参数26';
comment on column XF_FX_TRADESUB.RMK27
  is '参数27';
comment on column XF_FX_TRADESUB.RMK28
  is '参数28';
comment on column XF_FX_TRADESUB.RMK29
  is '参数29';
comment on column XF_FX_TRADESUB.RMK30
  is '参数30';
comment on column XF_FX_TRADESUB.RMK31
  is '参数31';
comment on column XF_FX_TRADESUB.RMK32
  is '参数32';
comment on column XF_FX_TRADESUB.RMK33
  is '参数33';
comment on column XF_FX_TRADESUB.RMK34
  is '参数34';
comment on column XF_FX_TRADESUB.RMK35
  is '参数35';
comment on column XF_FX_TRADESUB.RMK36
  is '参数36';
comment on column XF_FX_TRADESUB.RMK37
  is '参数37';
comment on column XF_FX_TRADESUB.RMK38
  is '参数38';
comment on column XF_FX_TRADESUB.RMK39
  is '参数39';
comment on column XF_FX_TRADESUB.RMK40
  is '参数40';
comment on column XF_FX_TRADESUB.RMK41
  is '参数41';
comment on column XF_FX_TRADESUB.RMK42
  is '参数42';
comment on column XF_FX_TRADESUB.RMK43
  is '参数43';
comment on column XF_FX_TRADESUB.RMK44
  is '参数44';
comment on column XF_FX_TRADESUB.RMK45
  is '参数45';
comment on column XF_FX_TRADESUB.RMK46
  is '参数46';
comment on column XF_FX_TRADESUB.RMK47
  is '参数47';
comment on column XF_FX_TRADESUB.RMK48
  is '参数48';
comment on column XF_FX_TRADESUB.RMK49
  is '参数49';
comment on column XF_FX_TRADESUB.RMK50
  is '参数50';
comment on column XF_FX_TRADESUB.CRMK51
  is '备用51';
comment on column XF_FX_TRADESUB.CRMK52
  is '备用52';
comment on column XF_FX_TRADESUB.CRMK53
  is '备用53';
comment on column XF_FX_TRADESUB.CRMK54
  is '备用54';
comment on column XF_FX_TRADESUB.CRMK55
  is '备用55';
comment on column XF_FX_TRADESUB.CRMK56
  is '备用56';
comment on column XF_FX_TRADESUB.CRMK57
  is '备用57';
comment on column XF_FX_TRADESUB.CRMK58
  is '备用58';
comment on column XF_FX_TRADESUB.CRMK59
  is '备用59';
comment on column XF_FX_TRADESUB.CRMK60
  is '备用60';
comment on column XF_FX_TRADESUB.CAMT1
  is '金额1';
comment on column XF_FX_TRADESUB.CAMT2
  is '金额2';
comment on column XF_FX_TRADESUB.CAMT3
  is '金额3';
comment on column XF_FX_TRADESUB.CAMT4
  is '金额4';
comment on column XF_FX_TRADESUB.CAMT5
  is '金额5';
comment on column XF_FX_TRADESUB.CINT1
  is '数字1';
comment on column XF_FX_TRADESUB.CINT2
  is '数字2';
comment on column XF_FX_TRADESUB.CINT3
  is '数字3';
comment on column XF_FX_TRADESUB.CINT4
  is '数字4';
comment on column XF_FX_TRADESUB.CINT5
  is '数字5';

create table XF_FX_DAILYPROFIT
(
  deliveryid    NUMBER(16) not null,
  businessno    VARCHAR2(50) not null,
  TRADEPLAT     VARCHAR2(30) not null,
  ACCTYPE       INTEGER not null,
  ACCSTATUS     INTEGER not null,
  productid     NUMBER(20) not null,
  orgproductid  NUMBER(20) not null,
  appid         NUMBER(2) not null,
  tradetype     NUMBER(2) not null,
  isfardelivery INTEGER not null,
  specialstate  NUMBER(10) not null,
  inputchannel  INTEGER not null,
  grouptype     INTEGER not null,
  cycode1       VARCHAR2(10) not null,
  cycode2       VARCHAR2(10) not null,
  amount1       NUMBER(18,2) not null,
  amount2       NUMBER(18,2),
  netcycode     VARCHAR2(10),
  netamount     NUMBER(24,2),
  masterbank    VARCHAR2(16) not null,
  bankid        VARCHAR2(16) not null,
  deliverydate  INTEGER not null,
  sourceno      NUMBER(16) not null,
  sourcetype    INTEGER not null,
  headno        NUMBER(16) not null,
  headtype      INTEGER not null,
  rate          NUMBER(16,8),
  lastcloserate NUMBER(16,8),
  profitamt     NUMBER(18,2),
  accflag       NUMBER(1),
  buyorsell     VARCHAR2(3),
  deliveryidint NUMBER(16),
  blocknumber   NUMBER(16) not null,
  allapprovalno VARCHAR2(80),
  tradechgflag  NUMBER(1),
  bookingid     VARCHAR2(15),
  calcycode     INTEGER,
  profitcurr    VARCHAR2(10)
);
-- Add comments to the table
comment on table XF_FX_DAILYPROFIT
  is '交割汇兑损益明细表';
-- Add comments to the columns
comment on column XF_FX_DAILYPROFIT.deliveryid
  is '交割流水号';
comment on column XF_FX_DAILYPROFIT.businessno
  is '交易业务编号';
comment on column XF_FX_DAILYPROFIT.productid
  is '产品ID';
comment on column XF_FX_DAILYPROFIT.orgproductid
  is '原始产品ID';
comment on column XF_FX_DAILYPROFIT.appid
  is '产品类型 1-外汇，2-结售汇';
comment on column XF_FX_DAILYPROFIT.tradetype
  is '交易类型 0-即期 1-远期 2-择期 3-掉期';
comment on column XF_FX_DAILYPROFIT.isfardelivery
  is '交易腿类型 0-默认 1-掉期近端 2 –掉期远端';
comment on column XF_FX_DAILYPROFIT.specialstate
  is '特殊交易状态0-普通交易1-提前平仓 2-交割日平仓 3-市价展期 4-提前交割 5-原价展期  6-全部平仓 7-反向平盘';
comment on column XF_FX_DAILYPROFIT.inputchannel
  is '交易渠道 0-x-funds 1-xpads 2-外汇交易中心 3-国结系统';
comment on column XF_FX_DAILYPROFIT.grouptype
  is '交易性质 0-代客交易，1-总分交易， 2-自营交易3-平盘交易 4-部门交易';
comment on column XF_FX_DAILYPROFIT.cycode1
  is '货币1';
comment on column XF_FX_DAILYPROFIT.cycode2
  is '货币2';
comment on column XF_FX_DAILYPROFIT.amount1
  is '货币1交割金额';
comment on column XF_FX_DAILYPROFIT.amount2
  is '货币2交割金额';
comment on column XF_FX_DAILYPROFIT.netcycode
  is '轧差货币';
comment on column XF_FX_DAILYPROFIT.netamount
  is '轧差金额';
comment on column XF_FX_DAILYPROFIT.masterbank
  is '总行机构号';
comment on column XF_FX_DAILYPROFIT.bankid
  is '交易发生机构号';
comment on column XF_FX_DAILYPROFIT.deliverydate
  is '交割日期';
comment on column XF_FX_DAILYPROFIT.sourceno
  is '原交易流水号 ';
comment on column XF_FX_DAILYPROFIT.sourcetype
  is '原交易交易类型';
comment on column XF_FX_DAILYPROFIT.headno
  is '原始交易流水号 ';
comment on column XF_FX_DAILYPROFIT.headtype
  is '原始交易类型';
comment on column XF_FX_DAILYPROFIT.rate
  is '交割汇率';
comment on column XF_FX_DAILYPROFIT.lastcloserate
  is '上一日收盘市场中间价';
comment on column XF_FX_DAILYPROFIT.profitamt
  is '银行损益金额';
comment on column XF_FX_DAILYPROFIT.accflag
  is '生成账务标识 0-失败，1-成功';
comment on column XF_FX_DAILYPROFIT.buyorsell
  is '买卖方向';
comment on column XF_FX_DAILYPROFIT.deliveryidint
  is '关联交割流水号';
comment on column XF_FX_DAILYPROFIT.blocknumber
  is '套号流水(对应当前交割交易的套号流水)';
comment on column XF_FX_DAILYPROFIT.allapprovalno
  is '组合审批号';
comment on column XF_FX_DAILYPROFIT.tradechgflag
  is '交易发生时间标识1-默认 2-提前 3-到期 4-逾期';
comment on column XF_FX_DAILYPROFIT.bookingid
  is '实体ID';
comment on column XF_FX_DAILYPROFIT.calcycode
  is '交易发生货币';
comment on column XF_FX_DAILYPROFIT.profitcurr
  is '损益货币';
comment on column XF_FX_DAILYPROFIT.ACCTYPE
  is '账类别 0-客户账  1-总分账';
comment on column XF_FX_DAILYPROFIT.ACCSTATUS
  is '交割状态 0-正常 1-撤消';

create table XF_FX_INSIDEFWDDEALS
(
    DOWNLOADKEY      NUMBER(16)    not null,
    BUSINESSNO       VARCHAR2(50)  not null ,
    BLOCKNUMBER      NUMBER(16)    not null,
    PRODUCTID        NUMBER(20)    not null ,
    TRADEPLAT        VARCHAR2(30)  not null ,
    APPID            NUMBER        not null ,
    TRANMODE         NUMBER        null ,
    TRADESTATUS      NUMBER(1)     null ,
    SPECIALSTATE     NUMBER        null ,
    INPUTMODE        NUMBER        null ,
    INNERTYPE        NUMBER        null ,
    SOURCEGROUP      VARCHAR2(50)      ,
    TARGETGROUP      VARCHAR2(50)      ,
    CYCODE1          VARCHAR2(10)  null ,
    CYCODE2          VARCHAR2(10)  null ,
    CALCYCODE        NUMBER        not null ,
    BUYORSELL        VARCHAR2(3)   not null ,
    AMOUNT1          NUMBER(18, 2) not null ,
    TERMID           VARCHAR2(10)  null ,
    DAYS             NUMBER        null ,
    AMOUNT2          NUMBER(18, 2) not null ,
    SPOTRATE         NUMBER(15, 8) null ,
    FARPOINTS        NUMBER(12, 2) not null ,
    COSTRATE         NUMBER(15, 8) not null ,
    USDAMOUNT        NUMBER(18, 2) null ,
    USDCYCODERATE    NUMBER(15, 8) null ,
    TRADETIME        NUMBER(6)     null ,
    TRADEDATE        NUMBER(8)     null ,
    VALUEDATE        NUMBER(8)     null ,
    MATURITYDATE     NUMBER(8)     null ,
    CNYRATE          NUMBER(15, 8) null ,
    CNYAMOUNT        NUMBER(18, 2) null ,
    BANKID           VARCHAR2(16)  null ,
    INPUTBANKID      VARCHAR2(16)  null ,
    MASTERBANKID     VARCHAR2(16)  null ,
    SUBTELLERID      VARCHAR2(60)  null ,
    SUBTELLERNAME    VARCHAR2(60)  null ,
    SUBCHECKID       VARCHAR2(60)  null ,
    SUBCHECKRNAME    VARCHAR2(60)  null ,
    MASTERTELLERID   VARCHAR2(60)  null ,
    MASTERTELLERNAME VARCHAR2(60)  null ,
    MASTERCHECKID    VARCHAR2(60)  null ,
    MASTERCHECKNAME  VARCHAR2(60)  null ,
    ATTR1            VARCHAR2(50)  null ,
    ATTR2            VARCHAR2(50)  null ,
    ATTR3            VARCHAR2(50)  null ,
    ATTR4            VARCHAR2(50)  null ,
    ATTR5            VARCHAR2(50)  null ,
    CLIENTATTR1      VARCHAR2(50)  null ,
    CLIENTATTR2      VARCHAR2(50)  null ,
    CLIENTATTR3      VARCHAR2(50)  null ,
    CLIENTATTR4      VARCHAR2(50)  null ,
    CLIENTATTR5      VARCHAR2(50)  null ,
    BOOKINGID        VARCHAR2(15)  not null ,
    RISKFLAG         VARCHAR2(15)  not null ,
    GROUPFLAG        VARCHAR2(15)  not null ,
    COMMENTS         VARCHAR2(200) null
);
comment on table XF_FX_INSIDEFWDDEALS is '远期内部交易表';

comment on column XF_FX_INSIDEFWDDEALS.DOWNLOADKEY is '交易流水号';
comment on column XF_FX_INSIDEFWDDEALS.BUSINESSNO is '业务编号';
comment on column XF_FX_INSIDEFWDDEALS.PRODUCTID is '产品ID';
comment on column XF_FX_INSIDEFWDDEALS.TRADEPLAT is '工作台';
comment on column XF_FX_INSIDEFWDDEALS.APPID is '交易产品类型(41-外汇，42-结售汇)';
comment on column XF_FX_INSIDEFWDDEALS.TRANMODE is '交易模式(0-市价交易，1-询价交易)';
comment on column XF_FX_INSIDEFWDDEALS.TRADESTATUS is '交易状态(0-正常 1-撤消)';
comment on column XF_FX_INSIDEFWDDEALS.SPECIALSTATE is '特殊交易类别(0-普通交易)';
comment on column XF_FX_INSIDEFWDDEALS.INPUTMODE is '录入模式(0-分行录入,1-总行代录)';
comment on column XF_FX_INSIDEFWDDEALS.INNERTYPE is '交易类型（0-内部交易，1-机构交易）';
comment on column XF_FX_INSIDEFWDDEALS.SOURCEGROUP is '源投组id';
comment on column XF_FX_INSIDEFWDDEALS.TARGETGROUP is '目标投组id';
comment on column XF_FX_INSIDEFWDDEALS.CYCODE1 is '货币1代码';
comment on column XF_FX_INSIDEFWDDEALS.CYCODE2 is '货币2代码';
comment on column XF_FX_INSIDEFWDDEALS.CALCYCODE is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_INSIDEFWDDEALS.BUYORSELL is '买卖方向(B-我方买入 S-我方卖出)';
comment on column XF_FX_INSIDEFWDDEALS.AMOUNT1 is '货币一金额';
comment on column XF_FX_INSIDEFWDDEALS.TERMID is '期限ID';
comment on column XF_FX_INSIDEFWDDEALS.DAYS is '交易天数';
comment on column XF_FX_INSIDEFWDDEALS.AMOUNT2 is '货币二金额';
comment on column XF_FX_INSIDEFWDDEALS.SPOTRATE is '即期汇率';
comment on column XF_FX_INSIDEFWDDEALS.FARPOINTS is '交易升贴水';
comment on column XF_FX_INSIDEFWDDEALS.COSTRATE is '签约汇率';
comment on column XF_FX_INSIDEFWDDEALS.USDAMOUNT is '折美元金额';
comment on column XF_FX_INSIDEFWDDEALS.USDCYCODERATE is '折美元汇率';
comment on column XF_FX_INSIDEFWDDEALS.TRADETIME is '交易时间';
comment on column XF_FX_INSIDEFWDDEALS.TRADEDATE is '交易日';
comment on column XF_FX_INSIDEFWDDEALS.VALUEDATE is '即期起息日';
comment on column XF_FX_INSIDEFWDDEALS.MATURITYDATE is '到期日';
comment on column XF_FX_INSIDEFWDDEALS.CNYRATE is '折人民币汇率';
comment on column XF_FX_INSIDEFWDDEALS.CNYAMOUNT is '折人民币金额';
comment on column XF_FX_INSIDEFWDDEALS.BANKID is '交易机构编号';
comment on column XF_FX_INSIDEFWDDEALS.INPUTBANKID is '录入机构编号';
comment on column XF_FX_INSIDEFWDDEALS.MASTERBANKID is '总行机构编号';
comment on column XF_FX_INSIDEFWDDEALS.SUBTELLERID is '经办柜员ID';
comment on column XF_FX_INSIDEFWDDEALS.SUBTELLERNAME is '经办柜员名称';
comment on column XF_FX_INSIDEFWDDEALS.SUBCHECKID is '分行复核柜员ID';
comment on column XF_FX_INSIDEFWDDEALS.SUBCHECKRNAME is '分行复核柜员名称';
comment on column XF_FX_INSIDEFWDDEALS.MASTERTELLERID is '总行经办柜员ID';
comment on column XF_FX_INSIDEFWDDEALS.MASTERTELLERNAME is '总行经办柜员名称';
comment on column XF_FX_INSIDEFWDDEALS.MASTERCHECKID is '总行复核柜员ID';
comment on column XF_FX_INSIDEFWDDEALS.MASTERCHECKNAME is '总行复核柜员名称';
comment on column XF_FX_INSIDEFWDDEALS.ATTR1 is '备用字段1';
comment on column XF_FX_INSIDEFWDDEALS.ATTR2 is '备用字段2';
comment on column XF_FX_INSIDEFWDDEALS.ATTR3 is '备用字段3';
comment on column XF_FX_INSIDEFWDDEALS.ATTR4 is '备用字段4';
comment on column XF_FX_INSIDEFWDDEALS.ATTR5 is '备用字段5';
comment on column XF_FX_INSIDEFWDDEALS.CLIENTATTR1 is '客户化备用字段1';
comment on column XF_FX_INSIDEFWDDEALS.CLIENTATTR2 is '客户化备用字段2';
comment on column XF_FX_INSIDEFWDDEALS.CLIENTATTR3 is '客户化备用字段3';
comment on column XF_FX_INSIDEFWDDEALS.CLIENTATTR4 is '客户化备用字段4';
comment on column XF_FX_INSIDEFWDDEALS.CLIENTATTR5 is '客户化备用字段5';
comment on column XF_FX_INSIDEFWDDEALS.BOOKINGID is '实体';
comment on column XF_FX_INSIDEFWDDEALS.RISKFLAG is '免风险标识（0-是，1-否）默认0';
comment on column XF_FX_INSIDEFWDDEALS.GROUPFLAG is '投组标识（1-源投组，2-目标投组）';
comment on column XF_FX_INSIDEFWDDEALS.COMMENTS is '流程附言';

create table XF_FX_INSIDESPOTDEALS
(
    DOWNLOADKEY      NUMBER(16)    not null,
    BLOCKNUMBER      NUMBER(16)    not null,
    BUSINESSNO       VARCHAR2(50)  not null ,
    PRODUCTID        NUMBER(20)    not null ,
    TRADEPLAT        VARCHAR2(30)  not null ,
    APPID            NUMBER        not null ,
    TRANMODE         NUMBER        null ,
    TRADESTATUS      NUMBER(1)     null ,
    SPECIALSTATE     NUMBER        null ,
    INPUTMODE        NUMBER        null ,
    INNERTYPE        NUMBER        null ,
    SOURCEGROUP      VARCHAR2(50)      ,
    TARGETGROUP      VARCHAR2(50)      ,
    CYCODE1          VARCHAR2(10)  null ,
    CYCODE2          VARCHAR2(10)  null ,
    CALCYCODE        NUMBER        not null ,
    BUYORSELL        VARCHAR2(3)   not null ,
    AMOUNT1          NUMBER(18, 2) not null ,
    AMOUNT2          NUMBER(18, 2) not null ,
    SPOTRATE         NUMBER(15, 8) null ,
    COSTRATE         NUMBER(15, 8) not null ,
    USDAMOUNT        NUMBER(18, 2) null ,
    USDCYCODERATE    NUMBER(15, 8) null ,
    TRADETIME        NUMBER(6)     null ,
    TRADEDATE        NUMBER(8)     null ,
    VALUEDATE        NUMBER(8)     null ,
    CNYRATE          NUMBER(15, 8) null ,
    CNYAMOUNT        NUMBER(18, 2) null ,
    BANKID           VARCHAR2(16)  null ,
    INPUTBANKID      VARCHAR2(16)  null ,
    MASTERBANKID     VARCHAR2(16)  null ,
    SUBTELLERID      VARCHAR2(60)  null ,
    SUBTELLERNAME    VARCHAR2(60)  null ,
    SUBCHECKID       VARCHAR2(60)  null ,
    SUBCHECKRNAME    VARCHAR2(60)  null ,
    MASTERTELLERID   VARCHAR2(60)  null ,
    MASTERTELLERNAME VARCHAR2(60)  null ,
    MASTERCHECKID    VARCHAR2(60)  null ,
    MASTERCHECKNAME  VARCHAR2(60)  null ,
    ATTR1            VARCHAR2(50)  null ,
    ATTR2            VARCHAR2(50)  null ,
    ATTR3            VARCHAR2(50)  null ,
    ATTR4            VARCHAR2(50)  null ,
    ATTR5            VARCHAR2(50)  null ,
    CLIENTATTR1      VARCHAR2(50)  null ,
    CLIENTATTR2      VARCHAR2(50)  null ,
    CLIENTATTR3      VARCHAR2(50)  null ,
    CLIENTATTR4      VARCHAR2(50)  null ,
    CLIENTATTR5      VARCHAR2(50)  null ,
    BOOKINGID        VARCHAR2(15)  not null ,
    RISKFLAG         VARCHAR2(15)  not null ,
    GROUPFLAG        VARCHAR2(15)  not null ,
    COMMENTS         VARCHAR2(200) null
);
comment on table XF_FX_INSIDESPOTDEALS is '即期内部交易表';

comment on column XF_FX_INSIDESPOTDEALS.DOWNLOADKEY is '交易流水号';
comment on column XF_FX_INSIDESPOTDEALS.BLOCKNUMBER is '交易套号';
comment on column XF_FX_INSIDESPOTDEALS.BUSINESSNO is '业务编号';
comment on column XF_FX_INSIDESPOTDEALS.PRODUCTID is '产品ID';
comment on column XF_FX_INSIDESPOTDEALS.TRADEPLAT is '工作台';
comment on column XF_FX_INSIDESPOTDEALS.APPID is '交易产品类型(41-外汇，42-结售汇)';
comment on column XF_FX_INSIDESPOTDEALS.TRANMODE is '交易模式(0-市价交易，1-询价交易)';
comment on column XF_FX_INSIDESPOTDEALS.TRADESTATUS is '交易状态(0-正常 1-撤消)';
comment on column XF_FX_INSIDESPOTDEALS.SPECIALSTATE is '特殊交易类别(0-普通交易)';
comment on column XF_FX_INSIDESPOTDEALS.INPUTMODE is '录入模式(0-分行录入,1-总行代录)';
comment on column XF_FX_INSIDESPOTDEALS.INNERTYPE is '交易类型（0-内部交易，1-机构交易）';
comment on column XF_FX_INSIDESPOTDEALS.SOURCEGROUP is '源投组id';
comment on column XF_FX_INSIDESPOTDEALS.TARGETGROUP is '目标投组id';
comment on column XF_FX_INSIDESPOTDEALS.CYCODE1 is '货币1代码';
comment on column XF_FX_INSIDESPOTDEALS.CYCODE2 is '货币2代码';
comment on column XF_FX_INSIDESPOTDEALS.CALCYCODE is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_INSIDESPOTDEALS.BUYORSELL is '买卖方向(B-我方买入 S-我方卖出)';
comment on column XF_FX_INSIDESPOTDEALS.AMOUNT1 is '货币一金额';
comment on column XF_FX_INSIDESPOTDEALS.AMOUNT2 is '货币二金额';
comment on column XF_FX_INSIDESPOTDEALS.SPOTRATE is '即期汇率';
comment on column XF_FX_INSIDESPOTDEALS.COSTRATE is '签约汇率';
comment on column XF_FX_INSIDESPOTDEALS.USDAMOUNT is '折美元金额';
comment on column XF_FX_INSIDESPOTDEALS.USDCYCODERATE is '折美元汇率';
comment on column XF_FX_INSIDESPOTDEALS.TRADETIME is '交易时间';
comment on column XF_FX_INSIDESPOTDEALS.TRADEDATE is '交易日';
comment on column XF_FX_INSIDESPOTDEALS.VALUEDATE is '即期起息日';
comment on column XF_FX_INSIDESPOTDEALS.CNYRATE is '折人民币汇率';
comment on column XF_FX_INSIDESPOTDEALS.CNYAMOUNT is '折人民币金额';
comment on column XF_FX_INSIDESPOTDEALS.BANKID is '交易机构编号';
comment on column XF_FX_INSIDESPOTDEALS.INPUTBANKID is '录入机构编号';
comment on column XF_FX_INSIDESPOTDEALS.MASTERBANKID is '总行机构编号';
comment on column XF_FX_INSIDESPOTDEALS.SUBTELLERID is '经办柜员ID';
comment on column XF_FX_INSIDESPOTDEALS.SUBTELLERNAME is '经办柜员名称';
comment on column XF_FX_INSIDESPOTDEALS.SUBCHECKID is '分行复核柜员ID';
comment on column XF_FX_INSIDESPOTDEALS.SUBCHECKRNAME is '分行复核柜员名称';
comment on column XF_FX_INSIDESPOTDEALS.MASTERTELLERID is '总行经办柜员ID';
comment on column XF_FX_INSIDESPOTDEALS.MASTERTELLERNAME is '总行经办柜员名称';
comment on column XF_FX_INSIDESPOTDEALS.MASTERCHECKID is '总行复核柜员ID';
comment on column XF_FX_INSIDESPOTDEALS.MASTERCHECKNAME is '总行复核柜员名称';
comment on column XF_FX_INSIDESPOTDEALS.ATTR1 is '备用字段1';
comment on column XF_FX_INSIDESPOTDEALS.ATTR2 is '备用字段2';
comment on column XF_FX_INSIDESPOTDEALS.ATTR3 is '备用字段3';
comment on column XF_FX_INSIDESPOTDEALS.ATTR4 is '备用字段4';
comment on column XF_FX_INSIDESPOTDEALS.ATTR5 is '备用字段5';
comment on column XF_FX_INSIDESPOTDEALS.CLIENTATTR1 is '客户化备用字段1';
comment on column XF_FX_INSIDESPOTDEALS.CLIENTATTR2 is '客户化备用字段2';
comment on column XF_FX_INSIDESPOTDEALS.CLIENTATTR3 is '客户化备用字段3';
comment on column XF_FX_INSIDESPOTDEALS.CLIENTATTR4 is '客户化备用字段4';
comment on column XF_FX_INSIDESPOTDEALS.CLIENTATTR5 is '客户化备用字段5';
comment on column XF_FX_INSIDESPOTDEALS.BOOKINGID is '实体';
comment on column XF_FX_INSIDESPOTDEALS.RISKFLAG is '免风险标识（0-是，1-否）默认0';
comment on column XF_FX_INSIDESPOTDEALS.GROUPFLAG is '投组标识（1-源投组，2-目标投组）';
comment on column XF_FX_INSIDESPOTDEALS.COMMENTS is '流程附言';

create table XF_FX_INSIDESWAPDEALS
(
    DOWNLOADKEY      NUMBER(16)    not null,
    BLOCKNUMBER      NUMBER(16)    not null,
    BUSINESSNO       VARCHAR2(50)  not null ,
    PRODUCTID        NUMBER(20)    not null ,
    TRADEPLAT        VARCHAR2(30)  not null ,
    APPID            NUMBER        not null ,
    TRANMODE         NUMBER        null ,
    TRADESTATUS      NUMBER(1)     null ,
    SPECIALSTATE     NUMBER        null ,
    INPUTMODE        NUMBER        null ,
    INNERTYPE        NUMBER        null ,
    SOURCEGROUP      VARCHAR2(50)  null ,
    TARGETGROUP      VARCHAR2(50)  null ,
    CYCODE1          VARCHAR2(10)  null ,
    CYCODE2          VARCHAR2(10)  null ,
    CALCYCODE        NUMBER        not null ,
    BUYORSELL        VARCHAR2(3)   not null ,
    COSTNEARAMT1	 NUMBER(18, 2) not null ,
    COSTNEARAMT2	 NUMBER(18, 2) not null ,
    COSTFARAMT1		 NUMBER(18, 2) not null ,
    COSTFARAMT2		 NUMBER(18, 2) not null ,
    NEARCOSTRATE     NUMBER(15, 8) null ,
    NEARCOSTPOINTS   NUMBER(12, 2) null ,
    FARCOSTPOINTS    NUMBER(12, 2) null ,
	COSTSWAPPOINTS   NUMBER(12, 2) null ,
	NEARTERMID       VARCHAR2(10)  null ,
	NEARDAYS 		 INTEGER,
	FARTERMID		 VARCHAR2(10)  null ,
	FARDAYS			 INTEGER,
	MATURITYDATE        NUMBER(8)     null ,
    SPOTRATE         NUMBER(15, 8) null ,
    COSTRATE         NUMBER(15, 8) not null ,
    USDAMOUNT        NUMBER(18, 2) null ,
    USDCYCODERATE    NUMBER(15, 8) null ,
    TRADETIME        NUMBER(6)     null ,
    TRADEDATE        NUMBER(8)     null ,
    VALUEDATE        NUMBER(8)     null ,
    CNYRATE          NUMBER(15, 8) null ,
    CNYAMOUNT        NUMBER(18, 2) null ,
    BANKID           VARCHAR2(16)  null ,
    INPUTBANKID      VARCHAR2(16)  null ,
    MASTERBANKID     VARCHAR2(16)  null ,
    SUBTELLERID      VARCHAR2(60)  null ,
    SUBTELLERNAME    VARCHAR2(60)  null ,
    SUBCHECKID       VARCHAR2(60)  null ,
    SUBCHECKRNAME    VARCHAR2(60)  null ,
    MASTERTELLERID   VARCHAR2(60)  null ,
    MASTERTELLERNAME VARCHAR2(60)  null ,
    MASTERCHECKID    VARCHAR2(60)  null ,
    MASTERCHECKNAME  VARCHAR2(60)  null ,
    ATTR1            VARCHAR2(50)  null ,
    ATTR2            VARCHAR2(50)  null ,
    ATTR3            VARCHAR2(50)  null ,
    ATTR4            VARCHAR2(50)  null ,
    ATTR5            VARCHAR2(50)  null ,
    CLIENTATTR1      VARCHAR2(50)  null ,
    CLIENTATTR2      VARCHAR2(50)  null ,
    CLIENTATTR3      VARCHAR2(50)  null ,
    CLIENTATTR4      VARCHAR2(50)  null ,
    CLIENTATTR5      VARCHAR2(50)  null ,
    BOOKINGID        VARCHAR2(15)  not null ,
    RISKFLAG         VARCHAR2(15)  not null ,
    GROUPFLAG        VARCHAR2(15)  not null ,
    COMMENTS         VARCHAR2(200) null
);
comment on table XF_FX_INSIDESWAPDEALS is '掉期内部交易表';

comment on column XF_FX_INSIDESWAPDEALS.DOWNLOADKEY is '交易流水号';
comment on column XF_FX_INSIDESWAPDEALS.BLOCKNUMBER is '交易套号';
comment on column XF_FX_INSIDESWAPDEALS.BUSINESSNO is '业务编号';
comment on column XF_FX_INSIDESWAPDEALS.PRODUCTID is '产品ID';
comment on column XF_FX_INSIDESWAPDEALS.TRADEPLAT is '工作台';
comment on column XF_FX_INSIDESWAPDEALS.APPID is '交易产品类型(41-外汇，42-结售汇)';
comment on column XF_FX_INSIDESWAPDEALS.TRANMODE is '交易模式(0-市价交易，1-询价交易)';
comment on column XF_FX_INSIDESWAPDEALS.TRADESTATUS is '交易状态(0-正常 1-撤消)';
comment on column XF_FX_INSIDESWAPDEALS.SPECIALSTATE is '特殊交易类别(0-普通交易)';
comment on column XF_FX_INSIDESWAPDEALS.INPUTMODE is '录入模式(0-分行录入,1-总行代录)';
comment on column XF_FX_INSIDESWAPDEALS.INNERTYPE is '交易类型（0-内部交易，1-机构交易）';
comment on column XF_FX_INSIDESWAPDEALS.SOURCEGROUP is '源投组id';
comment on column XF_FX_INSIDESWAPDEALS.TARGETGROUP is '目标投组id';
comment on column XF_FX_INSIDESWAPDEALS.CYCODE1 is '货币1代码';
comment on column XF_FX_INSIDESWAPDEALS.CYCODE2 is '货币2代码';
comment on column XF_FX_INSIDESWAPDEALS.CALCYCODE is '交易发生货币(0-选择代码1，1-选择代码2)';
comment on column XF_FX_INSIDESWAPDEALS.BUYORSELL is '买卖方向(B-我方买入 S-我方卖出)';

comment on column XF_FX_INSIDESWAPDEALS.COSTNEARAMT1 is '近端货币1金额';
comment on column XF_FX_INSIDESWAPDEALS.COSTNEARAMT2 is '近端货币2金额';
comment on column XF_FX_INSIDESWAPDEALS.COSTFARAMT1 is '远端货币1金额';
comment on column XF_FX_INSIDESWAPDEALS.COSTFARAMT2 is '远端货币2金额';
comment on column XF_FX_INSIDESWAPDEALS.NEARCOSTRATE is '近端成交汇率';
comment on column XF_FX_INSIDESWAPDEALS.NEARCOSTPOINTS is '近端升贴水';
comment on column XF_FX_INSIDESWAPDEALS.COSTRATE is '远端成交签约';
comment on column XF_FX_INSIDESWAPDEALS.FARCOSTPOINTS is '远端升贴水';
comment on column XF_FX_INSIDESWAPDEALS.COSTSWAPPOINTS is '掉期点';
comment on column XF_FX_INSIDESWAPDEALS.NEARTERMID is '近端期限';
comment on column XF_FX_INSIDESWAPDEALS.NEARDAYS is '近端期限天数';
comment on column XF_FX_INSIDESWAPDEALS.FARTERMID is '远端期限';
comment on column XF_FX_INSIDESWAPDEALS.FARTERMID is '远端期限天数';
comment on column XF_FX_INSIDESWAPDEALS.MATURITYDATE is '远端交割日';

comment on column XF_FX_INSIDESWAPDEALS.SPOTRATE is '即期汇率';
comment on column XF_FX_INSIDESWAPDEALS.USDAMOUNT is '折美元金额';
comment on column XF_FX_INSIDESWAPDEALS.USDCYCODERATE is '折美元汇率';
comment on column XF_FX_INSIDESWAPDEALS.TRADETIME is '交易时间';
comment on column XF_FX_INSIDESWAPDEALS.TRADEDATE is '交易日';
comment on column XF_FX_INSIDESWAPDEALS.VALUEDATE is '即期起息日';
comment on column XF_FX_INSIDESWAPDEALS.CNYRATE is '折人民币汇率';
comment on column XF_FX_INSIDESWAPDEALS.CNYAMOUNT is '折人民币金额';
comment on column XF_FX_INSIDESWAPDEALS.BANKID is '交易机构编号';
comment on column XF_FX_INSIDESWAPDEALS.INPUTBANKID is '录入机构编号';
comment on column XF_FX_INSIDESWAPDEALS.MASTERBANKID is '总行机构编号';
comment on column XF_FX_INSIDESWAPDEALS.SUBTELLERID is '经办柜员ID';
comment on column XF_FX_INSIDESWAPDEALS.SUBTELLERNAME is '经办柜员名称';
comment on column XF_FX_INSIDESWAPDEALS.SUBCHECKID is '分行复核柜员ID';
comment on column XF_FX_INSIDESWAPDEALS.SUBCHECKRNAME is '分行复核柜员名称';
comment on column XF_FX_INSIDESWAPDEALS.MASTERTELLERID is '总行经办柜员ID';
comment on column XF_FX_INSIDESWAPDEALS.MASTERTELLERNAME is '总行经办柜员名称';
comment on column XF_FX_INSIDESWAPDEALS.MASTERCHECKID is '总行复核柜员ID';
comment on column XF_FX_INSIDESWAPDEALS.MASTERCHECKNAME is '总行复核柜员名称';
comment on column XF_FX_INSIDESWAPDEALS.ATTR1 is '备用字段1';
comment on column XF_FX_INSIDESWAPDEALS.ATTR2 is '备用字段2';
comment on column XF_FX_INSIDESWAPDEALS.ATTR3 is '备用字段3';
comment on column XF_FX_INSIDESWAPDEALS.ATTR4 is '备用字段4';
comment on column XF_FX_INSIDESWAPDEALS.ATTR5 is '备用字段5';
comment on column XF_FX_INSIDESWAPDEALS.CLIENTATTR1 is '客户化备用字段1';
comment on column XF_FX_INSIDESWAPDEALS.CLIENTATTR2 is '客户化备用字段2';
comment on column XF_FX_INSIDESWAPDEALS.CLIENTATTR3 is '客户化备用字段3';
comment on column XF_FX_INSIDESWAPDEALS.CLIENTATTR4 is '客户化备用字段4';
comment on column XF_FX_INSIDESWAPDEALS.CLIENTATTR5 is '客户化备用字段5';
comment on column XF_FX_INSIDESWAPDEALS.BOOKINGID is '实体';
comment on column XF_FX_INSIDESWAPDEALS.RISKFLAG is '免风险标识（0-是，1-否）默认0';
comment on column XF_FX_INSIDESWAPDEALS.GROUPFLAG is '投组标识（1-源投组，2-目标投组）';
comment on column XF_FX_INSIDESWAPDEALS.COMMENTS is '流程附言';