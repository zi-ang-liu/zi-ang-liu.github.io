## 第一回 概要
**問題１.** 
自分の名前をローマ字で出力するプログラム （教科書p.16参考）

**問題２.**
キーボードから入力された数値を，７倍した後，３加えて，出力するプログラム

**問題３.**
キーボードから入力された２つの数値の和を計算して出力するプログラム

**問題４.**
余裕があれば，教科書p.34の練習問題に取り組みましょう．とにかく，たくさん書いて覚える．

## 第二回 変数とデータ型
**問題１.** 
キーボードから入力した数値をaへ格納し，10÷aの計算結果を出力するプログラム．ただし，変数はint型で宣言すること．10÷aはプログラムでは10/aと書く．

**問題２.** 
上と同じプログラム. ただし，変数はdouble型で宣言すること. 

!!! note
	練習１と２の出力結果が異なることを体験してください．

**問題３.** 
国語，社会，理科の３科目の点数を入力し，３科目の合計と平均を表示する．

??? tip
	科目の点数の合計は整数型，平均は浮動小数点型  

**問題４.** 
単価，数量を入力し，金額と消費税込みの金額を表示する．

??? tip
	* 税込み金額＝金額×110÷100   
	* 金額は整数型で扱う

## 第三回 演算子
**問題１.** 
a=123, b=456とし，それぞれの数値の加算・減算・乗算・除算・剰余算の結果を出力するプログラムを作れ．

**問題２.** 
a=12.3, b=45.6とし，それぞれの数値の加算・減算・乗算・除算の結果を出力するプログラムを作れ．
   
**問題３.** 
$a, b$を入力すると，$𝑎^2-𝑏^2$を求めるプログラムを作れ．

**問題４.** 
円の半径を入力すると，直径，円周，面積をそれぞれ計算・出力するプログラムを作れ．

??? tip
	* 円周率は3.1416等の定数を書く．（有効桁数は必要に応じて自分で決める）

**問題５.** 
秒数で表される時間を入力し，時間・分・秒に変換し表示するプログラムを作れ．

??? tip
	* 秒数÷６０→分、　余りを秒とする。
	* 分　÷６０→時間、余りを分とする。


## 第四回
**問題１.** 
月(1～12)を入力すると，下の表のように対応する季節(spring, summer, autumn, winter)を出力するプログラムを作れ.    

      | 入力値(month) | 出力メッセージ |
      | ------------- | -------------- |
      | 3~5           | It's spring.   |
      | 5~8           | It's summer.   |
      | 9~11          | It's autumn.   |
      | 12,1,2        | It's winter.   |


**問題２.** 
大小2つの整数を入力し，小さい方で大きい方が割り切れたら"Multiple!"（倍数）と出力し，割り切れなければ余りを出力するプログラム.

**問題３.** 
キーボードから３つの数を入力すると，その中で最大値と最小値を出力するプログラムを作れ．

**問題４.** 
キーボードから1文字入力し，大文字なら「upper」，小文字なら「lower」，それ以外なら「error」と出力するプログラムを作れ．

## 第五回
**問題１.** 
for文を使って，1から100までの整数をすべて出力せよ．

**問題２.** 
while文を使って，1から𝑛までの整数をすべて出力せよ．𝑛はキーボードから入力した値．

**問題３.** 
1からnまでの整数のうち，３で割り切れない数の和を求めよ．nはキーボードから入力した値．

**問題４.** 
九九表（1の段～９の段）を表示せよ．

**問題５.** 
キーボードから数値を繰り返し入力し，その合計が100以上になったら入力を止めて，合計を表示せよ．

**問題６.** 
5のプログラムを無限ループを使って作れ．

## 第六回
**問題１.** 
キーボードから入力した4つの数値を4つの配列にそれぞれ記憶させた後，それらの合計を求めて出力せよ．（forやwhileは使わずに）

**問題２.** 
上と同じことをfor文を使って作る．入力時と計算時で，for文を２度使ってよい. (4回繰り返すためにforを使う)

**問題３.** 
5個の数値をキーボードから入力し，入力された数値を偶数と奇数に分けて表示するプログラムを作成せよ．

