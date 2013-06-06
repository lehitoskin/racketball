#lang racket

(require ffi/unsafe)

(define libgit2 (ffi-lib "libgit2_racket.so"))

(define (git-clone url path)
  ((get-ffi-obj "racket_git_clone" libgit2 (_fun _string _string -> _int))
   url path))
