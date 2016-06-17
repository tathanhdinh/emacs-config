;;; packages.el --- tathanhdinh layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: bigraph <bigraph@RobinMilner>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `tathanhdinh-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `tathanhdinh/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `tathanhdinh/pre-init-PACKAGE' and/or
;;   `tathanhdinh/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst tathanhdinh-packages
  '(
    nasm-mode
    boogie-friends
    graphviz-dot-mode
    protobuf-mode
    racket-mode
    llvm-mode
    julia-mode
    ebib
    evil-vimish-fold
    (prolog :location local)
    )
  "The list of Lisp packages required by the tathanhdinh layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")
(defun tathanhdinh/init-nasm-mode ()
  (use-package nasm-mode)
  )

(defun tathanhdinh/init-boogie-friends ()
  (use-package boogie-friends)
  )

(defun tathanhdinh/init-graphviz-dot-mode ()
  (use-package graphviz-dot-mode)
  )

(defun tathanhdinh/init-protobuf-mode ()
  (use-package protobuf-mode)
  )

(defun tathanhdinh/init-llvm-mode ()
  (use-package llvm-mode)
  )

(defun tathanhdinh/init-julia-mode ()
  (use-package julia-mode)
  )

(defun tathanhdinh/init-prolog ()
  (use-package prolog
    :init
    (setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
                                    ("\\.m$" . mercury-mode))
                                  auto-mode-alist))
    )
  )

(defun tathanhdinh/init-racket-mode ()
  (use-package racket-mode)
  )

(defun tathanhdinh/init-ebib ()
  (use-package ebib)
  )

(defun tathanhdinh/init-evil-vimish-fold ()
  (use-package evil-vimish-fold)
  )


;;; packages.el ends here
