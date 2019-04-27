(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0e8bac1e87493f6954faf5a62e1356ec9365bd5c33398af3e83cfdf662ad955f" "86704574d397606ee1433af037c46611fb0a2787e8b6fd1d6c96361575be72d2" default)))
 '(package-selected-packages
   (quote
    (flycheck counsel org-bullets snazzy-theme ido-describe-bindings ido-grid-mode yasnippet-snippets yasnippet xresources-theme which-key ivy evil)))
 '(size-indication-mode t))

(load-theme 'snazzy)
