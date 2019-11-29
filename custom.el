(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("50ff65ab3c92ce4758cc6cd10ebb3d6150a0e2da15b751d7fbee3d68bba35a94" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default)))
 '(evil-collection-setup-minibuffer t)
 '(indent-tabs-mode t)
 '(notmuch-archive-tags (quote ("-inbox" "+archived")))
 '(notmuch-saved-searches
   (quote
    ((:name "mailbox" :query "folder:mailbox/INBOX")
     (:name "committance" :query "folder:committance/INBOX" :key "f")
     (:name "All Inboxes" :query "tag:inbox" :key "i")
     (:name "unred" :query "tag:unred" :key "u")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a"))))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (markdown-mode+ markdown-preview-mode flymd jinja2-mode ini-mode ansible cobol-mode org-super-agenda ox-pandoc calfw-org calfw org-caldav evil-mu4e counsel-notmuch highlight-indent-guides go-mode dracula-theme doom-themes bug-hunter org-jira dokuwiki ivy-yasnippet vimrc-mode yaml-tomato yaml-mode logview ssh-config-mode config-general-mode yasnippet-snippets yasnippet-classic-snippets xml-rpc which-key use-package twilight-theme twilight-anti-bright-theme spaceline snazzy-theme ox-wk org-pdfview org-bullets mediawiki lsp-ui lsp-java lenlen-theme latex-preview-pane ivy-hydra gruvbox-theme graphviz-dot-mode go-eldoc git-gutter general fzf format-all flycheck flx evil-org evil-magit evil-leader evil-commentary evil-collection dokuwiki-mode diff-hl dashboard cycle-themes counsel-tramp counsel-projectile company-quickhelp company-lsp company-go beacon auctex apache-mode ample-theme)))
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
