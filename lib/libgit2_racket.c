#include <git2.h>

int racket_git_clone(char *url, char *path) {
	git_repository *out = NULL;

	return git_clone(&out, url, path, NULL);
}

int racket_git_branch_create(char *branch_name, int force) {
	git_reference *out = NULL;
	git_repository *repo = NULL;
	const git_commit *target = NULL;

	return git_branch_create(&out, repo, branch_name, target, force);
}

// repo_name must end in .git
int racket_git_repository_open(char *repo_name) {
	git_repository *repo;

	return git_repository_open(&repo, repo_name);
}

int main() {
}
