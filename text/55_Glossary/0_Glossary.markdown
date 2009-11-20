## Glossário ##

Aqui nós temos o significado de alguns termos usados dentro do contexto do Git.  
Esses termos foram retirados do
[Git Glossary](http://www.kernel.org/pub/software/scm/git/docs/gitglossary.html).  


_alternate object database_

> Via the alternates mechanism, a repository
can inherit part of its object database
from another object database, which is called "alternate". 

_bare repository_

> Um repositório bare é normalmente um nome apropriado para um diretório com um 
sufixo `.git` que não possui um cópia (checkout) local de qualquer arquivo sobre 
o controle de revisão. Então, todos os arquivos administrativos e de controle do 
`git` que normalmente estariam no sub-diretório escondido `.git` estão presentes
diretamente no diretório `repository.git` por exemplo, e nenhum outro arquivo
presente ou checkout. Normalmente publicadores de repositórios públicos tornam 
diretórios bare disponíveis.

_objeto blob_

> Objeto sem tipo, o conteúdo de um arquivo.

_branch_

> Um "branch" é uma linha ativa de desenvolvimento. O commit mais recente sobre
um branch é referenciado como o ponto mais alto naquele branch. Esse ponto é
refenciado por um HEAD, no qual é movido para cima quando algum desenvolvimento
adicional é feito sobre ele. Um simples repositório do git pode conter um  número
arbitrário de branches, mas sua arvóre de trabalho é associada somente a um deles
(o branch "atual" ou "corrente"), e o HEAD aponta para aquele branch.

_cache_

> Termo obsoleto para: index.

_chain_
    
> Uma lista de objetos, onde cada objeto em uma lista contém a referência para 
o seu sucessor (por exemplo, o sucessor de um commit poderia ser um dos seus
pais).

_changeset_

> Forma como BitKeeper/cvsps chama um "commit". Uma vez que o git não armazena 
mudanças, mas estados, realmente não faz sentido usar o termo "changesets" com 
o git.

_checkout_

> A ação de atualizar todo ou parte da
árvore de trabalho com um objeto tree
ou blob do banco de dados de objetos,
e atualizar o index e o HEAD se
a árvore de trabalho inteira tem sido apontada
para um novo branch.

_cherry-picking_

> In SCM jargon, "cherry pick" means to choose a subset of
changes out of a series of changes (typically commits) and record them
as a new series of changes on top of a different codebase. In GIT, this is
performed by the "git cherry-pick" command to extract the change introduced
by an existing commit and to record it based on the tip
of the current branch as a new commit.

_clean_

> Um diretório de trabalho está limpo, se ele corresponde a revisão referenciada
pelo head atual. Veja também "dirty". 

_commit_

> Como um substantivo: Um simples ponto no histórico do git; o histórico completo 
do projeto é representado como um conjunto de commits inter-relacionados. A 
palavra "commit" é frequentemente usada pelo git nos mesmos locais onde outros
sistemas de controle de revisão usam as palavras "revisão" or "versão". Também
usado como atalho para um objeto tipo commit.

> Como um verbo: A ação de armazenar um novo "ponto" do estado do projeto no 
histórico do git, através da criação de um novo commit representando o estado 
atual do index e avançando o HEAD para o ponto do novo commit.

_objeto commit_

> Um objeto que contém a informação sobre uma
revisão particular, como os pais, quem criou o commit ('committer'),
autor, data  e o objeto tree que corresponde
ao topo do diretório da revisão
armazenada.

_core git_

> Fundamental data structures and utilities of git. Exposes only limited
source code management tools.

_DAG_

> Directed acyclic graph. The commit objects form a
directed acyclic graph, because they have parents (directed), and the
graph of commit objects is acyclic (there is no chain
which begins and ends with the same object).

_dangling object_

> An unreachable object which is not
reachable even from other unreachable objects; a
dangling object has no references to it from any
reference or object in the repository.

_detached HEAD_

> Normally the HEAD stores the name of a
branch.  However, git also allows you to check out
an arbitrary commit that isn't necessarily the tip of any
particular branch.  In this case HEAD is said to be "detached".

_dircache_

> You are *waaaaay* behind. See index.

_directory_

> A lista você consegue com um "ls" :-)

