
create unique index FOREX_DELIVERY_IDX1 on XF_FX_DELIVERY (DELIVERYID);
create index FOREX_DELIVERY_IDX2 on XF_FX_DELIVERY (DELIVERYIDINT);
create index FOREX_DELIVERY_IDX3 on XF_FX_DELIVERY (CAPTUREDATE);
create index FOREX_DELIVERY_IDX4 on XF_FX_DELIVERY (BUSINESSNO, DELIVERYID);
create index FOREX_DELIVERY_IDX5 on XF_FX_DELIVERY (CUSTOMERID);
create index XF_FX_delivery_date_other on XF_FX_DELIVERY(deliveryDate,DELIVERYID,INPUTCHANNEL,accStatus,specialState,tradeType,accType,appid,bankid,tradeplat);
create index XF_FX_DELIVERY_date on XF_FX_DELIVERY(deliveryDate);

create index FWDDEALS_CAPTUREDATE on XF_FX_FWDDEALS (CAPTUREDATE, BOOKINGID);
create unique index FWDDEALS_IND1 on XF_FX_FWDDEALS (DOWNLOADKEY);
create index FWDDEALS_IND2 on XF_FX_FWDDEALS (BUSINESSNO, BOOKINGID);
create index FWDDEALS_IND3 on XF_FX_FWDDEALS (BLOCKNUMBER, BOOKINGID);
create index FWDDEALS_SOURCENO on XF_FX_FWDDEALS (SOURCENO, BOOKINGID);
create index FWDDEALS_TRANDATE on XF_FX_FWDDEALS (TRADEDATE desc, TRADETIME desc, BOOKINGID);

create unique index FOREX_FWDTRADE_IDX1 on XF_FX_FWDTRADE (DOWNLOADKEY);
create unique index FOREX_FWDTRADE_IDX2 on XF_FX_FWDTRADE (BLOCKNUMBER);
create index FOREX_FWDTRADE_IDX3 on XF_FX_FWDTRADE (TRADEDATE desc,TRADETIME desc);
create index FOREX_FWDTRADE_IDX5 on XF_FX_FWDTRADE (MATURITYDATE);
create index FOREX_FWDTRADE_IDX6 on XF_FX_FWDTRADE (VALUEDATE);
create index FOREX_FWDTRADE_IDX7 on XF_FX_FWDTRADE (BUSINESSNO);
create index XF_FX_FWDTRADE_OptDate on XF_FX_FWDTRADE (MATURITYDATE,OPTIONDATE);

alter table XF_FX_ORDERLOG
  add constraint FOREX_ORDER_PK primary key (BUSINESSNO, BOOKINGID);
create unique index FOREX_ORDER_DOWNLOADKEY on XF_FX_ORDERLOG (DOWNLOADKEY);
create index FOREX_ORDER_DTBANK on XF_FX_ORDERLOG (TRADEDATE, BANKID, BOOKINGID);
create index FOREX_ORDER_ORDERFLAG on XF_FX_ORDERLOG (ORDERFLAG, BOOKINGID);

create unique index ORDERSUB_IND on XF_FX_ORDERSUB (BUSINESSNO);

create index PROFITDEALS_IDX on XF_FX_PROFIT (DOWNLOADKEY, PROFITSTATE, PROFITTYPE);
create index PROFIT_CUSTOMERID on XF_FX_PROFIT (CUSTOMERID);
create index PROFIT_DELIVEYID on XF_FX_PROFIT (DELIVERYID);

create index SPOTDEALS_BANKID on XF_FX_SPOTDEALS (BANKID);
create unique index SPOTDEALS_BLOCKNUM on XF_FX_SPOTDEALS (BLOCKNUMBER);
create index SPOTDEALS_BUSSSNO on XF_FX_SPOTDEALS (BUSINESSNO);
create index SPOTDEALS_CAPTUREDATE on XF_FX_SPOTDEALS (CAPTUREDATE);
create unique index SPOTDEALS_IND on XF_FX_SPOTDEALS (DOWNLOADKEY);
create index SPOTDEALS_TRANDATE on XF_FX_SPOTDEALS (TRADEDATE desc ,TRADETIME desc);

create index SPOTTRADE_BANKID on XF_FX_SPOTTRADE (BANKID);
create index SPOTTRADE_BLOCKNUMBER on XF_FX_SPOTTRADE (BLOCKNUMBER);
create index SPOTTRADE_BUSSNO on XF_FX_SPOTTRADE (BUSINESSNO);
create index SPOTTRADE_CUSTOMERID on XF_FX_SPOTTRADE (CUSTOMERID);
create unique index SPOTTRADE_NORMAL_DOWNLOADKEY on XF_FX_SPOTTRADE (DOWNLOADKEY);
create index SPOTTRADE_TRADEDATE on XF_FX_SPOTTRADE (TRADEDATE desc , TRADETIME desc);
create index SPOTTRADE_VALUEDATE on XF_FX_SPOTTRADE (VALUEDATE);

