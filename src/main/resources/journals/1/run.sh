#!/bin/bash

mkdir -p /Users/chyc/Workspaces/IDEAProjects/Mine/luoo/src/main/resources/journals/1
cd /Users/chyc/Workspaces/IDEAProjects/Mine/luoo/src/main/resources/journals/1

## No.0	The Slow Build	Duels
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=The%20Slow%20Build$$Duels$$$$
## COUNT:	0
echo -ne "\nNo.0	The Slow Build - Duels\n"
echo -ne "COUNT=0\n"
FILE_SIZE=0

## DURL:

## URL:


## No.1	Toxic Girl	The Kings of Convenience
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Toxic%20Girl$$The%20Kings%20of%20Convenience$$$$
## COUNT:	0
echo -ne "\nNo.1	Toxic Girl - The Kings of Convenience\n"
echo -ne "COUNT=0\n"
FILE_SIZE=0

## DURL:

## URL:


## No.2	The Birds Will Sing For Us	Ed Harcourt
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=The%20Birds%20Will%20Sing%20For%20Us$$Ed%20Harcourt$$$$
## COUNT:	1
echo -ne "\nNo.2	The Birds Will Sing For Us - Ed Harcourt\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/3580007/3580007.mp3?xcode=d81e69e3007cbcb679ed08b4700a785185e6c7d33d892ea2&mid=0.49930208992448
wget -q http://zhangmenshiting2.baidu.com/data2/music/3580007/3580007.mp3?xcode=d81e69e3007cbcb679ed08b4700a785185e6c7d33d892ea2&mid=0.49930208992448 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 3580007.mp3?xcode=d81e69e3007cbcb679ed08b4700a785185e6c7d33d892ea2 | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 3580007.mp3?xcode=d81e69e3007cbcb679ed08b4700a785185e6c7d33d892ea2 3_The_Birds_Will_Sing_For_Us.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 3580007.mp3?xcode=d81e69e3007cbcb679ed08b4700a785185e6c7d33d892ea2
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/4080272/4080272.mp3?xcode=d81e69e3007cbcb64b146b2066980b3c6d2ca1a96b42cad6&mid=0.49930208992448
wget -q http://zhangmenshiting.baidu.com/data2/music/4080272/4080272.mp3?xcode=d81e69e3007cbcb64b146b2066980b3c6d2ca1a96b42cad6&mid=0.49930208992448 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 4080272.mp3?xcode=d81e69e3007cbcb64b146b2066980b3c6d2ca1a96b42cad6 | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 4080272.mp3?xcode=d81e69e3007cbcb64b146b2066980b3c6d2ca1a96b42cad6 3_The_Birds_Will_Sing_For_Us.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 4080272.mp3?xcode=d81e69e3007cbcb64b146b2066980b3c6d2ca1a96b42cad6
fi


## No.3	Island in the Sun	Weezer
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Island%20in%20the%20Sun$$Weezer$$$$
## COUNT:	1
echo -ne "\nNo.3	Island in the Sun - Weezer\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/8517687/8517687.mp3?xcode=d81e69e3007cbcb6733d7ee0cbe278369de89afca6cf557a&mid=0.08611499634558
wget -q http://zhangmenshiting2.baidu.com/data2/music/8517687/8517687.mp3?xcode=d81e69e3007cbcb6733d7ee0cbe278369de89afca6cf557a&mid=0.08611499634558 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 8517687.mp3?xcode=d81e69e3007cbcb6733d7ee0cbe278369de89afca6cf557a | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 8517687.mp3?xcode=d81e69e3007cbcb6733d7ee0cbe278369de89afca6cf557a 4_Island_in_the_Sun.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 8517687.mp3?xcode=d81e69e3007cbcb6733d7ee0cbe278369de89afca6cf557a
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/13136131/13136131.mp3?xcode=d81e69e3007cbcb6adcfa601d445755219ee3fe495205d0e&mid=0.08611499634558
wget -q http://zhangmenshiting.baidu.com/data2/music/13136131/13136131.mp3?xcode=d81e69e3007cbcb6adcfa601d445755219ee3fe495205d0e&mid=0.08611499634558 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 13136131.mp3?xcode=d81e69e3007cbcb6adcfa601d445755219ee3fe495205d0e | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 13136131.mp3?xcode=d81e69e3007cbcb6adcfa601d445755219ee3fe495205d0e 4_Island_in_the_Sun.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 13136131.mp3?xcode=d81e69e3007cbcb6adcfa601d445755219ee3fe495205d0e
fi


