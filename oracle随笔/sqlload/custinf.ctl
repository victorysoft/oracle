options (skip=1,rows=128)
load data
infile 'E:\sqlload\客户资料表.txt'
append into table custinf
fields terminated by '|'
trailing nullcols
(
  fund_no           char(20),
  cust_name         char(80),
  orgidt            char(18),
  card_no           char(20),
  card_type         char(12),
  passno            char(40),
  mobile            char(40),
  email             char(30),
  asset_date        char(12) "to_date(:asset_date, 'YYMMDD')",
  asset_bal         char(20),
  isdeposit         char(8),
  other_bal         char(20),
  cre_bal           char(20),
  cny_bal           char(20),
  fund_bal          char(20),
  fina_bal          char(20),
  paper_gold        char(20),
  xyu_bal           char(20),
  insure_bal        char(20),
  cusidt            char(12),
  cusidt_lvl        char(10),
  Investor_type     char(12)
)