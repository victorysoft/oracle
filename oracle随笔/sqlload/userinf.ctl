options(skip=1,rows=128)
load data                            
infile 'E:\sqlload\用户资料表.txt'
append into table custinf                         
fields terminated by '|'                                                
trailing nullcols                                 
( card_num char(7),
  password char(14),
  name char(10) "upper(:name)",                            
  orgidt char(10),
  role   char(60),
  mobile char(14),
  phone  char(14),
  email  char(30)
 )