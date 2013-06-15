; libgit2.rkt
#lang racket
(require ffi/unsafe
	 ffi/unsafe/define)

; using the libgit2 library
(define-ffi-definer define-git (ffi-lib "libgit2_racket.so"))

; function definitions
(define-git racket_git_clone (_fun _string _string -> _int))
(define-git racket_git_branch_create (_fun _string _int -> _int))
(define-git racket_git_repository_open (_fun _string -> _int))

; variable definitions
(define external-repo "https://github.com/lehitoskin/racketball.git")
(define local-repo "/tmp/rball/")
(define git-repo (string-append local-repo ".git"))

; procedure examples
(racket_git_clone external-repo local-repo)

(racket_git_repository_open git-repo)

;(racket_git_branch_create "new-dev" 0)
