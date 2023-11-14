## 演習問題
### 第八回 関数の基礎
問題１. 「Hello」と出力する関数（引数なし，戻り値なし）を作り，main()関数内から２回呼び出せ．参考：p.124

問題２. 度単位の角度を引数として渡すと，ラジアン単位に換算した戻り値を返す関数（引数double型，戻り値double型）を作り，main()関数でその関数を使え．($\pi/180*deg=rad$)

問題３. ２つの整数を渡すと，大きい方の数値を戻り値として返す関数を作り，main()関数でその関数を使え．

問題４. サイズを示す数値（整数）と，表示する文字を引数として渡すと，引数で指定した文字とサイズの三角形を表示する関数を作り，main()関数でその関数を使え．

問題５. 下のプログラムでは，同じような計算が何度も出てくる．計算の部分を関数化し，それを用いてプログラム記述をシンプルにせよ． (この計算式は並列抵抗値を求める)

``` c title="5.c"
#include <stdio.h>

int main(void)
{
    double r1=11, r2=51, ra=30, rb=27, Ra=300, Rb=100;
    double r3, rc, Rc;
    r3 = (r1*r2)/(r1+r2);
    rc = (ra*rb)/(ra+rb);
    Rc = (Ra*Rb)/(Ra+Rb);
    printf("%.1f %.1f %.1f\n",r3,rc,Rc);
    return 0;
}
```

### 第九回 関数の応用
問題１. ２つの整数の平均値をdouble型で返す関数averageを作れ．またその動作を確認せよ．
``` c title="9-1.c"
#include <stdio.h>
double average(int num1, int num2);

int main(void){
	int x,y;
	double ave;
	scanf("%d",&x);
	scanf("%d",&y);
	ave = average(x,y);
	printf("average of %d and %d = %f\n",x,y,ave);
	return 0;
}

double average(int num1, int num2){
    // ???
}

```
問題２. int型の配列とその長さを引数として渡すと，その平均値をdoubleで返す関数average2を作れ．またその動作を確認せよ．
``` c title="9-2.c"
#include <stdio.h>
double average2(int s[], int len);

int main(void){
	int a[] = {2,4,6,1,5};
	printf("%f\n", average2(a,5));
	return 0;
}

double average2(int s[], int len){
	// ???
}

```

問題３. 引数に渡されたint型の配列の各数値を2倍にする関数nibaiを作れ．またその動作を確認せよ．
``` c title="9-3.c"
#include <stdio.h>
void nibai(int s[], int len){
	// ???
}

int main(void){
	int i,a[5] = {1,2,3,4,5};
	for(i=0;i<5;i++){
		printf("%d\t",a[i]);
	}
	printf("\n");
	nibai(a,5);
	for(i=0;i<5;i++){
		printf("%d\t",a[i]);
	}
	return 0;
}

```

問題４. 引数に渡された文字列を調べて「a」があれば「@」に置き換える関数replaceを作れ．またその動作を確認せよ．
``` c title="9-4.c"
#include <stdio.h>
void replace(char s[])
{
    // ???
}

int main(void)
{
	char st[]="Okadai Taro";
	puts(st);
	replace(st);
	puts(st);
	return 0;
}
```




## 演習問題の解答例
### 第八回

``` c title="8-1.c"
#include <stdio.h>

void func_hello(void);

int main(void)
{
	func_hello();
	func_hello();
	return 0;
}

void func_hello(void)
{
	printf("Hello\n");
}
```

``` c title="8-2.c"
#include <stdio.h>

double deg2rad(double a);

int main(void)
{
	double ang=120;
	printf("%f deg = %f rad\n",ang,deg2rad(ang));
	return 0;
}

double deg2rad(double a)
{
	double b;
	b = a * 3.1416/180;
	return b;
}
```

``` c title="8-3.c"
#include <stdio.h>

int max_value(int a, int b);

int main(void)
{
	printf("%d\n",max_value(50,100));
	return 0;
}

int max_value(int a, int b)
{
	if(a > b) return a;
	else return b;
}
```

``` c title="8-4.c"
#include <stdio.h>
void DrawTriangle(int size, char ch);
int main(void){
	DrawTriangle(3,'%');
	DrawTriangle(5,'&');
	return 0;
}
void DrawTriangle(int size, char ch){
	int i,j;
	for(i=0;i<size;i++){
		for(j=0;j<=i;j++) printf("%c",ch);
		printf("\n");
	}
}
```

``` c title="8-5.c"
#include <stdio.h>

double fn(double a, double b)
{
	return (a*b)/(a+b);
}

int main(void)
{
    double r1=11, r2=51, ra=30, rb=27, Ra=300, Rb=100;
    double r3, rc, Rc;
    r3 = fn(r1,r2);
    rc = fn(ra,rb);
    Rc = fn(Ra,Rb);
    printf("%.1f %.1f %.1f\n",r3,rc,Rc);
    return 0;
}
```

### 第九回

``` c title="9-1.c"
#include <stdio.h>
double average(int num1, int num2);

int main(void){
	int x,y;
	double ave;
	scanf("%d",&x);
	scanf("%d",&y);
	
	ave = average(x,y);
	printf("average of %d and %d = %f\n",x,y,ave);
	
	return 0;
}

double average(int num1, int num2){
	return (num1 + num2)/2.0;
}
```

``` c title="9-2.c"
#include <stdio.h>
double average2(int s[], int len);

int main(void){
	int a[] = {2,4,6,1,5};
	printf("%f\n", average2(a,5));
	return 0;
}

double average2(int s[], int len){
	double sum=0;
	int i;
	for(i=0; i<len; i++){
		sum += s[i];
	}
	return sum/len;
}
```

``` c title="9-3.c"
#include <stdio.h>
void nibai(int s[], int len){
	int i;
	for(i=0;i<len;i++){
		s[i] = s[i] * 2;
	}
}

int main(void){
	int i,a[5] = {1,2,3,4,5};
	for(i=0;i<5;i++){
		printf("%d\t",a[i]);
	}
	printf("\n");
	nibai(a,5);
	for(i=0;i<5;i++){
		printf("%d\t",a[i]);
	}
	return 0;
}
```

``` c title="9-4.c"
#include <stdio.h>

void replace(char s[])
{
	int i=0;
	while(s[i]){
		if(s[i]=='a') s[i]='@';
		i++;
	}
}

int main(void)
{
	char st[]="Okadai Taro";
	puts(st);
	replace(st);
	puts(st);
	return 0;
}
```

### 第十回

``` c title="10-1.c"

```

``` c title="10-2.c"

```

``` c title="10-3.c"

```

``` c title="10-4.c"

```

