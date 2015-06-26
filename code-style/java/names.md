### Nomenclatura

#### Conteúdo

 - [Classes, interfaces e enumeradores](names.md#class)
 - [Pacotes](names.md#package)
 - [Métodos, variáveis e constantes](names.md#vars)

#### <a name="class" /> Classes, interfaces e enumeradores

Nome de classes,interfaces e enums devem seguir o padrão [CamelCase](http://en.wikipedia.org/wiki/CamelCase), pode-se usar letras de `a` até `Z` e números de `0` à `9`

```java
public class Person {
    // something
}

public class PersonService {
    // something
}

public enum URLs {
    // something
}

public interface Service {
    // something
}

public class ServiceV2 implements Service {
    // something
}
```

#### <a name="package" /> Pacotes

Nomes de pacotes devem ser em caixa baixa utlizando somente letras de `a` até `z`

```java
com.luizalabs.project.core
com.luizalabs.project.utils
```

#### <a name="vars" /> Métodos, variáveis e constantes

Nomes de métodos, variáveis, de forma geral **devem** usar somente letras de `a` até `Z` em [lowerCamelCase](http://en.wikipedia.org/wiki/CamelCase#Variations_and_synonyms). No caso de constantes (`enum` e `static final`) **devem** usar caixa alta separada por underscore (`_`) podendo ser de `A` até `Z`

```java
public class MyClass {
    private static final int DEFAULT_LIMIT = 16;
    private String fullName;
    private String description;
}

public enum OrderStatus {
    NEW,
    PENDING_PAYMENT,
    DELIVERED,
    CANCELLED;
}
```
