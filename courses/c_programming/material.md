## 受講にあたっての注意事項（2023）
- 本講義では，受講者自身のノートPCを用いて演習を行います．毎週必ずノートPCを持参してください．
- 講義中にスマホ電源やWi-Fi設定をオフにするようにしてください．（アクセスの集中を防ぐため）
- 下記の資料を参照し，初回講義までにプログラミング環境の構築と動作確認を完了しておいてください．
    * [C言語開発環境の構築](./material_guidance/C言語開発環境の構築2023.pdf)
    * [GCCを用いたプログラミング(Windows)](./material_guidance/GCCを用いたプログラミング(Windows)2023.pdf) 
    * [GCCを用いたプログラミング(Mac)](./material_guidance/GCCを用いたプログラミング(Mac)2023.pdf)
- 本講義指定の教科書は泰山堂書店にて販売しています．生協Text-itでは取り扱っていませんので注意してください．
- 本講義は系混合で９つのクラスに分かれています．本クラス(クラス2)の教室は以下の通りです．
    * ３学期：第１６講義室（工学部５号館１階）
    * ４学期：第１６講義室（工学部５号館１階）
- その他，不明な点があれば担当教員・劉までご連絡ください. 
担当教員：劉 子昂    
メール：liu.ziang＠okayama-u.ac.jp

