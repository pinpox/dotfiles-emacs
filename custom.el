(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default)))
 '(evil-collection-setup-minibuffer t)
 '(notmuch-archive-tags (quote ("-inbox" "+archived")))
 '(notmuch-saved-searches
   (quote
    ((:name "mailbox" :query "folder:mailbox/INBOX and tag:inbox")
     (:name "committance" :query "folder:committance/INBOX and tag:inbox" :key "f")
     (:name "All Inboxes" :query "tag:inbox" :key "i")
     (:name "unred" :query "tag:unred" :key "u")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a"))))
 '(package-selected-packages
   (quote
    (quelpa-use-package org-caldav gnus-alias counsel-notmuch highlight-indent-guides go-mode dracula-theme doom-themes bug-hunter org-jira dokuwiki ivy-yasnippet vimrc-mode yaml-tomato yaml-mode logview ssh-config-mode config-general-mode yasnippet-snippets yasnippet-classic-snippets xml-rpc which-key use-package twilight-theme twilight-anti-bright-theme spaceline snazzy-theme ox-wk org-pdfview org-bullets mediawiki lsp-ui lsp-java lenlen-theme latex-preview-pane ivy-hydra gruvbox-theme graphviz-dot-mode go-eldoc git-gutter general fzf format-all flycheck flx evil-org evil-magit evil-leader evil-commentary evil-collection dokuwiki-mode diff-hl dashboard cycle-themes counsel-tramp counsel-projectile company-quickhelp company-lsp company-go beacon auctex apache-mode ample-theme)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-service 25)
 '(tramp-default-method "ssh"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-current-match ((t (:background "saddle brown" :foreground "#ffffc8" :underline nil :weight bold)))))
