# Guia de boas práticas para revisão de código

Guia de boas práticas para revisão de código. Inspirado, [entre outros](#referencias), no guia da [thoughtbot](https://github.com/thoughtbot/guides/blob/master/code-review/README.md).

## Benefícios

- Antecipação de bugs
- Maior manutenibilidade do código
- Legibilidade do código
- Compartilhamento de conhecimento
  - Tanto em relação à feature que está sendo implementada quanto às técnicas que foram usadas

## Dicas gerais para todos

- Aceite que muitas decisões de programação são opiniões. Discuta as opções, as preferências e cheguem em um consenso rapidamente.
- Questione, não exija. ("O que você pensa sobre chamar esse campo de `user_id`?")
- Se você não entender o que está lendo, pergunte. ("Não entendi, você poderia explicar?").
- Evite palavras que sugiram culpa ou responsabilidade pelo código. ("seu", "meu", "não é meu").
- Não seja grosseiro ou ofensivo.
- Seja explícito e claro. Nem sempre as pessoas entenderão o que você quis dizer.
- Seja descritivo sobre as suas intenções. Descreva as mudanças propostas e faça comentários claros.
- Forneça referências para ajudar a esclarecer as decisões tomadas. ("Acredito que seja melhor alterar a ordem desses _middlewares_ (https://docs.djangoproject.com/en/1.8/topics/http/middleware/#hooks-and-application-order)")
- Seja humilde e sincero. ("Não tenho certeza, vou conferir").
- Não use hipérbole. ("sempre", "nunca", "interminavelmente", "nenhum").
- Não seja sarcástico.
- Não force a barra. Se _emojis_, _gifs_ ou piadinhas não fazem o estilo, não tente forçar. Caso contrário, use-os com bom senso.
- Se a discussão não avançar, converse pessoalmente. Coloque nos _pull requests_ um resumo do que foi conversado e decidido.
- Siga as _guidelines_ existentes. Siga a ordem de importância do mais próximo ao mais geral (equipe -> projeto -> organização).

## Revisando código

- Antes de revisar, entenda porque o código escrito é necessário (_bug, _feature_ ou _refactor_).
- Verifique se o código faz o que foi proposto na descrição do _pull request_.
- Verifique se o _pull request_ possui um _link_ a algum _ticket_ ou _issue_. Verifique também se o código resolve o problema que está no _ticket_ ou _issue_.
- Comente quaisquer problemas/questões que forem encontradas, por mais simples ou bobos que pareçam. Isso incentiva outros desenvolvedores a fazerem o mesmo.
- Comente os pontos que você discorda (ou mesmo os que você concorda fortemente).
- Identifique formas de simplificar o código e ainda assim continuar resolvendo o problema.
- Se as discussões se tornarem muito filosóficas ou acadêmicas, move a discussão para outro lugar (talvez uma sexta-feira em um bar). Nesse meio tempo, cheguem a um consenso sobre a solução.
- Ofereça alternativas aos problemas encontrados. ("O que você acha de usar um validador próprio nessa classe?").
- Tente entender a perspectiva do autor.
- Use o bom senso.
- Comente no _pull request_ com um :thumbsup: quando tiver finalizado.

## Tendo seu código revisado

- Certifique-se que seu código está de acordo com as guidelines do projeto (geralmente especificadas no arquivo `CONTRIBUTING.md`), caso não esteja, proponha melhorias nas guidelines, não force o aceite do código caso não esteja de acordo.
- Seja grato pelas sugestões dadas. ("Boa, vou alterar" ou mesmo um simples :thumbsup:).
- Não tome a revisão como pessoal. A revisão é sobre o código, não sobre você.
- Explique porque o código existe. Dê os motivos para as decisões tomadas e discuta as soluções e sugestões.
- Extraia mudanças, refatorações e dívidas técnicas grandes em futuros _tickets_ ou _issues._
- Coloque links para _tickets_ ou _issues_ relacionados.
- Faça _commits_ separadamente se baseando nas soluções obtidas através da revisão. Não faça nenhum _squash_ até que o _pull request_ esteja revisado e pronto para _merge_.
- Tente entender a perspectiva do revisor.
- Responda a todos os comentários.
- Só faça _merge_ após a revisão e após as ferramentas de CI (_TravisCI_, por exemplo) sinalizarem que está tudo ok com o _pull request_.
- Faça _merge_ quando houver confiança sobre o código e o seu impacto no projeto.

## Referências

Recomendamos fortemente a leitura dos artigos de referência.

- [The Art of Code Review: A Dropbox Story](http://www.objc.io/issues/22-scale/dropbox/)
- [Code Reviews: Before You Even Run The Code](http://www.lornajane.net/posts/2015/code-reviews-before-you-even-run-the-code)
- [Effective Code Reviews – 9 Tips from a Converted Skeptic](http://blog.fogcreek.com/effective-code-reviews-9-tips-from-a-converted-skeptic/)
- [Stop More Bugs with our Code Review Checklist](http://blog.fogcreek.com/increase-defect-detection-with-our-code-review-checklist-example/)
- [thoughtbot - Code Review](https://github.com/thoughtbot/guides/blob/master/code-review/README.md)