**問題４.** 
char ss[50];と宣言された配列に，自分の名前（半角ローマ字）を格納し，出力せよ．（キーボードからの入力でなくて良い）. さらに，配列ss[]の各要素（格納されている値）を1文字ずつで出力せよ．参考：p.49

**問題５.** 
入力された文字列を逆順に表示するプログラムを作成せよ．またプログラム中に「a」が含まれていたら，「A」に変換せよ．

**問題６.** 
3人の学生のテスト結果(3回分)をキーボードから入力し，それぞれの平均点を計算し，出力せよ．

??? tip
	配列の要素ss[ ]が0（‘\0’）である所までを繰り返し文(forやwhileなど)を使って出力する．

## 第七回
**問題１.** 
キーボードから入力した10進数の数値を，8進数と16進数で表示せよ．

**問題２.** 
キーボードから入力した文字列を配列に格納し，１文字ずつ文字コード（2桁の16進数）で表示せよ．(参考： p.244-245) 

**問題３.** 
キーボードから入力した文字列をアルファベット順に並び替えて出力せよ．ただし，入力するアルファベットはすべて小文字とする．

??? tip
	- scanfは%sで文字列読み込みができる(p.117)
	- 各文字は文字コード表にある値で表される(p.244 – 245)
	- 「隣り合う配列の要素と比較し，順序が逆であれば入れ替える」ということを繰り返す


## 演習問題の解答例

### 第一回
``` c title="1-1.c"
#include <stdio.h>
int main(void)
{
   printf("Ziang Liu\n");
   return 0;
}
```

``` c title="1-2.c"
#include <stdio.h>
int main(void){
	int dt;
	printf("Input number:");
	scanf("%d",&dt);
	dt = (dt * 7) + 3;
	printf("%d\n",dt);
	return 0;
}
```

``` c title="1-3.c"
#include <stdio.h>
int main(void){
	int dt_1,dt_2, sum;
	printf("Input number 1:");
	scanf("%d",&dt_1);
	printf("Input number 2:");
	scanf("%d",&dt_2);
	sum = dt_1 + dt_2;
	printf("SUM = %d\n",sum);
	return 0;
}
```

### 第二回
``` c title="2-1.c"
#include <stdio.h>
int main(void)
{
    int a,b;
    printf("a=");
    scanf("%d",&a);
    b=10/a;
    printf("10/a=%d\n",b);
    return 0;
}
```

``` c title="2-2.c"
#include <stdio.h>
int main(void)
{
    double a,b;
    printf("a=");
    scanf("%lf",&a);
    b=10/a;
    printf("10/a=%f\n",b);
    return 0;
}
```

``` c title="2-3.c"
#include <stdio.h>
int main(void){
	int kokugo, shakai, rika, goukei;　double ave;
	printf("kokugo=");
	scanf("%d",&kokugo);
	printf("shakai=");
	scanf("%d",&shakai);
	printf("rika=");
	scanf("%d",&rika);
	goukei = kokugo + shakai + rika;
	ave = goukei / 3.0;
	printf("SUM=%d AVE=%f\n",goukei, ave);
	return 0;
}
```

``` c title="2-4.c"
#include <stdio.h>
int main(void)
{
	int up, qty, amount, ti;

	printf("Unit price=");
	scanf("%d",&up);
	printf("Quantity=");
	scanf("%d",&qty);

	amount = up * qty;
	ti = amount * 110 / 100;
	printf("Amount of money=%d　Tax included=%d\n",amount,ti);
	
	return 0;
}

```

### 第三回 
``` c title="3-1.c"
#include <stdio.h>
int main(void){
	int a=123, b=456, r1,r2,r3,r4,r5;
	
	r1 = a + b; //加算
	r2 = a - b; //減算
	r3 = a * b; //乗算
	r4 = a / b; //除算
	r5 = a % b; //剰余算
	
	printf("%d %d %d %d %d\n",r1,r2,r3,r4,r5);
	
	return 0;
}
```

``` c title="3-2.c"
#include <stdio.h>
int main(void){
	double a=12.3, b=45.6, r1,r2,r3,r4;
	
	r1 = a + b; //加算
	r2 = a - b; //減算
	r3 = a * b; //乗算
	r4 = a / b; //除算
	
	printf("%f %f %f %f\n",r1,r2,r3,r4);
	
	return 0;
}
```

