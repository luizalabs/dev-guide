### Python: guia de estilo

Ao desenvolver em Python, siga o [PEP8](https://www.python.org/dev/peps/pep-0008/).  

Procure também seguir o Style Guide do framework que você utiliza. Ex:

* [Django Style Guide](https://docs.djangoproject.com/en/dev/internals/contributing/writing-code/coding-style/)

Algumas ferramentas podem te ajudar a verificar se seu projeto segue o PEP8:

* [PyCodeStyle](https://github.com/PyCQA/pycodestyle)
* [Flake8](https://flake8.readthedocs.org/en/latest/)

#### Ordenação de _imports_

Use a ferramenta [isort](https://github.com/timothycrosley/isort) para manter todos os _imports_ ordenados seguindo um padrão.

Sugestão de configuração para arquivo `setup.cfg`:

```
[isort]
known_first_party=your_project_name
atomic=true
line_length=79
multi_line_output=3
skip=migrations
use_parentheses=true
```

Para significado e lista de todas as configurações possíveis, consulte a [documentação](https://github.com/timothycrosley/isort/wiki/isort-Settings).