_dirty_

> Um diretório de trabalho é dito estar "sujo" se ele contém modificações que 
não tem sido commitados no branch atual.

_ent_

> Favorite synonym to "tree-ish" by some total geeks. See
`http://en.wikipedia.org/wiki/Ent_(Middle-earth)` for an in-depth
explanation. Avoid this term, not to confuse people.

_evil merge_

> Um merge "infernal" é um merge que introduz modificações que não aparecem em
qualquer pai.

_fast forward_

> A fast-forward is a special type of merge where you have a
revision and you are "merging" another
branch's changes that happen to be a descendant of what
you have. In such these cases, you do not make a new merge
commit but instead just update to his
revision. This will happen frequently on a
tracking branch of a remote
repository.

_fetch_

> Realizar um fetch significa conseguir o head do branch do repositório remoto,
procurar quais objetos estão faltando no banco de dados do repositório local, e
recupera-los. Veja também: linkgit:git-fetch[1].

_file system_

> Linus Torvalds originalmente projetou o git para ser um sistema de arquivos no 
espaço do usuário, exemplo da estrutura que mantém arquivos e diretórios. Que 
garante a eficiência e velocidade do git.

_git archive_

> Sinônimo para repositório (para pessoas arcaicas).

_grafts_

> Grafts enables two otherwise different lines of development to be joined
together by recording fake ancestry information for commits. This way
you can make git pretend the set of parents a commit has
is different from what was recorded when the commit was
created. Configured via the `.git/info/grafts` file.

_hash_

> No contexto do Git, é sinônimo para o nome do objeto.

_head_

> Uma referência nomeada para o commit no topo do branch. Heads são armazenados
em `$GIT_DIR/refs/heads/`, exceto quando está usando `refs` comprimidos. (Veja 
linkgit:git-pack-refs[1].)

_HEAD_

> O branch atual. Em mais detalhes: Sua árvore de trabalho é normalmente
derivado do estado da árvore referida pelo HEAD. HEAD é uma referência para um
dos heads em seu repositório, exceto quando está usando um HEAD desacoplado, que 
nesse caso ele pode referenciar um commit arbitrário.

_head ref_

> Um sinônimo para head.

_hook_

> During the normal execution of several git commands, call-outs are made
to optional scripts that allow a developer to add functionality or
checking. Typically, the hooks allow for a command to be pre-verified
and potentially aborted, and allow for a post-notification after the
operation is done. The hook scripts are found in the
`$GIT_DIR/hooks/` directory, and are enabled by simply
removing the `.sample` suffix from the filename. In earlier versions
of git you had to make them executable.

_index_

> Uma coleção de arquivos com informações de estado, no qual os conteúdos são
armazenados como objetos. O index é uma versão armazenada de sua árvore de trabalho.
Verdade seja dita, ele também pode conter uma segunda, e até mesmo uma terceira
versão da árvore de trabalho, que são usadas
quando realizam algum merge.

_index entry_

> The information regarding a particular file, stored in the
index. An index entry can be unmerged, if a
merge was started, but not yet finished (i.e. if
the index contains multiple versions of that file).

_master_

> O branch padrão de desenvolvimento.
Sempre que você cria um repositório git, 
um branch nomeado de "master" é criado, e se torna o branch ativo.
Na maioria dos casos, ele contém os arquivos de desenvolvimento local,
embora ele seja uma convenção e não seja necessário.

_merge_

