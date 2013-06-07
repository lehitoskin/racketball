#lang racket

(require ffi/unsafe)
(require ffi/unsafe/define)

(define-ffi-definer define-git (ffi-lib "libgit2_racket.so"))

(define-git racket_git_clone (_fun _string _string -> _int))