``` c title="3-3.c"
#include <stdio.h>
int main(void)
{
	int a,b,c;
	printf("a=");
	scanf("%d",&a);
	printf("b=");
	scanf("%d",&b);
	
	c = a*a-b*b;

	printf("c=%d\n",c);
	return 0;
}

```

``` c title="3-4.c"
#include <stdio.h>
int main(void)
{
	double r,d,l,s;
	printf("radius="); scanf("%lf",&r);
	d=2*r;
	l=3.1416*d;
	s=3.1416*r*r;
	printf("diameter=%f\n",d);
	printf("circumference=%f\n",l);
	printf("area=%f\n",s);
	return 0;
}

```

``` c title="3-5.c"
#include <stdio.h>
int main(void)
{
	int input,hour,min,sec;

	printf("sec=");
	scanf("%d",&input);

	min = input / 60;
	sec = input % 60;
	hour = min / 60;
	min = min % 60;

	printf("%d sec = %d hour %d min %d sec\n",input,hour,min,sec);

	return 0;
}

```

### 第四回

``` c title="4-1.c"
#include <stdio.h>
int main(void)
{
	int month,season;
	printf("month[1-12]="); scanf("%d",&month);
	season = month / 3;
	if(season==1){
		printf("It's spring.\n");
	}
	else if(season==2){
		printf("It's summer.\n");
	}
	else if(season==3){
		printf("It's autumn.\n");
	}
	else{
		printf("It's winter.\n");
	}
	return 0;
}
```

``` c title="4-2.c"
#include <stdio.h>
int main(void)
{
	int large,small,remainder;
	printf("Large number="); scanf("%d",&large);
	printf("Small number="); scanf("%d",&small);

	remainder = large % small;
	if(remainder==0) printf("Multiple!\n");
	else printf("Remainder=%d\n",remainder);
	
	return 0;
}
```

``` c title="4-3.c"
#include <stdio.h>
int main(void)
{
	int a,b,c,min,max;
	printf("a="); scanf("%d",&a);
	printf("b="); scanf("%d",&b);
	printf("c="); scanf("%d",&c);

	if(a>b){
		max=a;  min=b;
	}else{
		max=b;  min=a;
	}
	if(c>max) max=c;
	if(c<min) min=c;

	printf("Maximum=%d Minimum=%d\n",max,min);
	return 0;
}

```

``` c title="4-4.c"
#include<stdio.h>

int main(void){
	char input;
	printf("Input a character:");
	scanf("%c",&input);
	
	if(input >= 'A' && input <= 'Z'){
		printf("upper\n");
	}else if(input >= 'a' && input <= 'z'){
		printf("lower\n");
	}else{
		printf("error\n");
	}
	
	return 0;
}
```


### 第五回

``` c title="5-1.c"
#include <stdio.h>
int main(void)
{
	int i;
	for(i=1;i<=100;i++){
		printf("%d\n",i);
	}
	return 0;
}
```

``` c title="5-2.c"
#include <stdio.h>
int main(void)
{
	int n,i=1;
	printf("n="); scanf("%d",&n);
	while(i<=n){
		printf("%d\n",i);
		i++;
	}
	return 0;
}
```

``` c title="5-3.c"
#include <stdio.h>
int main(void)
{
	int i,n,wa=0;
	printf("n="); scanf("%d",&n);
	for(i=1;i<=n;i++){
		if(i%3 != 0) wa+=i;
	}
	printf("wa=%d\n",wa);
	return 0;
}
```

``` c title="5-4.c"
#include <stdio.h>
int main(void)
{
	int i,j;
	for(i=1;i<10;i++){
		for(j=1;j<10;j++){
			printf("%d\t",i*j);
		}
		printf("\n");
	}
	return 0;
}
```


``` c title="5-5.c"
#include <stdio.h>
int main(void){
	int dt,sum;
	sum = 0;
	while(sum < 100){
		printf("Input number=");
		scanf("%d",&dt);
		sum += dt;
	}
	printf("sum=%d\n",sum);
	return 0;
}

```

