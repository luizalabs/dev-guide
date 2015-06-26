### Javadoc Style

O estilo do javadoc será descrito nessa seção e é necessário lembrar que ele **deve** ser escrito em inglês

-------------------------------

- Uma linha no **javadoc** não deve ser maior que 120 caracteres

```java
//Correct

/**
 * Less than 120 characters on the whole line description
 *
 * @param var Variable of the method, used for something
 */
public void doSomething(final String var) {...}

//Wrong

/**
 * This is the wrong way of doing it, this method contains more than 120 characters on the whole line, which makes it incorret and because of this documento, not right, so it would be better to split those lines, like we will see below
 *
 * @param var Variable of the method, used for something
 */
public void doSomething(final String var) {...}

//Correct

/**
 * This is the wrong way of doing it, this method contains more than 120 
 * characters on the whole line, which makes it incorret and because of this
 * document, not right, so it would be better to split those lines, like we
 * can see here.
 *
 * @param var Variable of the method, used for something
 */
public void doSomething(final String var) {...}
```

- Separe a descrição e as tags com uma linha em branco

```java
// Correct

/**
 * This method sum two numbers
 *
 * @param a First number of the equation
 * @param b Second number of the equation
 * @return Returns a sum of the parameters
 */
public void sum(int a, int b) {
    return a + b;
}

//Wrong

/**
 * This method sum two numbers
 * @param a First number of the equation
 * @param b Second number of the equation
 * @return Returns a sum of the parameters
 */
public void sum(int a, int b) {
    return a + b;
}
```

- A tag `@author` sempre deve vir depois de descrição da classe

```java
/**
 * This is a class.
 *
 * @author author (author at luizalabs.com).
 */
public class Class {...}
```

- O javadoc deve vir junto ao que ele descrever, **não devem** existir linhas em branco entre o javadoc e o que ele descreve

```java
//Correct

/**
 * This method sum two numbers
 *
 * @param a First number of the equation
 * @param b Second number of the equation
 * @return Returns a sum of the parameters
 */
public void sum(int a, int b) {
    return a + b;
}

//Wrong

/**
 * This method sum two numbers
 *
 * @param a First number of the equation
 * @param b Second number of the equation
 * @return Returns a sum of the parameters
 */

public void sum(int a, int b) {
    return a + b;
}
```

