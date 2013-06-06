#include <git2.h>

int racket_git_clone(char *url, char *path) {
  git_repository *out = NULL;

	return git_clone(&out, url, path, NULL);
}
