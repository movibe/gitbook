## Modifying your History ##

There are several ways to re-write the history of a repository. All of
these can cause problems for commits that have already been pushed to a
remote repository. If you do re-write a repositories history anyone else
who has cloned the repository will need manually correct the problem on
their clone see the "RECOVERING FROM UPSTREAM REBASE" section in
linkgit:git-rebase[1].

The simplest method is to use "git commit --amend" to modify the last commit.
This is useful to correct a commit message, or make a simple update to a
commit before pushing.

Interactive rebasing is a good way to modify multiple commits. Commits can
be combined by squashing, changed by editing or removed entirely.

linkgit:git-filter-branch[1] is a good way to edit commits en masse. This is
useful where a whole component needs to be removed from a project. For
example removing a subsystem which is licensed under an incompatible
open-source licence. Or it can be used to alter the commit authorship without
changing the code.

