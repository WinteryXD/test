local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25)local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function()return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...)local v29=1;local v30;v27=v12(v11(v27,15 -10 ),v7("\96\227","\230\78\205\127\59\211\72\111"),function(v42)if (v9(v42,2)==79) then local v88=0;while true do if (v88==0) then v30=v8(v11(v42,1,1));return "";end end else local v89=0;local v90;while true do if (v89==0) then v90=v10(v8(v42,16));if v30 then local v121=v13(v90,v30);v30=nil;return v121;else return v90;end break;end end end end);local function v31(v43,v44,v45)if v45 then local v91=(v43/(2^(v44-(2 -1))))%(2^(((v45-(1 -0)) -(v44-1)) + 1)) ;return v91-(v91%1) ;else local v92=0;local v93;while true do if (v92==0) then v93=(4 -2)^(v44-(620 -(555 + 64))) ;return (((v43%(v93 + v93))>=v93) and 1) or 0 ;end end end end local function v32()local v46=0;local v47;while true do if (v46==1) then return v47;end if (0==v46) then v47=v9(v27,v29,v29);v29=v29 + (932 -(857 + 74)) ;v46=1;end end end local function v33()local v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + (570 -(367 + 201)) ;return (v49 * 256) + v48 ;end local function v34()local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35()local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==0) then v55=v34();v56=v34();v54=1;end if (v54==1) then v57=1;v58=(v31(v56,1,20) * (2^32)) + v55 ;v54=2;end if (v54==2) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (v54==3) then if (v59==0) then if (v58==0) then return v60 * 0 ;else local v122=0;while true do if (0==v122) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==(927 -(214 + 713))) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end end end local function v36(v61)local v62=0;local v63;local v64;while true do if (v62==3) then return v14(v64);end if (0==v62) then v63=nil;if  not v61 then local v114=0;while true do if (v114==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=1;end if (v62==2) then v64={};for v97=1, #v63 do v64[v97]=v10(v9(v11(v63,v97,v97)));end v62=3;end if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end end end local v37=v34;local function v38(...)return {...},v20("#",...);end local function v39()local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v79=1,v69 do local v80=0;local v81;local v82;while true do if (0==v80) then v81=v32();v82=nil;v80=1;end if (v80==1) then if (v81==1) then v82=v32()~=0 ;elseif (v81==2) then v82=v35();elseif (v81==(880 -(282 + 595))) then v82=v36();end v70[v79]=v82;break;end end end v68[3]=v32();for v83=1,v34() do local v84=0;local v85;while true do if (v84==0) then v85=v32();if (v31(v85,1,1)==0) then local v117=0;local v118;local v119;local v120;while true do if (2==v117) then if (v31(v119,1,1)==1) then v120[1067 -(68 + 997) ]=v70[v120[2]];end if (v31(v119,2,2)==1) then v120[3]=v70[v120[1273 -(226 + 1044) ]];end v117=3;end if (v117==3) then if (v31(v119,3,3)==1) then v120[4]=v70[v120[4]];end v65[v83]=v120;break;end if (0==v117) then v118=v31(v85,2,3);v119=v31(v85,1641 -(1523 + 114) ,6);v117=1;end if (v117==1) then v120={v33(),v33(),nil,nil};if (v118==(0 -0)) then local v136=0;while true do if (v136==0) then v120[3]=v33();v120[4]=v33();break;end end elseif (v118==1) then v120[3]=v34();elseif (v118==2) then v120[3]=v34() -(2^16) ;elseif (v118==3) then v120[3]=v34() -(2^16) ;v120[4]=v33();end v117=2;end end end break;end end end for v86=1,v34() do v66[v86-1 ]=v39();end return v68;end local function v40(v72,v73,v74)local v75=0;local v76;local v77;local v78;while true do if (v75==0) then v76=v72[1];v77=v72[2];v75=1;end if (v75==1) then v78=v72[3];return function(...)local v100=v76;local v101=v77;local v102=v78;local v103=v38;local v104=1;local v105= -1;local v106={};local v107={...};local v108=v20("#",...) -1 ;local v109={};local v110={};for v115=0,v108 do if (v115>=v102) then v106[v115-v102 ]=v107[v115 + 1 ];else v110[v115]=v107[v115 + 1 ];end end local v111=(v108-v102) + 1 ;local v112;local v113;while true do local v116=0;while true do if (v116==0) then v112=v100[v104];v113=v112[1];v116=1;end if (v116==1) then if (v113<=46) then if (v113<=22) then if (v113<=10) then if (v113<=4) then if (v113<=1) then if (v113>0) then local v143=v112[2];local v144={};for v197=1, #v109 do local v198=v109[v197];for v202=0 -0 , #v198 do local v203=0;local v204;local v205;local v206;while true do if (v203==1) then v206=v204[2];if ((v205==v110) and (v206>=v143)) then local v403=0;while true do if (v403==0) then v144[v206]=v205[v206];v204[118 -(32 + 85) ]=v144;break;end end end break;end if (v203==0) then v204=v198[v202];v205=v204[1];v203=1;end end end end else local v145=v112[2];v110[v145]=v110[v145]();end elseif (v113<=2) then local v147=v112[2];v110[v147](v21(v110,v147 + 1 ,v112[3]));elseif (v113==(3 + 0)) then local v207=v112[1 + 1 ];local v208,v209=v103(v110[v207](v21(v110,v207 + 1 ,v112[3])));v105=(v209 + v207) -1 ;local v210=957 -(892 + 65) ;for v313=v207,v105 do v210=v210 + 1 ;v110[v313]=v208[v210];end else local v211=v112[4 -2 ];local v212=v110[v211];for v316=v211 + 1 ,v105 do v15(v212,v110[v316]);end end elseif (v113<=7) then if (v113<=5) then local v148=0;local v149;while true do if (v148==0) then v149=v112[2];v110[v149](v21(v110,v149 + 1 ,v105));break;end end elseif (v113>6) then v110[v112[2]]={};else v110[v112[2]]=v110[v112[3]];end elseif (v113<=(14 -6)) then v110[v112[2]]=v112[3];elseif (v113==9) then v110[v112[2]][v112[3]]=v110[v112[4]];elseif (v110[v112[2]]==v112[4]) then v104=v104 + 1 ;else v104=v112[3];end elseif (v113<=16) then if (v113<=13) then if (v113<=11) then v110[v112[2]]=v74[v112[3]];elseif (v113==12) then do return;end else v110[v112[2]]=v110[v112[3]]%v112[4] ;end elseif (v113<=14) then v110[v112[2]]= not v110[v112[3]];elseif (v113==(27 -12)) then v110[v112[2]]=v110[v112[3]] * v110[v112[4]] ;else local v220=v101[v112[3]];local v221;local v222={};v221=v18({},{[v7("\118\18\71\137\231\67\200","\176\41\77\46\231\131\38")]=function(v318,v319)local v320=v222[v319];return v320[1][v320[2]];end,[v7("\107\137\191\191\67\191\191\190\81\174","\218\52\214\209")]=function(v321,v322,v323)local v324=v222[v322];v324[1][v324[2]]=v323;end});for v326=1,v112[354 -(87 + 263) ] do local v327=0;local v328;while true do if (v327==1) then if (v328[181 -(67 + 113) ]==6) then v222[v326-1 ]={v110,v328[3]};else v222[v326-1 ]={v73,v328[3]};end v109[ #v109 + 1 ]=v222;break;end if (v327==0) then v104=v104 + 1 ;v328=v100[v104];v327=1;end end end v110[v112[2]]=v40(v220,v221,v74);end elseif (v113<=19) then if (v113<=(13 + 4)) then local v155=0;local v156;local v157;local v158;while true do if (v155==0) then v156=v112[2];v157=v110[v156 + 2 ];v155=1;end if (v155==1) then v158=v110[v156] + v157 ;v110[v156]=v158;v155=2;end if (v155==2) then if (v157>(0 -0)) then if (v158<=v110[v156 + 1 ]) then local v404=0;while true do if (0==v404) then v104=v112[3];v110[v156 + 3 + 0 ]=v158;break;end end end elseif (v158>=v110[v156 + (3 -2) ]) then local v405=0;while true do if (v405==0) then v104=v112[3];v110[v156 + 3 ]=v158;break;end end end break;end end elseif (v113==18) then local v224=0;local v225;while true do if (v224==0) then v225=v112[2];v110[v225]=v110[v225](v21(v110,v225 + 1 ,v105));break;end end else local v226=v112[2];v110[v226](v21(v110,v226 + (953 -(802 + 150)) ,v105));end elseif (v113<=20) then v110[v112[5 -3 ]]=v110[v112[3]] * v110[v112[4]] ;elseif (v113>21) then v110[v112[2]]= not v110[v112[3]];else v110[v112[2]]= #v110[v112[3]];end elseif (v113<=(61 -27)) then if (v113<=28) then if (v113<=25) then if (v113<=23) then v110[v112[2]][v110[v112[3]]]=v110[v112[4]];elseif (v113>24) then do return;end else local v229=v112[2 + 0 ];do return v110[v229](v21(v110,v229 + 1 ,v112[3]));end end elseif (v113<=26) then v104=v112[3];elseif (v113>27) then local v230=0;local v231;local v232;local v233;local v234;while true do if (1==v230) then v105=(v233 + v231) -1 ;v234=0 -0 ;v230=2;end if (v230==2) then for v383=v231,v105 do v234=v234 + 1 ;v110[v383]=v232[v234];end break;end if (v230==0) then v231=v112[2];v232,v233=v103(v110[v231](v21(v110,v231 + 1 ,v112[1000 -(915 + 82) ])));v230=1;end end else v110[v112[2]]={};end elseif (v113<=31) then if (v113<=29) then local v163=0;local v164;while true do if (v163==0) then v164=v112[2];do return v21(v110,v164,v105);end break;end end elseif (v113>30) then v104=v112[3];elseif  not v110[v112[2]] then v104=v104 + 1 ;else v104=v112[2 + 1 ];end elseif (v113<=32) then if  not v110[v112[2]] then v104=v104 + 1 ;else v104=v112[3];end elseif (v113==33) then for v333=v112[2],v112[3] do v110[v333]=nil;end else v110[v112[2]][v112[3]]=v112[4];end elseif (v113<=40) then if (v113<=37) then if (v113<=35) then local v165=0;local v166;while true do if (v165==0) then v166=v112[2];v110[v166](v110[v166 + 1 ]);break;end end elseif (v113==36) then v110[v112[2]]=v40(v101[v112[3]],nil,v74);else v73[v112[3]]=v110[v112[2]];end elseif (v113<=38) then v110[v112[2]]=v110[v112[3]][v112[4]];elseif (v113==39) then v110[v112[2 -0 ]][v110[v112[3]]]=v110[v112[4]];elseif (v112[2]==v110[v112[4]]) then v104=v104 + 1 ;else v104=v112[3];end elseif (v113<=43) then if (v113<=(1228 -(1069 + 118))) then v110[v112[2]]=v110[v112[3]]%v110[v112[4]] ;elseif (v113>42) then v110[v112[2]]=v110[v112[3]] + v112[4] ;else local v246=v112[2];local v247=v110[v246];for v336=v246 + 1 ,v105 do v15(v247,v110[v336]);end end elseif (v113<=(99 -55)) then v110[v112[2]]=v74[v112[3]];elseif (v113>45) then v110[v112[2]]=v110[v112[3]][v112[4]];elseif (v112[2]==v110[v112[4]]) then v104=v104 + 1 ;else v104=v112[3];end elseif (v113<=69) then if (v113<=57) then if (v113<=51) then if (v113<=(104 -56)) then if (v113>47) then if (v110[v112[2]]==v110[v112[4]]) then v104=v104 + 1 ;else v104=v112[3];end else v110[v112[2]]=v110[v112[3]]%v110[v112[4]] ;end elseif (v113<=49) then v110[v112[1 + 1 ]]=v112[3] + v110[v112[4]] ;elseif (v113==50) then if (v110[v112[2]]==v112[6 -2 ]) then v104=v104 + 1 ;else v104=v112[3];end else local v251=v112[2];local v252,v253=v103(v110[v251](v21(v110,v251 + 1 ,v105)));v105=(v253 + v251) -1 ;local v254=0;for v337=v251,v105 do local v338=0;while true do if (0==v338) then v254=v254 + 1 ;v110[v337]=v252[v254];break;end end end end elseif (v113<=54) then if (v113<=52) then local v174=0;local v175;while true do if (v174==0) then v175=v112[2];do return v110[v175](v21(v110,v175 + 1 ,v112[3 + 0 ]));end break;end end elseif (v113==53) then if v110[v112[2]] then v104=v104 + 1 ;else v104=v112[3];end else local v255=0;local v256;local v257;while true do if (1==v255) then v110[v256 + 1 ]=v257;v110[v256]=v257[v112[4]];break;end if (0==v255) then v256=v112[2];v257=v110[v112[3]];v255=1;end end end elseif (v113<=55) then v110[v112[2]]=v112[3] + v110[v112[4]] ;elseif (v113>56) then for v340=v112[793 -(368 + 423) ],v112[3] do v110[v340]=nil;end else local v258=v112[2];v110[v258]=v110[v258](v21(v110,v258 + 1 ,v105));end elseif (v113<=63) then if (v113<=60) then if (v113<=58) then v110[v112[2]][v110[v112[3]]]=v112[4];elseif (v113==59) then local v260=v112[6 -4 ];do return v21(v110,v260,v105);end else local v261=0;local v262;local v263;local v264;local v265;while true do if (v261==2) then for v388=v262,v105 do local v389=0;while true do if (v389==0) then v265=v265 + 1 ;v110[v388]=v263[v265];break;end end end break;end if (v261==1) then v105=(v264 + v262) -1 ;v265=0;v261=2;end if (v261==0) then v262=v112[20 -(10 + 8) ];v263,v264=v103(v110[v262](v110[v262 + 1 ]));v261=1;end end end elseif (v113<=61) then local v179=v112[2];local v180=v110[v179 + 2 ];local v181=v110[v179] + v180 ;v110[v179]=v181;if (v180>0) then if (v181<=v110[v179 + 1 ]) then local v354=0;while true do if (v354==0) then v104=v112[3];v110[v179 + (11 -8) ]=v181;break;end end end elseif (v181>=v110[v179 + 1 ]) then local v355=0;while true do if (v355==0) then v104=v112[3];v110[v179 + 3 ]=v181;break;end end end elseif (v113>62) then v110[v112[2]]=v112[3];else v110[v112[2]][v112[3]]=v110[v112[4]];end elseif (v113<=66) then if (v113<=64) then v110[v112[444 -(416 + 26) ]]= #v110[v112[3]];elseif (v113>65) then if v110[v112[2]] then v104=v104 + 1 ;else v104=v112[3];end else v110[v112[2]]=v110[v112[3]];end elseif (v113<=67) then local v184=0;local v185;while true do if (v184==0) then v185=v112[2];v110[v185]=v110[v185](v21(v110,v185 + 1 ,v112[3]));break;end end elseif (v113==68) then local v272=0;local v273;while true do if (v272==0) then v273=v112[2];v110[v273]=v110[v273]();break;end end else v110[v112[2]]=v112[9 -6 ]~=(0 + 0) ;end elseif (v113<=81) then if (v113<=75) then if (v113<=72) then if (v113<=70) then local v186=0;local v187;while true do if (v186==0) then v187=v112[2];v110[v187](v110[v187 + (1 -0) ]);break;end end elseif (v113>71) then local v275=0;local v276;local v277;local v278;while true do if (1==v275) then v278=v110[v276 + 2 ];if (v278>0) then if (v277>v110[v276 + 1 ]) then v104=v112[3];else v110[v276 + 3 ]=v277;end elseif (v277<v110[v276 + (439 -(145 + 293)) ]) then v104=v112[3];else v110[v276 + 3 ]=v277;end break;end if (v275==0) then v276=v112[2];v277=v110[v276];v275=1;end end else local v279=0;local v280;local v281;local v282;while true do if (v279==0) then v280=v112[2];v281=v110[v280];v279=1;end if (v279==1) then v282=v110[v280 + 2 ];if (v282>0) then if (v281>v110[v280 + 1 ]) then v104=v112[3];else v110[v280 + 3 ]=v281;end elseif (v281<v110[v280 + 1 ]) then v104=v112[3];else v110[v280 + 3 ]=v281;end break;end end end elseif (v113<=(503 -(44 + 386))) then do return v110[v112[2]]();end elseif (v113>74) then v110[v112[2]]=v112[3]~=0 ;else v110[v112[1488 -(998 + 488) ]][v110[v112[3]]]=v112[4];end elseif (v113<=78) then if (v113<=76) then local v188=v112[1 + 1 ];local v189,v190=v103(v110[v188](v110[v188 + 1 ]));v105=(v190 + v188) -1 ;local v191=0;for v199=v188,v105 do v191=v191 + 1 ;v110[v199]=v189[v191];end elseif (v113>77) then local v286=0;local v287;while true do if (0==v286) then v287=v112[2];v110[v287](v21(v110,v287 + 1 ,v112[3 + 0 ]));break;end end else v110[v112[774 -(201 + 571) ]]=v40(v101[v112[3]],nil,v74);end elseif (v113<=79) then if (v110[v112[2]]==v110[v112[4]]) then v104=v104 + 1 ;else v104=v112[3];end elseif (v113>80) then v110[v112[2]]();else local v290=v112[2];local v291,v292=v103(v110[v290](v21(v110,v290 + 1 ,v105)));v105=(v292 + v290) -1 ;local v293=0;for v345=v290,v105 do v293=v293 + 1 ;v110[v345]=v291[v293];end end elseif (v113<=87) then if (v113<=(1222 -(116 + 1022))) then if (v113<=82) then v73[v112[3]]=v110[v112[2]];elseif (v113>83) then local v294=0;local v295;local v296;while true do if (v294==0) then v295=v112[2];v296={};v294=1;end if (v294==1) then for v390=1, #v109 do local v391=v109[v390];for v410=0, #v391 do local v411=v391[v410];local v412=v411[1];local v413=v411[2];if ((v412==v110) and (v413>=v295)) then local v428=0;while true do if (v428==0) then v296[v413]=v412[v413];v411[1]=v296;break;end end end end end break;end end else local v297=v112[2];v110[v297]=v110[v297](v21(v110,v297 + (4 -3) ,v112[3]));end elseif (v113<=85) then v110[v112[2]]();elseif (v113>(51 + 35)) then do return v110[v112[2]]();end else local v299=0;local v300;local v301;local v302;while true do if (v299==1) then v302={};v301=v18({},{[v7("\40\14\161\64\19\52\176","\46\119\81\200")]=function(v392,v393)local v394=v302[v393];return v394[1][v394[2]];end,[v7("\122\243\56\46\155\185\75\200\51\51","\208\37\172\86\75\236")]=function(v395,v396,v397)local v398=0;local v399;while true do if (v398==0) then v399=v302[v396];v399[1][v399[2]]=v397;break;end end end});v299=2;end if (v299==0) then v300=v101[v112[3]];v301=nil;v299=1;end if (v299==2) then for v400=1,v112[4] do v104=v104 + 1 ;local v401=v100[v104];if (v401[3 -2 ]==6) then v302[v400-1 ]={v110,v401[3]};else v302[v400-1 ]={v73,v401[3]};end v109[ #v109 + 1 ]=v302;end v110[v112[2]]=v40(v300,v301,v74);break;end end end elseif (v113<=90) then if (v113<=88) then v110[v112[2]]=v110[v112[3]] + v112[4] ;elseif (v113>89) then v110[v112[2]]=v110[v112[3]]%v112[4] ;else local v304=v112[2];local v305=v110[v112[3]];v110[v304 + 1 ]=v305;v110[v304]=v305[v112[4]];end elseif (v113<=91) then v110[v112[2]][v112[3]]=v112[4];elseif (v113==92) then v110[v112[2]]=v73[v112[3]];else v110[v112[2]]=v73[v112[3]];end v104=v104 + 1 ;break;end end end end;end end end return v40(v39(),{},v28)(...);end v23("LOL!043O0003063O00737472696E6703053O006D6174636803083O00746F6E756D62657203053O007063612O6C000D3O00120B3O00013O0020265O000200120B000100033O00120B000200043O00061000033O000100042O00063O00014O00068O00063O00024O00063O00034O0041000400034O0057000400014O001D00046O00193O00013O00013O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001B3O0002248O005C00016O005C000200014O005C000300014O001B00046O005C000500024O004100066O0039000700074O0003000500074O000400043O0001002026000400040001001208000500024O0043000300050002001208000400034O0003000200044O001200013O0002002632000100170001000400041A3O001700012O004100016O001B00026O0034000100024O001D00015O00041A3O001A00012O005C000100034O0057000100014O001D00016O00193O00013O00013O006D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E73657274030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574031C3O00682O7470733A2O2F7369726975732E6D656E752F7261796669656C64030A3O004765745365727669636503073O00F2CCC920C1AECE03083O007EB1A3BB4586DBA703093O00526F626C6F7847756903113O004E6F74696669636174696F6E4672616D6503073O0044657374726F7903043O007461736B03043O0077616974030C3O0043726561746557696E646F7703043O000DCC27C003053O009C43AD4AA503143O001AB2511FB9666E21B50926AE29067C954C02BD6F03073O002654D72976DC46030C3O007C192316F75E11161BEA5C1303053O009E3076427203083O009C211C357CA8FEEA03073O009BCB44705613C5030F3O006AD237F84976E2CB53DF22F55474E003083O009826BD569C20188503113O00FE4EE771F559B343EE4E8354F956AA43EE03043O00269C37C703133O008B2O722E1A73EF51A96975271D47FB55A1737B03083O0023C81D1C4873149A03073O003CB1D0DD81293003073O005479DFB1BFED4C2O01030A3O009D59C5A43F421EC0B65303083O00A1DB36A9C05A30500003083O006F4B0C2067430D2003043O004529226003093O0092C6CF03076B94D6D503063O004BDCA3B76A6203073O0026B39834D610BE03053O00B962DAEB5703073O00EE3226E4D2AFCF03063O00CAAB5C4786BE03064O00CF3A813DC403043O00E849A14C03043O00B5D64C5803053O007EDBB9223D030D3O003ECB53777375F6F526C1577C6D03083O00876CAE3E121E179303093O009DEC33F801BD27C2BB03083O00A7D6894AAB78CE53030B3O00A0F52B6EFDB39FF93C5AEB03063O00C7EB90523D9803053O00331FAD270203043O004B6776D903143O00E951681DBC5EEF417254921BDE14430DAA0AC25903063O007EA7341074D903083O00FB3B2294BD0DF0CD03073O009CA84E40E0D479030A3O002CEBBC8E34F7B6DA02E303043O00AE678EC503043O0078274B3D03073O009836483F58453E033D3O00E4C8EB5DC7C1AE55DAD7EB4EC084FA54D184FE4EDBD2E758D1C0AE57D1DDAE55DA84FA54D184E353D9C1E04894CBE81CC0CCEB1CC4D1FC5FDCC5FD599503043O003CB4A48E03083O007E57092C09EC1F5D03073O0072383E6549478D2O033O0093ECC203043O00A4D889BB03073O00E1E727B78DFB1203073O006BB28651D2C69E030F3O001F1C83C4813D17A4D4A5353D8BD2AF03053O00CA586EE2A601002O033O00E80A9B03053O00AAA36FE29703153O000639BC2C4B25301823B12D5A323C0625E36A16647D03073O00497150D2582E5703093O0043726561746554616203043O00AC2DC41C03053O0087E14CAD72022O00A0E9AAB3F041030D3O0043726561746553656374696F6E03053O002AECAAA2B503073O00C77A8DD8D0CCDD030C3O0043726561746542752O746F6E03043O0083DC1DF503063O0096CDBD709018030D3O000491AB4344B81002379DFF165703083O007045E4DF2C64E87103083O00F71E0BDFB47D85DF03073O00E6B47F67B3D61C03183O0075217DE95B4C180166E855007B2C7AFF51007A3567E8554E03063O00203840139C3A03043O0074C9E85303073O00E03AA885363A9203143O006A464AF035B686194B4F0BC6459482184A166EC003083O006B39362B9D15E6E703083O00F88A1DF9BBDDCCD003073O00AFBBEB7195D9BC026O00F03F3O012O0006353O00FF00013O00041A3O00FF000100120B000100013O00202600010001000200120B000200013O00202600020002000300120B000300013O00202600030003000400120B000400053O0006200004000C0001000100041A3O000C000100120B000400063O00202600050004000700120B000600083O00202600060006000900120B000700083O00202600070007000A00061000083O000100062O00063O00064O00063O00074O00063O00014O00063O00054O00063O00024O00063O00033O00120B0009000B3O00120B000A000C3O002059000A000A000D001208000C000E4O0003000A000C4O001200093O00024O00090001000200120B000A000C3O002059000A000A000F2O0041000C00083O001208000D00103O001208000E00114O0003000C000E4O0012000A3O0002002026000A000A0012002026000A000A0013000635000A002D00013O00041A3O002D0001002059000B000A00142O0023000B0002000100041A3O0030000100120B000B00153O002026000B000B00162O0055000B00010001002059000B000900172O001B000D3O00072O0041000E00083O001208000F00183O001208001000194O0043000E001000022O0041000F00083O0012080010001A3O0012080011001B4O0043000F001100022O0027000D000E000F2O0041000E00083O001208000F001C3O0012080010001D4O0043000E001000022O0041000F00083O0012080010001E3O0012080011001F4O0043000F001100022O0027000D000E000F2O0041000E00083O001208000F00203O001208001000214O0043000E001000022O0041000F00083O001208001000223O001208001100234O0043000F001100022O0027000D000E000F2O0041000E00083O001208000F00243O001208001000254O0043000E001000022O001B000F3O00032O0041001000083O001208001100263O001208001200274O004300100012000200204A000F001000282O0041001000083O001208001100293O0012080012002A4O004300100012000200204A000F0010002B2O0041001000083O0012080011002C3O0012080012002D4O00430010001200022O0041001100083O0012080012002E3O0012080013002F4O00430011001300022O0027000F001000112O0027000D000E000F2O0041000E00083O001208000F00303O001208001000314O0043000E001000022O001B000F3O00032O0041001000083O001208001100323O001208001200334O004300100012000200204A000F001000282O0041001000083O001208001100343O001208001200354O00430010001200022O0041001100083O001208001200363O001208001300374O00430011001300022O0027000F001000112O0041001000083O001208001100383O001208001200394O004300100012000200204A000F001000282O0027000D000E000F2O0041000E00083O001208000F003A3O0012080010003B4O0043000E0010000200204A000D000E00282O0041000E00083O001208000F003C3O0012080010003D4O0043000E001000022O001B000F3O00072O0041001000083O0012080011003E3O0012080012003F4O00430010001200022O0041001100083O001208001200403O001208001300414O00430011001300022O0027000F001000112O0041001000083O001208001100423O001208001200434O00430010001200022O0041001100083O001208001200443O001208001300454O00430011001300022O0027000F001000112O0041001000083O001208001100463O001208001200474O00430010001200022O0041001100083O001208001200483O001208001300494O00430011001300022O0027000F001000112O0041001000083O0012080011004A3O0012080012004B4O00430010001200022O0041001100083O0012080012004C3O0012080013004D4O00430011001300022O0027000F001000112O0041001000083O0012080011004E3O0012080012004F4O004300100012000200204A000F001000282O0041001000083O001208001100503O001208001200514O004300100012000200204A000F001000522O0041001000083O001208001100533O001208001200544O00430010001200022O001B00116O0041001200083O001208001300553O001208001400564O0003001200144O000400113O00012O0027000F001000112O0027000D000E000F2O0043000B000D0002002059000C000B00572O0041000E00083O001208000F00583O001208001000594O0043000E00100002001208000F005A4O0043000C000F0002002059000D000C005B2O0041000F00083O0012080010005C3O0012080011005D4O0003000F00114O0012000D3O0002002059000E000C005E2O001B00103O00022O0041001100083O0012080012005F3O001208001300604O00430011001300022O0041001200083O001208001300613O001208001400624O00430012001400022O00270010001100122O0041001100083O001208001200633O001208001300644O004300110013000200061000120001000100012O00063O00084O00270010001100122O0043000E00100002002059000F000C005B2O0041001100083O001208001200653O001208001300664O0003001100134O0012000F3O00020020590010000C005E2O001B00123O00022O0041001300083O001208001400673O001208001500684O00430013001500022O0041001400083O001208001500693O0012080016006A4O00430014001600022O00270012001300142O0041001300083O0012080014006B3O0012080015006C4O004300130015000200061000140002000100012O00063O00084O00270012001300142O00430010001200022O005400015O00041A4O002O0100202600013O006D2O00193O00013O00033O00033O00028O00026O00F03F026O007040022F3O001208000200014O0039000300033O002632000200080001000200041A3O000800012O005C00046O0041000500034O0034000400054O001D00045O002632000200020001000100041A3O000200012O001B00046O0041000300043O001208000400024O004000055O001208000600023O0004480004002C00012O005C000800014O0041000900034O005C000A00024O005C000B00034O005C000C00044O005C000D00054O0041000E6O0041000F00073O00202B0010000700022O0003000D00104O0012000C3O00022O005C000D00044O005C000E00054O0041000F00014O0040001000014O002F0010000700100010310010000200102O0040001100014O002F00110007001100103100110002001100202B0011001100022O0003000E00114O0050000D6O0012000B3O000200205A000B000B00032O004C000A000B4O000500083O0001000411000400100001001208000200023O00041A3O000200012O00193O00017O001B3O00028O00026O00F03F03073O0067657467656E7603063O00636F6E66696703083O00840C4B79F048ED8903073O0080EC653F268421029A5O99D93F03043O00A1A6154103073O00AFCCC97124D68B03063O0066C022DD1D5403053O006427AC55BC030C3O00A97DBF8C36AE6C86942ABD7D03053O0053CD18D9E003063O00D42OC032F2C003043O005D86A5AD030D3O00B0FDD5CB3CC7B17FAAFBCECC2903083O001EDE92A1A25AAED22O0103073O00EE4B6908EC407403043O006A852E1003043O00456E756D03073O004B6579436F646503013O0056030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574035C3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F486F7376696C652F526566696E656D656E742F6D61696E2F4D43253341426C61646525323042612O6C25323050612O727925323056342E302E30004A3O0012083O00014O0039000100023O0026323O00070001000100041A3O00070001001208000100014O0039000200023O0012083O00023O0026323O00020001000200041A3O00020001002632000100090001000100041A3O00090001001208000200013O0026320002000C0001000100041A3O000C000100120B000300036O00030001000200120B000400036O0004000100020020260004000400040006200004003A0001000100041A3O003A00012O001B00043O00052O005C00055O001208000600053O001208000700064O004300050007000200204A0004000500072O005C00055O001208000600083O001208000700094O00430005000700022O005C00065O0012080007000A3O0012080008000B4O00430006000800022O00270004000500062O005C00055O0012080006000C3O0012080007000D4O00430005000700022O005C00065O0012080007000E3O0012080008000F4O00430006000800022O00270004000500062O005C00055O001208000600103O001208000700114O004300050007000200204A0004000500122O005C00055O001208000600133O001208000700144O004300050007000200120B000600153O0020260006000600160020260006000600172O002700040005000600103E00030004000400120B000300183O00120B000400193O00205900040004001A0012080006001B4O0045000700014O0003000400074O001200033O00022O005500030001000100041A3O0049000100041A3O000C000100041A3O0049000100041A3O0009000100041A3O0049000100041A3O000200012O00193O00017O000B3O00028O00027O0040026O000840026O00F03F030A3O00496E707574456E64656403073O00436F2O6E65637403043O0067616D65030A3O004765745365727669636503103O0034F42O4D5A0FF75D4B4004F55E56700403053O00136187283F030A3O00496E707574426567616E00A93O0012083O00014O0039000100063O0026323O00060001000200041A3O000600012O0039000500063O0012083O00033O0026323O000A0001000400041A3O000A00012O0039000300043O0012083O00023O0026323O00A20001000300041A3O00A20001002632000100180001000400041A3O00180001001208000700013O002632000700130001000100041A3O001300012O0039000400053O001208000700043O0026320007000F0001000400041A3O000F0001001208000100023O00041A3O0018000100041A3O000F00010026320001009B0001000200041A3O009B00012O0039000600063O002632000200230001000300041A3O0023000100202600070005000500205900070007000600061000093O000100012O00063O00064O004E00070009000100041A3O00A80001000E2D000100300001000200041A3O00300001001208000700013O0026320007002A0001000400041A3O002A0001001208000200043O00041A3O00300001002632000700260001000100041A3O002600012O004500036O0039000400043O001208000700043O00041A3O002600010026320002006B0001000400041A3O006B0001001208000700014O0039000800093O002632000700390001000100041A3O00390001001208000800014O0039000900093O001208000700043O002632000700340001000400041A3O003400010026320008003B0001000100041A3O003B0001001208000900013O002632000900420001000400041A3O00420001001208000200023O00041A3O006B00010026320009003E0001000100041A3O003E0001001208000A00014O0039000B000B3O002632000A00460001000100041A3O00460001001208000B00013O002632000B005F0001000100041A3O005F0001001208000C00013O002632000C00500001000400041A3O00500001001208000B00043O00041A3O005F0001002632000C004C0001000100041A3O004C000100061000040001000100022O00063O00034O005D7O00120B000D00073O002059000D000D00082O005C000F5O001208001000093O0012080011000A4O0003000F00114O0012000D3O00022O00410005000D3O001208000C00043O00041A3O004C0001002632000B00490001000400041A3O00490001001208000900043O00041A3O003E000100041A3O0049000100041A3O003E000100041A3O0046000100041A3O003E000100041A3O006B000100041A3O003B000100041A3O006B000100041A3O003400010026320002001B0001000200041A3O001B0001001208000700014O0039000800083O000E2D0001006F0001000700041A3O006F0001001208000800013O002632000800920001000100041A3O00920001001208000900014O0039000A000A3O000E2D000100760001000900041A3O00760001001208000A00013O002632000A007D0001000400041A3O007D0001001208000800043O00041A3O00920001002632000A00790001000100041A3O00790001001208000B00013O002632000B008A0001000100041A3O008A00012O004500065O002026000C0005000B002059000C000C0006000610000E0002000100022O00063O00064O00063O00044O004E000C000E0001001208000B00043O002632000B00800001000400041A3O00800001001208000A00043O00041A3O0079000100041A3O0080000100041A3O0079000100041A3O0092000100041A3O00760001002632000800720001000400041A3O00720001001208000200033O00041A3O001B000100041A3O0072000100041A3O001B000100041A3O006F000100041A3O001B000100041A3O00A800010026320001000C0001000100041A3O000C0001001208000200014O0039000300033O001208000100043O00041A3O000C000100041A3O00A800010026323O00020001000100041A3O00020001001208000100014O0039000200023O0012083O00043O00041A3O000200012O00193O00013O00033O00033O0003073O004B6579436F646503043O00456E756D03013O004502093O00202600023O000100120B000300023O002026000300030001002026000300030003000630000200080001000300041A3O000800012O004500026O005200026O00193O00017O00243O00028O00026O00F03F026O00F83F027O004003063O00434672616D652O033O006E6577023O006068C96FC0023O0040B1085C40023O00C071D15DC003063O00416E676C6573023O0080783C00C0024O00581EE23F023O0060ED840240026O000840030A3O006EF9D01BB42B2968FDD503073O00185CCFE12C831903073O00566563746F7233024O00671671C0023O00C06CA686C0023O008094EC34C0026O001040025O00708C40025O0040634003043O0067616D65030A3O004765745365727669636503113O0079D6A840127E4AC7BD48286944C1B94B1E03063O001D2BB3D82C7B03073O0052656D6F746573030C3O0050612O7279412O74656D7074030A3O004669726553657276657203063O00756E7061636B030A3O008FCC2E7FB8CB3645BEDC03043O002CDDB94003093O0048656172746265617403043O0057616974023O00E08E79453E00683O0012083O00014O0039000100013O000E2D0001000200013O00041A3O00020001001208000100013O000E2D000100050001000100041A3O000500012O005C00026O000E000200024O005200026O005C00025O0006350002006700013O00041A3O00670001001208000200014O0039000300043O0026320002005C0001000200041A3O005C00010026320003004C0001000100041A3O004C0001001208000500013O002632000500180001000200041A3O00180001001208000300023O00041A3O004C0001002632000500140001000100041A3O001400012O001B00063O000400302200060002000300120B000700053O002026000700070006001208000800073O001208000900083O001208000A00094O00430007000A000200120B000800053O00202600080008000A0012080009000B3O001208000A000C3O001208000B000D4O00430008000B00022O001400070007000800103E0006000400072O001B00073O00012O005C000800013O0012080009000F3O001208000A00104O00430008000A000200120B000900113O002026000900090006001208000A00123O001208000B00133O001208000C00144O00430009000C00022O002700070008000900103E0006000E00072O001B00073O000200302200070002001600302200070004001700103E0006001500072O0041000400063O00120B000600183O0020590006000600192O005C000800013O0012080009001A3O001208000A001B4O00030008000A4O001200063O000200202600060006001C00202600060006001D00205900060006001E00120B0008001F4O0041000900044O004C000800094O000500063O0001001208000500023O00041A3O00140001002632000300110001000200041A3O0011000100120B000500183O0020590005000500192O005C000700013O001208000800203O001208000900214O0003000700094O001200053O0002002026000500050022002059000500050023001208000700244O004E00050007000100041A3O000A000100041A3O0011000100041A3O000A00010026320002000F0001000100041A3O000F0001001208000300014O0039000400043O001208000200023O00041A3O000F000100041A3O000A000100041A3O0067000100041A3O0005000100041A3O0067000100041A3O000200012O00193O00017O00053O0003073O004B6579436F646503043O00456E756D03013O0045028O00026O00F03F02213O00202600023O000100120B000300023O002026000300030001002026000300030003000630000200200001000300041A3O00200001000620000100200001000100041A3O00200001001208000200044O0039000300043O0026320002001A0001000500041A3O001A0001000E2D0004000C0001000300041A3O000C0001001208000400043O000E2D0004000F0001000400041A3O000F00012O0045000500014O005200056O005C000500014O005500050001000100041A3O0020000100041A3O000F000100041A3O0020000100041A3O000C000100041A3O002000010026320002000A0001000400041A3O000A0001001208000300044O0039000400043O001208000200053O00041A3O000A00012O00193O00017O00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.16) ~  Much Love, Ferib 

]]--

