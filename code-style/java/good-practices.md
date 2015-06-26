### Práticas de programação

#### Table of content
  
  - [Imports](good-practices.md#import)
  - [Notação @Override](good-practices.md#override)
  - [Tratamento de exceções](good-practices.md#exception)
  - [Métodos e classes estáticas](good-practices.md#static)
  - [Evite redundância](good-practices.md#redundancy)

#### <a name="import" /> Imports

  - **Nunca** use

```java
import com.luizalabs.*;
```

  - **Evite** usar imports estáticos

```java
import static com.luizalabs.Class.method;
```

  - Procure manter os imports na seguinte ordem

```java
import com.luizalabs;
import com.thirdpart; // apache, google, spring
import java.lang;
import javax;
```

#### <a name="override" /> Notação @Override

Sempre que um método implementar uma interface ou sobreescrever um método de uma classe superior **deve-se** utilizar a anotação `@Override`

```java
public MyClass extends SomeClass implements SomeInterface {
    @Override
    void interfaceMethod() {
        // ...
    }

    @Override
    protected void extendedClassMethod() {
        // ...   
    }
}
```

#### <a name="exception" /> Tratamento de exceções

De maneira gerar, tente **evitar** o tratamento de exceções escrevendo algo como `catch (Exception exception)`, você deve tentar dar contexto à isso quando possível<br><br>

  - Caso uma exceção seja tratada apenas para dar continuidade ao fluxo **deve-se** atribuir o nome de `ignored` para ela, e justificar com um comentário a razão dela ser ignorada

```java
try {
    doSomething(param1, param2);
} catch (Exception ignored) {
    // do nothing, but do not stop the workflow
}

// some code doing something
```

  - Testes unitários: caso seu teste verifique se uma exceção é lançada **procure** utilizar @Test(expected = Exception.class), caso o framework de testes não permita, deixe claro no código que a exceção era esperada

```java
@Test
public void shouldThrowIllegalArgumentException() {
    try {
        doSomething(x);
        Assert.fail();
    } catch (IllegalArgumentException expected) {
        // If don't catch this exception, test should fail
    }
}

@Test(expected = IllegalArgumentException.class)
public void shouldThrowIllegalArgumentException() {
    doSomething(x);
}
```

#### <a name="static" /> Métodos e classes estáticas

  - **Nunca** crie instâncias para a chamada de métodos estáticos

```java
//Correct
Foo.bar();

//Wrong
Foo foo = new Foo();
foo.bar();
```

  - Caso sua classe possua somente métodos estáticos, o construtor **deve** ser privado, assim evitando que programadores cometam o erro anterior

```java
public class Foo {
    private Foo() { }

    public static void bar() {
        // do something
    }
}
```

#### <a name="redundancy" /> Evite redundância

  - Procure evitar redundâncias como

```java
public interface SomeInterface {
    // Every constant on an interface, by definition
    // is public static final
    public static final int SOME_CONSTANT = 16;

    // All methods, by default, are public inside an interface
    public void someMethod();
}
```

  - Ao invés disso, você **deve** fazer algo como

```java
public interface SomeInterface {
    // Every constant on an interface, by definition
    // is public static final
    int SOME_CONSTANT = 16;

    // All methods, by default, are public inside an interface
    void someMethod();
}
```

