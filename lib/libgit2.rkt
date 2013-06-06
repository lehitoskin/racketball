; libgit2.rkt
#lang racket

(require ffi/unsafe ffi/unsafe/define)

(define libgit2 (ffi-lib "libgit2_racket.so"))

(define git-clone
  (λ (url path)
    ((get-ffi-obj "racket_git_clone" libgit2 (_fun _string _string -> _int))
     url path)))

;(define-ffi-definer define-git (ffi-lib "libgit2_racket.so"))

;(define-git git-clone (_fun _string _string -> _int))