``` c title="5-6.c"
#include <stdio.h>
int main(void){
	int dt,sum;
	sum = 0;
	while(1){
		printf("Input number=");
		scanf("%d",&dt);
		sum += dt;
		if(sum>=100)break;
	}
	printf("sum=%d\n",sum);
	return 0;
}
```

### 第六回

``` c title="6-1.c"
#include <stdio.h>
int main(void)
{
	int a[4],b;
	printf("a[0]="); scanf("%d",&a[0]);
	printf("a[1]="); scanf("%d",&a[1]);
	printf("a[2]="); scanf("%d",&a[2]);
	printf("a[3]="); scanf("%d",&a[3]);

	b = a[0] + a[1] + a[2] + a[3];
	printf("sum of a[]=%d\n",b);
	return 0;
}
```

``` c title="6-2.c"
#include <stdio.h>
int main(void)
{
    int a[4],b,i;
    for(i=0;i<4;i++){
        printf("a[%d]=",i); scanf("%d",&a[i]);
    }
    b=0;
    for(i=0;i<4;i++){
        b += a[i];
    }
    printf("sum of a[]=%d\n",b);
    return 0;
}
```

``` c title="6-3.c"
#include <stdio.h>
int main(void)
{
    int num[5];
    int i;
    for (i = 0; i < 5; i++){
        printf("#%d:", i + 1);
        scanf("%d", &num[i]);
    }
    printf("\neven: ");
    for (i = 0; i < 5; i++){
        if ((num[i] % 2) == 0)
            printf("%d,", num[i]);
    }
    printf("\nodd: ");
    for (i = 0; i < 5; i++){
        if ((num[i] % 2) != 0)
            printf("%d,", num[i]);
    }
}
```

``` c title="6-4.c"
#include <stdio.h>
#include <string.h>
int main(void)
{
    char ss[50]; int i;
    strcpy(ss,"Taro");
    printf("%s\n",ss);
    i=0;
    while(ss[i]!='\0'){
        printf("%c ",ss[i]);
        i++;
    }
    return 0;
}

```

``` c title="6-5.c"
#include <stdio.h>
int main(void)
{
    char str[50];
    int len = 0;
    printf("String?:");
    scanf("%s", str);
    while (str[len] != 0)
        len++;
    for (len--; len >= 0; len--)
    {
        if (str[len] == 'a')
            str[len] = 'A';
        printf("%c", str[len]);
    }
    printf("\n");
    return 0;
}
```

``` c title="6-6.c"
#include <stdio.h>
int main(void)
{
    int dt[3][3], i, j, total = 0;
    double ave[3];
    //3人分のテスト成績を入力
    for (i = 0; i < 3; i++)
    {
        printf("#%d\n", i + 1);
        for (j = 0; j < 3; j++)
        {
            printf("test result %d:", j + 1);
            scanf("%d", &dt[i][j]);
        }
    }
    //それぞれの平均値を計算
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            total += dt[i][j];
        }
        ave[i] = total / 3.0;
        total = 0;
    }
    //平均値を出力
    printf("\n");
    for (i = 0; i < 3; i++)
        printf("#%d ave:%.2f\n", i + 1, ave[i]);
    return 0;
}

```


### 第七回

``` c title="7-1.c"
#include <stdio.h>
int main(void)
{
    int num;
    printf("input a number: \n");
    scanf("%d",&num);
    printf("8:%o\n16x:%x\n",num,num);
    return 0;
}
```

``` c title="7-2.c"
#include <stdio.h>
int main(void)
{
    char ss[80]; int i=0;
    printf("Input a string:");
    fgets(ss,80,stdin);
    while(ss[i] != '\0'){
        printf("%2X ",ss[i++]);
    }
    printf("\n");
    return 0;
}
```

``` c title="7-3.c"
#include <stdio.h>
int main(void){
    int i,j,temp;
    char str[100];
    scanf("%s",str);
    for(i=0;str[i]!=0;i++){
        for(j=i+1;str[j]!=0;j++){
            if(str[i] > str[j]){
                temp = str[i];
                str[i] = str[j];
                str[j] = temp;
            }
        }
    }
    printf("%s\n",str);
    return 0;
}
```
