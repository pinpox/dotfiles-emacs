;;; init.el ---  Initialization file for Emacs
;;; Commentary:
;;  Emacs Startup File --- initialization for Emacs
;;; Code:
(package-initialize)
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    (quote
;;     ("b583823b9ee1573074e7cbfd63623fe844030d911e9279a7c8a5d16de7df0ed0" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "0961d780bd14561c505986166d167606239af3e2c3117265c9377e9b8204bf96" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "7220c44ef252ec651491125f1d95ad555fdfdc88f872d3552766862d63454582" "50ff65ab3c92ce4758cc6cd10ebb3d6150a0e2da15b751d7fbee3d68bba35a94" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "c9f102cf31165896631747fd20a0ca0b9c64ecae019ce5c2786713a5b7d6315e" "ef403aa0588ca64e05269a7a5df03a5259a00303ef6dfbd2519a9b81e4bce95c" "7559ac0083d1f08a46f65920303f970898a3d80f05905d01e81d49bb4c7f9e39" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "bc75dfb513af404a26260b3420d1f3e4131df752c19ab2984a7c85def9a2917e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "0e8bac1e87493f6954faf5a62e1356ec9365bd5c33398af3e83cfdf662ad955f" "86704574d397606ee1433af037c46611fb0a2787e8b6fd1d6c96361575be72d2" default)))
;;  '(package-selected-packages
;;    (quote
;;     (counsel-projectile gruvbox-theme org-caldav dashboard cycle-themes lenlen-theme twilight-anti-bright-theme twilight-theme ample-theme counsel-tramp yasnippet-classic-snippets fzf diff-hl spaceline-all-the-icons spaceline magit flycheck counsel org-bullets snazzy-theme ido-describe-bindings ido-grid-mode yasnippet-snippets yasnippet xresources-theme which-key ivy evil)))
;;  '(size-indication-mode t))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

(setq tramp-default-method "ssh")


(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" default)))
 '(package-selected-packages
   (quote
    (projectile magit yasnippet-snippets yasnippet-classic-snippets which-key use-package twilight-theme twilight-anti-bright-theme spaceline snazzy-theme org-bullets lsp-ui lsp-java lenlen-theme ivy-hydra gruvbox-theme graphviz-dot-mode go-eldoc git-gutter general fzf flycheck evil-org evil-leader evil-commentary diff-hl dashboard cycle-themes counsel-tramp company-quickhelp company-lsp company-go ample-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
