//copy 1st word
00, ,<,cp
cp,1,<,cp  cp,0,<,cp  cp, ,<,cp1
cp1,1,<,cp1  cp1,0,<,cp1  cp1, ,>,mv
//cp 1
mv,1, ,mv1_
mv1_, ,>,mv1
mv1,1,>,mv1  mv1,0,>,mv1  mv1, ,>,mv11
mv11,1,>,mv11  mv11,0,>,mv11  mv11, ,>,mv12
mv12,1,>,mv12  mv12,0,>,mv12  mv12, ,1,mv1res
mv1res,1,<,mv1res  mv1res,0,<,mv1res  mv1res, ,<,mv1res1
mv1res1,1,<,mv1res1  mv1res1,0,<,mv1res1  mv1res1, ,<,mv1res2
mv1res2,1,<,mv1res2  mv1res2,0,<,mv1res2  mv1res2, ,1,mv1res3
mv1res3,1,>,mv
//cp0
mv,0, ,mv0_
mv0_, ,>,mv0
mv0,1,>,mv0  mv0,0,>,mv0  mv0, ,>,mv01
mv01,1,>,mv01  mv01,0,>,mv01  mv01, ,>,mv02
mv02,1,>,mv02  mv02,0,>,mv02  mv02, ,0,mv0res
mv0res,1,<,mv0res  mv0res,0,<,mv0res  mv0res, ,<,mv0res1
mv0res1,1,<,mv0res1  mv0res1,0,<,mv0res1  mv0res1, ,<,mv0res2
mv0res2,1,<,mv0res2  mv0res2,0,<,mv0res2  mv0res2, ,0,mv0res3
mv0res3,0,>,mv
//exit from cp
mv, ,>,start
//start fun
//p1
start,1, ,p1  // get P
p1, ,>,p1_1
p1_1,1,>,p1_1  p1_1,0,>,p1_1  p1_1, ,>,p1_2
p1_2,1,0,p1n1  p1_2,0,0,p1n0  //set first 0 ; get N
// copy n1
p1n1,0,>,p1n1_
p1n1_,1, ,p1n1z1p  p1n1_,0, ,p1n1z0p
p1n1z1p, ,>,p1n1z1  p1n1z0p, ,>,p1n1z0
p1n1z1pass,1,>,p1n1z1  p1n1z1pass,0,>,p1n1z1  p1n1z0pass,1,>,p1n1z0  p1n1z0pass,0,>,p1n1z0
p1n1z1,1,1,p1n1z1pass  p1n1z1,0,1,p1n1z0pass  p1n1z0,1,0,p1n1z1pass  p1n1z0,0,0,p1n1z0pass
p1n1z1, ,<,p1n1ret  p1n1z0, ,<,p1n1ret
// copy n0
p1n0,0,>,p1n0_
p1n0_,1, ,p1n0z1p p1n0_,0, ,p1n0z0p
p1n0z1p, ,>,p1n0z1 p1n0z0p, ,>,p1n0z0
p1n0z1pass,1,>,p1n0z1  p1n0z1pass,0,>,p1n0z1  p1n0z0pass,1,>,p1n0z0  p1n0z0pass,0,>,p1n0z0
p1n0z1,1,1,p1n0z1pass  p1n0z1,0,1,p1n0z0pass p1n0z0,1,0,p1n0z1pass  p1n0z0,0,0,p1n0z0pass
p1n0z1, ,<,p1n0ret  p1n0z0, ,<,p1n0ret
//p0
start,0, ,p0  // get P
p0, ,>,p0_1
p0_1,1,>,p0_1  p0_1,0,>,p0_1  p0_1, ,>,p0_2
p0_2,1,0,p0n1  p0_2,0,0,p0n0  //set first 0 ; get N
// copy n1
p0n1,0,>,p0n1_
p0n1_,1, ,p0n1z1p  p0n1_,0, ,p0n1z0p
p0n1z1p, ,>,p0n1z1  p0n1z0p, ,>,p0n1z0
p0n1z1pass,1,>,p0n1z1  p0n1z1pass,0,>,p0n1z1  p0n1z0pass,1,>,p0n1z0  p0n1z0pass,0,>,p0n1z0
p0n1z1,1,1,p0n1z1pass  p0n1z1,0,1,p0n1z0pass  p0n1z0,1,0,p0n1z1pass  p0n1z0,0,0,p0n1z0pass
p0n1z1, ,<,p0n1ret  p0n1z0, ,<,p0n1ret
// copy n0
p0n0,0,>,p0n0_
p0n0_,1, ,p0n0z1p  p0n0_,0, ,p0n0z0p
p0n0z1p, ,>,p0n0z1  p0n0z0p, ,>,p0n0z0
p0n0z1pass,1,>,p0n0z1  p0n0z1pass,0,>,p0n0z1  p0n0z0pass,1,>,p0n0z0  p0n0z0pass,0,>,p0n0z0
p0n0z1,1,1,p0n0z1pass  p0n0z1,0,1,p0n0z0pass  p0n0z0,1,0,p0n0z1pass  p0n0z0,0,0,p0n0z0pass
p0n0z1, ,<,p0n0ret  p0n0z0, ,<,p0n0ret
// p_n_ret funk
p1n1ret,1,<,p1n1ret  p1n1ret,0,<,p1n1ret  p1n1ret, ,<,p1n1ret1
p1n1ret1,1,<,p1n1ret1  p1n1ret1,0,<,p1n1ret1  p1n1ret1, ,<,p1n1ret2
p1n1ret2,1,<,p1n1ret2  p1n1ret2,0,<,p1n1ret2  p1n1ret2, , ,p1n1ret3
p1n1ret3,1,<,p1n1ret3  p1n1ret3,0,<,p1n1ret3  p1n1ret3, ,1,p1n1ret4  //print p
p1n1ret4,1,>,p1n1ret5  p1n1ret4,0,>,p1n1ret5  
p1n1ret5,1, ,p1n1st  // get new p
p1n1ret5,0, ,p0n1st
p1n0ret,1,<,p1n0ret  p1n0ret,0,<,p1n0ret  p1n0ret, ,<,p1n0ret1
p1n0ret1,1,<,p1n0ret1  p1n0ret1,0,<,p1n0ret1  p1n0ret1, ,<,p1n0ret2
p1n0ret2,1,<,p1n0ret2  p1n0ret2,0,<,p1n0ret2  p1n0ret2, , ,p1n0ret3
p1n0ret3,1,<,p1n0ret3  p1n0ret3,0,<,p1n0ret3  p1n0ret3, ,1,p1n0ret4  //print p
p1n0ret4,1,>,p1n0ret5  p1n0ret4,0,>,p1n0ret5  
p1n0ret5,1, ,p1n0st  // get new p
p1n0ret5,0, ,p0n0st
p0n1ret,1,<,p0n1ret  p0n1ret,0,<,p0n1ret  p0n1ret, ,<,p0n1ret1
p0n1ret1,1,<,p0n1ret1  p0n1ret1,0,<,p0n1ret1  p0n1ret1, ,<,p0n1ret2
p0n1ret2,1,<,p0n1ret2  p0n1ret2,0,<,p0n1ret2  p0n1ret2, , ,p0n1ret3
p0n1ret3,1,<,p0n1ret3  p0n1ret3,0,<,p0n1ret3  p0n1ret3, ,0,p0n1ret4  //print p
p0n1ret4,1,>,p0n1ret5  p0n1ret4,0,>,p0n1ret5  
p0n1ret5,1, ,p1n1st  // get new p
p0n1ret5,0, ,p0n1st
p0n0ret,1,<,p0n0ret  p0n0ret,0,<,p0n0ret  p0n0ret, ,<,p0n0ret1
p0n0ret1,1,<,p0n0ret1  p0n0ret1,0,<,p0n0ret1  p0n0ret1, ,<,p0n0ret2
p0n0ret2,1,<,p0n0ret2  p0n0ret2,0,<,p0n0ret2  p0n0ret2, , ,p0n0ret3
p0n0ret3,1,<,p0n0ret3  p0n0ret3,0,<,p0n0ret3  p0n0ret3, ,0,p0n0ret4  //print p
p0n0ret4,1,>,p0n0ret5  p0n0ret4,0,>,p0n0ret5  
p0n0ret5,1, ,p1n0st  // get new p
p0n0ret5,0, ,p0n0st
// go to 2nd word to place n and get new n
p1n1st, ,>,p1n1st_1
p1n1st_1,1,>,p1n1st_1  p1n1st_1,0,>,p1n1st_1  p1n1st_1, ,>,p1n1st_2
p1n1st_2,1,>,p1n1st_2  p1n1st_2,0,>,p1n1st_2  p1n1st_2, ,0,p1n1
p1n0st, ,>,p1n0st_1
p1n0st_1,1,>,p1n0st_1  p1n0st_1,0,>,p1n0st_1  p1n0st_1, ,>,p1n0st_2
p1n0st_2,1,>,p1n0st_2  p1n0st_2,0,>,p1n0st_2  p1n0st_2, ,0,p1n0
p0n1st, ,>,p0n1st_1
p0n1st_1,1,>,p0n1st_1  p0n1st_1,0,>,p0n1st_1  p0n1st_1, ,>,p0n1st_2
p0n1st_2,1,>,p0n1st_2  p0n1st_2,0,>,p0n1st_2  p0n1st_2, ,0,p0n1
p0n0st, ,>,p0n0st_1
p0n0st_1,1,>,p0n0st_1  p0n0st_1,0,>,p0n0st_1  p0n0st_1, ,>,p0n0st_2
p0n0st_2,1,>,p0n0st_2  p0n0st_2,0,>,p0n0st_2  p0n0st_2, ,0,p0n0
// p_n__ réalisation
p1n1_, ,<,p1n1_put
p1n1_put,1,<,p1n1_put  p1n1_put,0,<,p1n1_put  p1n1_put, ,<,p1n1_put_1
p1n1_put_1,1,<,p1n1_put_1  p1n1_put_1,0,<,p1n1_put_1  p1n1_put_1, ,1,exit
p1n0_, ,<,p1n0_put
p1n0_put,1,<,p1n0_put  p1n0_put,0,<,p1n0_put  p1n0_put, ,<,p1n0_put_1
p1n0_put_1,1,<,p1n0_put_1  p1n0_put_1,0,<,p1n0_put_1  p1n0_put_1, ,1,exit
p0n1_, ,<,p0n1_put
p0n1_put,1,<,p0n1_put  p0n1_put,0,<,p0n1_put  p0n1_put, ,<,p0n1_put_1
p0n1_put_1,1,<,p0n1_put_1  p0n1_put_1,0,<,p0n1_put_1  p0n1_put_1, ,0,exit
p0n0_, ,<,p0n0_put
p0n0_put,1,<,p0n0_put  p0n0_put,0,<,p0n0_put  p0n0_put, ,<,p0n0_put_1
p0n0_put_1,1,<,p0n0_put_1  p0n0_put_1,0,<,p0n0_put_1  p0n0_put_1, ,0,exit
exit,1,>,exit  exit,0,>,exit  exit, ,>,exit_1
exit_1,1,>,exit_1  exit_1,0,>,exit_1  exit_1, , ,ch
p1n1ret5, ,>,exitn1
p1n0ret5, ,>,exitn0
p0n1ret5, ,>,exitn1
p0n0ret5, ,>,exitn0
exitn0,1,>,exitn0  exitn0,0,>,exitn0  exitn0, ,0,exitn0_1
exitn0_1,1,>,exitn0_1  exitn0_1,0,>,exitn0_1 exitn0_1, , ,ch
exitn1,1,>,exitn1  exitn1,0,>,exitn1  exitn1, ,1,exitn1_1
exitn1_1,1,>,exitn1_1 exitn1_1,0,>,exitn1_1  exitn1_1, , ,ch

ch, ,<,ch1
ch1,0,<,ch1  ch1,1,>,null ch1, ,>,dell

dell,0,>,dell  dell, ,<,dell_1
dell_1,0, ,dell_2  dell_2, ,<,dell_1
dell_1, ,>,put0
put0, ,0,put1
put1,0,>,put2  put2, , ,put2

null,1,>,null  null,0,>,null  null, , ,null