> As a verb: To bring the contents of another
branch (possibly from an external
repository) into the current branch.  In the
case where the merged-in branch is from a different repository,
this is done by first fetching the remote branch
and then merging the result into the current branch.  This
combination of fetch and merge operations is called a
pull.  Merging is performed by an automatic process
that identifies changes made since the branches diverged, and
then applies all those changes together.  In cases where changes
conflict, manual intervention may be required to complete the
merge.

> As a noun: unless it is a fast forward, a
successful merge results in the creation of a new commit
representing the result of the merge, and having as
parents the tips of the merged branches.
This commit is referred to as a "merge commit", or sometimes just a
"merge".

_object_

> A unidade de armazenamento no git. Ele é unicamente identificado pelo 
SHA1 de seu conteúdo. Consequentemente, um
objeto não pode ser modificado.

_banco de dados de objetos_

> Armazena um conjunto de "objetos", e um objeto individual é identificado por
seu nome de objeto. Os objetos normalmente 
ficam em `$GIT_DIR/objects/`.

_identificador do objeto_

> Sinônimo para nome de objeto.

_nome do objeto_

> O único identificador de um objeto. O hash do conteúdo de um objeto 
usa o "Secure Hash Algorithm 1" e normalmente 
é representado por uma codificação
de 40 caracteres hexadecimais do hash de um objeto.

_tipo de objeto_

> Um dos identificadores "commit", "tree", "tag" ou "blob" descrevendo o tipo
de um objeto.

_octopus_

> Para realizar um merge com mais de dois branches. Também denota um predador 
inteligente.

_origin_

> The default upstream repository. Most projects have
at least one upstream project which they track. By default
'origin' is used for that purpose. New upstream updates
will be fetched into remote tracking branches named
origin/name-of-upstream-branch, which you can see using
"`git branch -r`".

_pack_

> Um conjunto de objetos no qual foram comprimidos em um arquivo (para
economizar espaço ou transmiti-los com eficiência).

_pack index_

> The list of identifiers, and other information, of the objects in a
pack, to assist in efficiently accessing the contents of a
pack.

_parent_

> A commit object contains a (possibly empty) list
of the logical predecessor(s) in the line of development, i.e. its
parents.

_pickaxe_

> The term pickaxe refers to an option to the diffcore
routines that help select changes that add or delete a given text
string. With the `--pickaxe-all` option, it can be used to view the full
changeset that introduced or removed, say, a
particular line of text. See linkgit:git-diff[1].

_plumbing_

> Cute name for core git.

_porcelain_

> Cute name for programs and program suites depending on
core git, presenting a high level access to
core git. Porcelains expose more of a SCM
interface than the plumbing.

_pull_

> Pulling um branch significa recuperá-lo e realizar um merge nele.
Veja também linkgit:git-pull[1].

_push_

> Pushing a branch means to get the branch's
head ref from a remote repository,
find out if it is a direct ancestor to the branch's local
head ref, and in that case, putting all
objects, which are reachable from the local
head ref, and which are missing from the remote
repository, into the remote
object database, and updating the remote
head ref. If the remote head is not an
ancestor to the local head, the push fails.

_reachable_

> All of the ancestors of a given commit are said to be
"reachable" from that commit. More
generally, one object is reachable from
another if we can reach the one from the other by a chain
that follows tags to whatever they tag,
commits to their parents or trees, and
trees to the trees or blobs
that they contain.

_rebase_

> Para reaplicar uma série de mudanças de um branch para uma diferente base, e 
resetar o `head` desse branch para o resultado.

_ref_

> Uma representação hexadecimal de 40 bytes de um SHA1 ou um nome que 
denota um objeto particular. Esses podem ser armazenados em
`$GIT_DIR/refs/`.

_reflog_

> A reflog shows the local "history" of a ref.  In other words,
it can tell you what the 3rd last revision in _this_ repository
was, and what was the current state in _this_ repository,
yesterday 9:14pm.  See linkgit:git-reflog[1] for details.

_refspec_

