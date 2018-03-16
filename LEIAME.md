# simple-java-maven-app

Esta é uma aplicação de console Java simples com build via Maven.

Utilizamos em nossos treinamentos sobre onboarding de projetos com containers.

Para construir e executar:

```sh
mvn clean package
mvn exec:java
```

## Objetivos

Este exemplo apenas demonstra como um projeto pode ter provisionamento automático de suas ferramentas de trabalho por containers, mas ainda assim se valer de recursos locais para ajudar na produtividade. 

## Pontos de atenção:

* Script 'mvn.sh' que utiliza o Maven em container, mas montando pastas locais como cache (pasta ".m2" local);
* Exemplo de Dockerfile com multi-stage build (imagem final sem Maven);
* É possível trabalhar sem sequer ter Java local instalado;
* A versão de Java necessária está descrita pelo projeto;
* O build via Dockerfile despreza qualquer cache .m2 local.
