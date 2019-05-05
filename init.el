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

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
(setq tramp-default-method "ssh")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-collection-setup-minibuffer t)
 '(package-selected-packages
   (quote
    (dokuwiki org-pdfview pdf-tools latex-preview-pane format-all evil-collection yasnippet-snippets yasnippet-classic-snippets which-key use-package twilight-theme twilight-anti-bright-theme spaceline snazzy-theme projectile org-bullets magit lsp-ui lsp-java lenlen-theme ivy-hydra gruvbox-theme graphviz-dot-mode go-eldoc git-gutter general fzf flycheck evil-org evil-leader evil-commentary diff-hl dashboard cycle-themes counsel-tramp company-quickhelp company-lsp company-go ample-theme)))
 '(shell-escape-mode "-shell-escape"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))
(add-hook 'org-mode-hook 'turn-on-auto-fill)