## No.4	Fly Away from Here	Dropline
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Fly%20Away%20from%20Here$$Dropline$$$$
## COUNT:	0
echo -ne "\nNo.4	Fly Away from Here - Dropline\n"
echo -ne "COUNT=0\n"
FILE_SIZE=0

## DURL:

## URL:


## No.5	Somewhere Only We Know	Keane
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Somewhere%20Only%20We%20Know$$Keane$$$$
## COUNT:	1
echo -ne "\nNo.5	Somewhere Only We Know - Keane\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/105655922/105655922.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae06918874fca955f3b&mid=0.41683335262594
wget -q http://zhangmenshiting2.baidu.com/data2/music/105655922/105655922.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae06918874fca955f3b&mid=0.41683335262594 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 105655922.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae06918874fca955f3b | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 105655922.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae06918874fca955f3b 6_Somewhere_Only_We_Know.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 105655922.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae06918874fca955f3b
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/105655940/105655940.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae0908127c48c87bf67&mid=0.41683335262594
wget -q http://zhangmenshiting.baidu.com/data2/music/105655940/105655940.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae0908127c48c87bf67&mid=0.41683335262594 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 105655940.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae0908127c48c87bf67 | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 105655940.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae0908127c48c87bf67 6_Somewhere_Only_We_Know.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 105655940.mp3?xcode=d81e69e3007cbcb6fc06235ee4925ae0908127c48c87bf67
fi


## No.6	Sunny Days	Jars of Clay
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Sunny%20Days$$Jars%20of%20Clay$$$$
## COUNT:	1
echo -ne "\nNo.6	Sunny Days - Jars of Clay\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/68612891/68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de&mid=0.07537721028299
wget -q http://zhangmenshiting2.baidu.com/data2/music/68612891/68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de&mid=0.07537721028299 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de 7_Sunny_Days.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/68612891/68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de&mid=0.07537721028299
wget -q http://zhangmenshiting.baidu.com/data2/music/68612891/68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de&mid=0.07537721028299 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de 7_Sunny_Days.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 68612891.mp3?xcode=d81e69e3007cbcb6dac99d01a7934a537dcae2e09e2799de
fi


## No.7	Sleepless	Until June
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Sleepless$$Until%20June$$$$
## COUNT:	1
echo -ne "\nNo.7	Sleepless - Until June\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/33459805/33459805.mp3?xcode=d81e69e3007cbcb6d09378a11a45232276e623034aa10b7f&mid=0.08421343434789
wget -q http://zhangmenshiting2.baidu.com/data2/music/33459805/33459805.mp3?xcode=d81e69e3007cbcb6d09378a11a45232276e623034aa10b7f&mid=0.08421343434789 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 33459805.mp3?xcode=d81e69e3007cbcb6d09378a11a45232276e623034aa10b7f | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 33459805.mp3?xcode=d81e69e3007cbcb6d09378a11a45232276e623034aa10b7f 8_Sleepless.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 33459805.mp3?xcode=d81e69e3007cbcb6d09378a11a45232276e623034aa10b7f
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/33459807/33459807.mp3?xcode=d81e69e3007cbcb6d09378a11a452322eaee0abebe132e5c&mid=0.08421343434789
wget -q http://zhangmenshiting.baidu.com/data2/music/33459807/33459807.mp3?xcode=d81e69e3007cbcb6d09378a11a452322eaee0abebe132e5c&mid=0.08421343434789 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 33459807.mp3?xcode=d81e69e3007cbcb6d09378a11a452322eaee0abebe132e5c | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 33459807.mp3?xcode=d81e69e3007cbcb6d09378a11a452322eaee0abebe132e5c 8_Sleepless.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 33459807.mp3?xcode=d81e69e3007cbcb6d09378a11a452322eaee0abebe132e5c
fi