## C Online Compiler
- 環境構築ができていない場合は，一時的に以下のサイトを利用してください．
- [C Online Compiler](https://www.onlinegdb.com/online_c_compiler)    

## 講義資料(前半)
| Date  | Topic                       | Class Material                                                                                                | Optional Material                                                                                       |
| ----- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| 10/4  | 第1回：概要                 | [Guidance](./material/2023プログラミング_00_Guidance.pdf) / [スライド1](./material/2023プログラミング_01.pdf) | [円記号](https://ja.wikipedia.org/wiki/%E5%86%86%E8%A8%98%E5%8F%B7)/[ChatGpt](https://chat.openai.com/) |
| 10/11 | 第2回：変数とデータ型       | [スライド2](./material/2023プログラミング_02.pdf)                                                             | [ASCII](https://ja.wikipedia.org/wiki/ASCII)                                                            |
| 10/18 | 第3回：演算子               | [スライド3](./material/2023プログラミング_03.pdf)                                                             | [演算子](https://ja.wikipedia.org/wiki/C%E3%81%A8C%2B%2B%E3%81%AE%E6%BC%94%E7%AE%97%E5%AD%90)           |
| 10/25 | 第4回：制御文の基礎         | [スライド4](./material/2023プログラミング_04.pdf)                                                             |                                                                                                         |
| 11/1  | 第5回：制御文とアルゴリズム | [スライド5](./material/2023プログラミング_05.pdf)                                                             |                                                                                                         |
| 11/8  | 第6回：配列と文字列         | [スライド6](./material/2023プログラミング_06.pdf)                                                             |                                                                                                         |
| 11/15 | 第7回：コンソール入出力     | [スライド7](./material/2023プログラミング_07.pdf)                                                             |                                                                                                         |

※毎週水曜日1-2限（8:40～10:30）

## 講義資料(後半)
| Date  | Topic                            | Class Material | Optional Material |
| ----- | -------------------------------- | -------------- | ----------------- |
| 12/6  | 第8回：関数の基礎                |                |                   |
| 12/13 | 第9回：関数の応用                |                |                   |
| 12/20 | 第10回：ポインタの基礎           |                |                   |
| 1/10  | 第11回：ポインタの応用と構造体   |                |                   |
| 1/17  | 第12回：標準ライブラリ関数の基礎 |                |                   |
| 1/24  | 第13回：標準ライブラリ関数の応用 |                |                   |
| 1/31  | 第14回：総合演習                 |                |                   |
| 2/7   | 第15回：期末試験                 |                |                   |

※毎週水曜日1-2限（8:40～10:30）

## ソースコード

### 第4回：制御文の基礎

``` c title="4-1.c"
#include <stdio.h>

int main(void)
{
    int a = 10;
    int b = 20;

    if (a >= 5)
    {
        printf("first sentence\n");
        printf("second sentence\n");
    }

    if (b == 50)
        printf("third sentence\n");
        printf("fourth sentence\n");

    return 0;
}
```

``` c title="4-2.c"
#include <stdio.h>

int main(void)
{
    int a;
    a = 10;
    printf("(a==10) is %d\n", (a == 10));

    if (a == 10)
    {
        printf("code1\n");
    }

    if (5)
    {
        printf("code2\n");
    }

    if (0)
    {
        printf("code3\n");
    }

    if (a)
    {
        printf("code4\n");
    }

    return 0;
}

```

### 第5回：制御文とアルゴリズム

"ABC"を10回表示するプログラム

``` c title="5-1.c"
#include <stdio.h>
int main(void)
{
    int i;
    for (i = 1; i <= 10; i++)
    {
        printf("ABC\n");
    }
    return 0;
}
```

1000から2000までの整数をすべて出力するプログラム
``` c title="5-2.c"
#include <stdio.h>
int main(void)
{
    int i;
    for (i = 1000; i <= 2000; i++)
    {
        printf("%d\n", i);
    }
    return 0;
}
```

1から10まで、数え上げて出力する例
``` c title="5-3.c"
#include <stdio.h>
int main()
{
    int i = 1;
    while (i <= 10)
    {
        printf("%d\n", i);
        i++;
    }
    return 0;
}
```

break文
``` c title="5-4.c"
#include <stdio.h>
int main(void)
{
    int i;
    for (i = 1; i <= 10; i++)
    {
        printf("ABC\n");
        if (i == 5)
            break;
    }
    return 0;
}
```

### 第6回：配列と文字列


配列x[]の10倍を配列y[]に格納するプログラム
``` c title="6-1.c"
#include <stdio.h>
int main(void)
{
    int x[5] = {11, 12, 13, 14, 15};
    int y[5], i;
    for (i = 0; i < 5; i++)
    {
        y[i] = x[i] * 10;
    }
    for (i = 0; i < 5; i++)
    {
        printf("%d ", y[i]);
    }
    return 0;
}
```

逆行列を求めるプログラム
``` c title="6-2.c"
#include <stdio.h>
int main(void)
{
    double a[2][2] = {{1.0, 2.0}, {3.0, 4.0}};
    double b[2][2], d;
    d = a[0][0] * a[1][1] - a[0][1] * a[1][0];
    b[0][0] = a[1][1] / d;
    b[0][1] = -a[0][1] / d;
    b[1][0] = -a[1][0] / d;
    b[1][1] = a[0][0] / d;

    printf("%f %f\n", b[0][0], b[0][1]);
    printf("%f %f\n", b[1][0], b[1][1]);

    return 0;
}
```

### 第7回：コンソール入出力
    
printf()の変換指定
``` c title="7-1.c"
#include <stdio.h>
int main(void)
{
    char c;
    int n;
    double d;
    char s[20] = "abcde";
    c = 65;
    printf("c: %c\n", c); // c: A
    printf("c: %d\n", c); // c: 65
    n = 66;
    printf("n: %c\n", n); // n: B
    printf("n: %d\n", n); // n: 66
    n = 1000;
    printf("  8: %o\n", n); //  8: 1750
    printf(" 10: %d\n", n); // 10: 1000
    printf("16x: %x\n", n); // 16x: 3e8
    printf("16X: %X\n", n); // 16X: 3E8
    d = 56789.12;
    printf("f: %f\n", d);                // f: 56789.120000
    printf("e: %e\n", d);                // e: 5.678912e+004
    printf("E: %E\n", d);                // E: 5.678912E+004
    printf("s: %s\n", s);                // s: abcde
    printf("c=%d n=%d s=%s\n", c, n, s); // c=65 n=1000 s=abcde
    return 0;
}
``` 

printf()のオプション指定
``` c title="7-2.c"
#include <stdio.h>
int main(void)
{
    double d = 654.321;
    printf("[%f]\n", d);    //[654.321000]
    printf("[%12f]\n", d);  //[  654.321000]
    printf("[%9.2f]\n", d); //[   654.32]
    printf("[%9.f]\n", d);  //[  654]
    printf("[%.2f]\n", d);  //[654.32]
}
```

fgets()関数
``` c title="7-3.c"
#include <stdio.h>
int main(void)
{
    char s[100];
    printf("Enter a string: ");
    fgets(s, 100, stdin);
    printf("%s", s);
    return 0;
}
```

scanf()関数とfgets()関数の違い
``` c title="7-4.c"
#include <stdio.h>
int main(void)
{
    char s1[80], s2[80];
    printf("fgets():");
    fgets(s1, 80, stdin);
    printf("s1=%s\n", s1);
    
    printf("scanf():");
    scanf("%s", s1);
    printf("s1=%s\n", s1);
    scanf("%s", s2);
    printf("s2=%s\n", s2);
    return 0;
}
```

## 期末試験（2023）