create index FWDSWAPS_CAPTUREDATE on XF_FX_SWAPDEALS (CAPTUREDATE);
create unique index FX_SWAPDEALS_INDEX1 on XF_FX_SWAPDEALS (DOWNLOADKEY);
create index SWAPDEALS_IND2 on XF_FX_SWAPDEALS (BUSINESSNO);
create unique index SWAPDEALS_IND3 on XF_FX_SWAPDEALS (BLOCKNUMBER);
create index SWAPDEALS_TRANDATE on XF_FX_SWAPDEALS (TRADEDATE desc , TRADETIME desc);

create index SWAPTRADE_BLOCKNUMBER on XF_FX_SWAPTRADE (BLOCKNUMBER);
create index SWAPTRADE_BUSSNO on XF_FX_SWAPTRADE (BUSINESSNO);
create index SWAPTRADE_CAPTUREDATE on XF_FX_SWAPTRADE (CAPTUREDATE);
create index SWAPTRADE_CUSTOMERID on XF_FX_SWAPTRADE (CUSTOMERID);
create index SWAPTRADE_MATURITYDATE on XF_FX_SWAPTRADE (MATURITYDATE);
create index SWAPTRADE_TRADEDATE on XF_FX_SWAPTRADE (TRADEDATE desc , TRADETIME desc);
create index SWAPTRADE_VALUEDATE on XF_FX_SWAPTRADE (VALUEDATE);
create unique index XF_FX_SWAPTRADE_INDEX1 on XF_FX_SWAPTRADE (DOWNLOADKEY);

create index TOTALDELIVERY_BUSINESSNO on XF_FX_TOTALDELIVERY (BUSINESSNO);
create index XFUNDS_TOTALDELIVERY_BLOCK on XF_FX_TOTALDELIVERY (BLOCKNUMBER);
create index XFUNDS_TOTALDELIVERY_GLSTATUS on XF_FX_TOTALDELIVERY (GLSTATUS);
create unique index XFUNDS_TOTALDELIVERY_INDEX1 on XF_FX_TOTALDELIVERY (DOWNLOADKEY);
create index XFUNDS_TOTALDELIVERY_RBAT on XF_FX_TOTALDELIVERY (ROLLBACKDATE);

create unique index TRADESUB_IND on XF_FX_TRADESUB (DOWNLOADKEY);

create unique index FOREX_DAILYPROFIT_IDX1 on XF_FX_DAILYPROFIT (DELIVERYID);
create index FOREX_DAILYPROFIT_IDX2 on XF_FX_DAILYPROFIT (BLOCKNUMBER);
create index FOREX_DAILYPROFIT_IDX3 on XF_FX_DAILYPROFIT (DELIVERYDATE);
create index FOREX_DAILYPROFIT_IDX4 on XF_FX_DAILYPROFIT (BUSINESSNO, DELIVERYID);

create unique index INSIDEFWDDEALS_INDEX4
    on XF_FX_INSIDEFWDDEALS (DOWNLOADKEY);

create index INSIDEFWDDEALS_INDEX1
    on XF_FX_INSIDEFWDDEALS (TRADEDATE);

create index INSIDEFWDDEALS_INDEX2
    on XF_FX_INSIDEFWDDEALS (MATURITYDATE);

create index INSIDEFWDDEALS_INDEX3
    on XF_FX_INSIDEFWDDEALS (BUSINESSNO);

create unique index INSIDESPOTDEALS_INDEX4
    on XF_FX_INSIDESPOTDEALS (DOWNLOADKEY);

create index INSIDESPOTDEALS_INDEX1
    on XF_FX_INSIDESPOTDEALS (TRADEDATE);

create index INSIDESPOTDEALS_INDEX2
    on XF_FX_INSIDESPOTDEALS (VALUEDATE);

create index INSIDESPOTDEALS_INDEX3
    on XF_FX_INSIDESPOTDEALS (BUSINESSNO);

create unique index XF_FX_INSIDESWAPDEALS_INDEX4
    on XF_FX_INSIDESWAPDEALS (DOWNLOADKEY);

create index XF_FX_INSIDESWAPDEALS_INDEX1
    on XF_FX_INSIDESWAPDEALS (TRADEDATE);

create index XF_FX_INSIDESWAPDEALS_INDEX2
    on XF_FX_INSIDESWAPDEALS (BLOCKNUMBER);

create index XF_FX_INSIDESWAPDEALS_INDEX3
    on XF_FX_INSIDESWAPDEALS (BUSINESSNO);