## No.8	Do You Remember	The Summer Obsession
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Do%20You%20Remember$$The%20Summer%20Obsession$$$$
## COUNT:	1
echo -ne "\nNo.8	Do You Remember - The Summer Obsession\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/3605263/3605263.mp3?xcode=d81e69e3007cbcb65c2a0568d176f59304bb0c20786e4fab&mid=0.59797111748392
wget -q http://zhangmenshiting2.baidu.com/data2/music/3605263/3605263.mp3?xcode=d81e69e3007cbcb65c2a0568d176f59304bb0c20786e4fab&mid=0.59797111748392 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 3605263.mp3?xcode=d81e69e3007cbcb65c2a0568d176f59304bb0c20786e4fab | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 3605263.mp3?xcode=d81e69e3007cbcb65c2a0568d176f59304bb0c20786e4fab 9_Do_You_Remember.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 3605263.mp3?xcode=d81e69e3007cbcb65c2a0568d176f59304bb0c20786e4fab
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/4171802/4171802.mp3?xcode=d81e69e3007cbcb636fdee5537aee343cb95c858c4541608&mid=0.59797111748392
wget -q http://zhangmenshiting.baidu.com/data2/music/4171802/4171802.mp3?xcode=d81e69e3007cbcb636fdee5537aee343cb95c858c4541608&mid=0.59797111748392 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 4171802.mp3?xcode=d81e69e3007cbcb636fdee5537aee343cb95c858c4541608 | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 4171802.mp3?xcode=d81e69e3007cbcb636fdee5537aee343cb95c858c4541608 9_Do_You_Remember.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 4171802.mp3?xcode=d81e69e3007cbcb636fdee5537aee343cb95c858c4541608
fi


## No.9	Into The Fire	Thirteen Senses
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=Into%20The%20Fire$$Thirteen%20Senses$$$$
## COUNT:	1
echo -ne "\nNo.9	Into The Fire - Thirteen Senses\n"
echo -ne "COUNT=1\n"
FILE_SIZE=0

## DURL:
# durl:	http://zhangmenshiting2.baidu.com/data2/music/10479581/10479581.mp3?xcode=d81e69e3007cbcb63d2d0108f760c5cbd5a5f5a2b3317edd&mid=0.70127703812279
wget -q http://zhangmenshiting2.baidu.com/data2/music/10479581/10479581.mp3?xcode=d81e69e3007cbcb63d2d0108f760c5cbd5a5f5a2b3317edd&mid=0.70127703812279 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 10479581.mp3?xcode=d81e69e3007cbcb63d2d0108f760c5cbd5a5f5a2b3317edd | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 10479581.mp3?xcode=d81e69e3007cbcb63d2d0108f760c5cbd5a5f5a2b3317edd 10_Into_The_Fire.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 10479581.mp3?xcode=d81e69e3007cbcb63d2d0108f760c5cbd5a5f5a2b3317edd
fi

## URL:
# url:	http://zhangmenshiting.baidu.com/data2/music/9842978/9842978.mp3?xcode=d81e69e3007cbcb68178579c4af3e663e61f2e6feaeb86ea&mid=0.70127703812279
wget -q http://zhangmenshiting.baidu.com/data2/music/9842978/9842978.mp3?xcode=d81e69e3007cbcb68178579c4af3e663e61f2e6feaeb86ea&mid=0.70127703812279 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 9842978.mp3?xcode=d81e69e3007cbcb68178579c4af3e663e61f2e6feaeb86ea | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 9842978.mp3?xcode=d81e69e3007cbcb68178579c4af3e663e61f2e6feaeb86ea 10_Into_The_Fire.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 9842978.mp3?xcode=d81e69e3007cbcb68178579c4af3e663e61f2e6feaeb86ea
fi


