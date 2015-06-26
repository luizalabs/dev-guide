### Formatação do código

#### Conteúdo

 - [Indentação](formatting.md#indentation)
 - [Estilo](formatting.md#layout)
 - [Definição de variáveis de classe](formatting.md#class-order)
 - [Tamanho da linha](formatting.md#line-length)

#### <a name="indentation" /> Indentação

  - Você **deve** utilizar 4 espaços, **nunca** tabs (`\t`)
  - Você **deve** utilizar as chaves na mesma linha quando declarar um método
  - Você **deve** deixar um espaço a esquerda da chave

```java
//Correct
public void method() {
    // do something
}

//Wrong
public void method()
{
    // do something
}

//Wrong
public void method(){
    // do something
}
```

  - `if`, `else if`, `else`, `for` and `while` **devem** sempre utilizar chaves mesmo que só tenham 1 linha

```java
//Correct
for (int i = 0; i < 100; i++) {
    System.out.println(i);
}

//Wrong
for (int i = 0; i < 100; i++)
    System.out.println(i);

//Correct
if (x > 2) {
    System.out.println(x);
}

//Wrong
if (x > 2)
    System.out.println(x);
```

  - Você **não deve** usar mais que uma quebra de linha para separar código

```java
//Correct
public void method() {
    if (x > 10) {
        // do something
    }
\n
    anotherMethod();
}

//Wrong
public void method() {
    if (x > 10) {
        // do something
    }
\n
\n
    anotherMethod();
}
```

  - Você **deve** deixar uma linha em branco após o fim de métodos e construtores, à não ser que seja o fim da classe
  - Vicê **não deve** deixar uma linha em branco no começo de métodos e construtores
  - Nos blocos `if - else`, `for`, `while` and `try - catch - finally` você **deve** deixar uma linha em branco se existir mais código no método, do contrário, você **não deve** colocar essa linha em branco

```java
//Correct
public void correct() {
    if (x > y) {
        // do something
    } else if (y > x * x) {
        // do something
    } else {
        // do something
    }
}

private void anotherCorrectMethod() {
    for (int i = 0; i < 100; i++) {
        // do something
    }

    int x = 0;
}

//Wrong
public void wrong() {

    if (x > y) {
    // something
    } else if (y > x * x) {
        // do another thing
    } else {
        // do something
    }

}
private void anotherWrongMethod() {

    for(int i = 0; i < 100; i++) {
        // do something
    }
    try {
        // do something
    } catch(Exception e) {
        // do something
    }

}
```

  - Em `enum`'s você **deve** deve sempre declarar um valor por linhae em caso de construtor múltiplo, sempre declare um parâmetro por linha
  - **Não é necessário** seguir a ordem alfabética
  - Depois de declarar todos os valores, vecê **deve** inserir um `;`

```java
//Correct
public enum OrderStatus {
    NEW(
        "New order",
        1122334
    ),
    PAYMENT_NOT_AUTHORIZED(
        "Payment not authorized",
        1122334
    );

    // ...
}

//Wrong
public enum OrderStatus {
    NEW("New order", 1122334 ),
    PAYMENT_NOT_AUTHORIZED("Payment not authorized", 1122334);

    // ...
}

//Wrong
public enum OrderStatus {
    NEW,PAYMENT_NOT_AUTHORIZED;
}
```

#### <a name="layout" /> Estilo

  - Todas as chamadas de método **devem** ser seguidas de parênteses, sem espaço entre o nome e o parênteses

```java
public void method() {
    //Correct
    callingMethod(a, b);
    //Wrong
    callingMethod (a, b);
}
```

  - Após declarar `if`, `else`, `for`, ...; você **deve** deixar um espaço antes de `{` (chaves) e `(` (parênteses)

```java
//Correct
if (x > y) {
    return true;
} else {
    return false;
}

try {
    // do something
} catch (Exception e) {
    // Exception tratement
} finally {
    // do something
}

//Wrong
if(x > y){
    return true;
}else{
    return false;
}

try{
    // do something
}catch(Exception e) {
    // Exception tratement
} finally {
    // do something
}
```

  - Vírgulas (`,`) **devem** ter um espaço em branco depois
  - Ponto e vírgulas (`;`) dentro de um `for` também **devem** ter um espaço em branco depois

```java
//Correct
for (i = 0; i < 100; i++) {
    i += 1;
}

doSomething(a, b, c)

//Wrong
for (i = 0;i < 100;i++) {
    i += 1;
}

doSomething(a,b,c)
```

  - Os operadores binários **devem** ter um espaço em ambos os lados

```java
//Correct
int x = a + 1;
int y = (2 * x) + (3 * z);
//Wrong
int x = a+1;
int x = a +1;
int x = a+ 1;
int z = 2*x + 3*y;
int z = (2*x) + (3*y);
```

  - Operadores unários **devem** ser declarados junto a variável

```java
//Correct
i++;
++i;

//Wrong
i ++;
-- i;
```

  - Casts **devem** ser separados por um espaço

```java
//Correct
(Example) x.get(3);
//Wrong
( Example )x.get(3);
(Example)x.get(3);
```

#### <a name="class-order" /> Definição de variáveis de classe

Na construção de sua classe, você **deve** seguir a ordem

  - atributos `public`
  - atributos `private`
  - construtores
  - métodos

Na declaração de atributos, você **deve** ter em mente a seguinte ordem:

  - `static final`
  - `static`
  - `final`

No caso de métodos, procure seguir a ordem lógica deles, evite ordem cronológica (novos métodos no final) a menos que exista uma lógica nessa ordem<br>

Caso existam métodos com a mesmo nome, porém com assinaturas diferentes, sempre mantenha eles juntos

```java
public class MyClass {
    public static final Random random = new Random();
    public static Math math;
    public final String name = "Labs"
    public String a;
    private static final String ID = "ABC";
    private static String attribute;
    private final String ANOTHER_ID = "DEF";
    private String b;

    public Example(String a, String b) {
        this.a = a;
        this.b = b;
    }

    public void doNothing() {

    }

    private void doNothing(int x) {

    }
}
```

#### <a name="line-length" /> Tamanho da linha

**Evite** linhas com mais de 120 caracteres, esse limite ajuda no momento de ler o código no [GitHub](https://github.com) e em monitores com resolução menor

```java
String correct = "Mussum ipsum cacilds, vidis litro abertis. Consetis " 
            + "adipiscings elitis. Pra lá , depois divoltis porris, paradis. " 
            + "Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, " 
            + "nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.";

String wrong = "Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.";
```

