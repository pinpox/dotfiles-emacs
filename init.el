;;; init.el ---  Initialization file for Emacs
;;; Commentary:
;;  Emacs Startup File --- initialization for Emacs
;;; Code:

(require 'package)
(setq package-archives '(("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

;;Inhibit custom littering my init file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

 ;; (load "~/.emacs.d/lisp/test.el")
 ;;; Emacs Load Path
;; (setq load-path (cons "~/.emacs.d/lisp" load-path))
 ;; (load-directory "~/.emacs.d/lisp/")
;; (let ((default-directory  "~/.emacs.d/lisp/"))

(add-to-list 'load-path (concat user-emacs-directory "lisp"))

(require 'custom-functions)
;;   (normal-top-level-add-subdirs-to-load-path))

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))

;;; init.el ends here