> A "refspec" is used by fetch and
push to describe the mapping between remote
ref and local ref. They are combined with a colon in
the format <src>:<dst>, preceded by an optional plus sign, +.
For example: `git fetch $URL
refs/heads/master:refs/heads/origin` means "grab the master
branch head from the $URL and store
it as my origin branch head". And `git push
$URL refs/heads/master:refs/heads/to-upstream` means "publish my
master branch head as to-upstream branch at $URL". See also
linkgit:git-push[1].

_repository_

> Uma coleção de `refs` juntas em um banco de dados de objetos contendo todos os
objetos que são alcançáveis pelo `refs`, possivelmente acompanhado por meta dados
de um ou mais `porcelains`. Um repositório pode compartilhar um banco de dados de
objetos com outros repositórios via mecanismos alternativos.

_resolve_

> A ação de corrigir manualmente uma falha que um merge automático
causou.

_revision_

> Um estado particular dos arquivos e diretórios no qual estão armazenados no
banco de dados de objetos. 
Ele é referenciado por um objeto commit.

_rewind_

> To throw away part of the development, i.e. to assign the
head to an earlier revision.

_SCM_

> Gerenciador de código fonte (ferramenta).

_SHA1_

> Sinônimo para um nome de objeto.

_shallow repository_

> A shallow repository has an incomplete
history some of whose commits have parents cauterized away (in other
words, git is told to pretend that these commits do not have the
parents, even though they are recorded in the commit
object). This is sometimes useful when you are interested only in the
recent history of a project even though the real history recorded in the
upstream is much larger. A shallow repository
is created by giving the `--depth` option to linkgit:git-clone[1], and
its history can be later deepened with linkgit:git-fetch[1].

_symref_

> Symbolic reference: instead of containing the SHA1
id itself, it is of the format 'ref: refs/some/thing' and when
referenced, it recursively dereferences to this reference.
'HEAD' is a prime example of a symref. Symbolic
references are manipulated with the linkgit:git-symbolic-ref[1]
command.

_tag_

> A ref pointing to a tag or
commit object. In contrast to a head,
a tag is not changed by a commit. Tags (not
tag objects) are stored in `$GIT_DIR/refs/tags/`. A
git tag has nothing to do with a Lisp tag (which would be
called an object type in git's context). A
tag is most typically used to mark a particular point in the
commit ancestry chain.

_tag object_

> Um objeto contendo uma referência apontando para outro objeto, que pode conter
uma mensagem como no objeto commit. Ele pode conter também uma assinatura (PGP),
nesse caso ele é chamado de "objeto tag assinado".

_topic branch_

> A regular git branch that is used by a developer to
identify a conceptual line of development. Since branches are very easy
and inexpensive, it is often desirable to have several small branches
that each contain very well defined concepts or small incremental yet
related changes.

_tracking branch_

> A regular git branch that is used to follow changes from
another repository. A tracking
branch should not contain direct modifications or have local commits
made to it. A tracking branch can usually be
identified as the right-hand-side ref in a Pull:
refspec.

_tree_

> Qualquer árvore de trabalho, ou uma árvore de objetos juntas com
objetos blob e tree dependentes (ex.: uma representação armazenada de uma árvore de trabalho).

_objeto tree_

> Um objeto contendo uma lista de nomes de arquivos e seus modos de acesso com
refs para um blob associado e/ou objetos tree.
Uma tree é equivalente a um diretório.

_tree-ish_

> A ref pointing to either a commit object, a tree object, or a tag
object pointing to a tag or commit or tree object.

_unmerged index_

> Um index que contém entradas no qual ainda não foram realizadas num merge.

_objeto inalcançável_

> Um objeto no qual não é atingível a partir de um branch, tag,
ou qualquer outra referência.

_working tree_

> The tree of actual checked out files.  The working tree is
normally equal to the HEAD plus any local changes
that you have made but not yet committed.
>>>>>>> master:text/55_Glossary/0_Glossary.markdown