## No.10	New Slang	The Shins
## URL:	http://box.zhangmen.baidu.com/x?op=12&count=1&title=New%20Slang$$The%20Shins$$$$
## COUNT:	5
echo -ne "\nNo.10	New Slang - The Shins\n"
echo -ne "COUNT=5\n"
FILE_SIZE=0

## DURL:

## URL:
# url:	http://fashion-mk.com/html/mp3/the%20shins-new%20slang.mp3
wget -q http://fashion-mk.com/html/mp3/the%20shins-new%20slang.mp3 &
PID=$!
wait
TMP_SIZE=`ls -al | grep the%20shins-new%20slang.mp3 | awk '{print $5}'`
echo -ne "	No.0:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv the%20shins-new%20slang.mp3 11_New_Slang.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf the%20shins-new%20slang.mp3
fi
# url:	http://www.alcoholics-anonymous-meetings-online.com/social_418/public/music_song/73/10/1063_5328.mp3?c=356a
wget -q http://www.alcoholics-anonymous-meetings-online.com/social_418/public/music_song/73/10/1063_5328.mp3?c=356a &
PID=$!
wait
TMP_SIZE=`ls -al | grep 1063_5328.mp3?c=356a | awk '{print $5}'`
echo -ne "	No.1:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 1063_5328.mp3?c=356a 11_New_Slang.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 1063_5328.mp3?c=356a
fi
# url:	http://music.indieshuffle.com/wp-content/files_mf/06newslang.mp3
wget -q http://music.indieshuffle.com/wp-content/files_mf/06newslang.mp3 &
PID=$!
wait
TMP_SIZE=`ls -al | grep 06newslang.mp3 | awk '{print $5}'`
echo -ne "	No.2:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv 06newslang.mp3 11_New_Slang.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf 06newslang.mp3
fi
# url:	http://www.suburbohemia.com/stuff/Iron%20Horse-%20Pickin&apos;%20On%20The%20Shins-%20New%20Slang.mp3
wget -q http://www.suburbohemia.com/stuff/Iron%20Horse-%20Pickin&apos;%20On%20The%20Shins-%20New%20Slang.mp3 &
PID=$!
wait
TMP_SIZE=`ls -al | grep Iron%20Horse-%20Pickin&apos;%20On%20The%20Shins-%20New%20Slang.mp3 | awk '{print $5}'`
echo -ne "	No.3:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv Iron%20Horse-%20Pickin&apos;%20On%20The%20Shins-%20New%20Slang.mp3 11_New_Slang.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf Iron%20Horse-%20Pickin&apos;%20On%20The%20Shins-%20New%20Slang.mp3
fi
# url:	http://minena.prismbaby.com/Destin/The%20Shins/The%20Garden%20State/The%20Shins%20-%20New%20Slang.mp3
wget -q http://minena.prismbaby.com/Destin/The%20Shins/The%20Garden%20State/The%20Shins%20-%20New%20Slang.mp3 &
PID=$!
wait
TMP_SIZE=`ls -al | grep The%20Shins%20-%20New%20Slang.mp3 | awk '{print $5}'`
echo -ne "	No.4:	$TMP_SIZE	$FILE_SIZE"
if [ $TMP_SIZE -gt $FILE_SIZE ]; then
    echo -ne "	copy\n"
    mv The%20Shins%20-%20New%20Slang.mp3 11_New_Slang.mp3
    FILE_SIZE=$TMP_SIZE
    TMP_SIZE=0
else
    echo -ne "	skipped\n"
    rm -rf The%20Shins%20-%20New%20Slang.mp3
fi


