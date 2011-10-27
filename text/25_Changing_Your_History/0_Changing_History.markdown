## Modificando seu Histórico ##

Existem diversas maneiras de reescrever o histórico de um repositório. Todos eles
podem causar problemas em commits que já tenham sido enviados para um repositório
remoto. Se você reescrever o histórico do repositório, qualquer pessoa que clonou
o repositório terá que manualmente corrigir o problema em sua cópia, veja a seção "RECUPERANDO DE UM REBASE REMOTO"
em linkgit:git-rebase[1].

Um método simples é usar "git commit --amend" para modificar o último commit.
Ele é útil para corrigir uma mensagem do commit, ou fazer uma simples modificação
antes de enviá-lo.

Rebase interativo é uma boa maneira de modificar múltiplos commits. Commits podem
ser combinados por "squashing", alterando por edição ou removendo completamente.

linkgit:git-filter-branch[1] é uma boa maneira de editar commits em massa. Ele é útil
quando um componente inteiro precisa ser removido de um projeto. Por exemplo removendo
um sub-sistema que é licenciado sobre uma licença open-source incompatível. Ou ele
pode ser usado para alterar o autor do commit sem alterar o código.
