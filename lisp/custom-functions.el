;;; custom-functions.el --- Stuff I want to try out


;;; Commentary:
;;
;;; Code:
   (defun multiply-by-seven (number)
       "Multiply NUMBER by seven."
       (* 7 number))


         ;; Ever open a file in the wrong window?
         (defun rotate-windows ()
           "Rotate your windows"
           (interactive)
           (cond ((not (> (count-windows)1))
                  (message "You can't rotate a single window!"))
                 (t
                  (setq i 1)
                  (setq numWindows (count-windows))
                  (while  (< i numWindows)
                    (let* (
                           (w1 (elt (window-list) i))
                           (w2 (elt (window-list) (+ (% i numWindows) 1)))

                           (b1 (window-buffer w1))
                           (b2 (window-buffer w2))

                           (s1 (window-start w1))
                           (s2 (window-start w2))
                           )
                      (set-window-buffer w1  b2)
                      (set-window-buffer w2 b1)
                      (set-window-start w1 s2)
                      (set-window-start w2 s1)
                      (setq i (1+ i)))))))

         ;; This snippet flips a two-window frame, so that left is right, or up is down. It's sanity preserving if you've got a sliver of OCD.

         ;; Annoyed when Emacs opens the window below instead at the side?
         ;; This snippet toggles between horizontal and vertical layout of two windows.
         ;; (defun toggle-window-split ()
         ;;   (interactive)
         ;;   (if (= (count-windows) 2)
         ;;       (let* ((this-win-buffer (window-buffer))
         ;;              (next-win-buffer (window-buffer (next-window)))
         ;;              (this-win-edges (window-edges (selected-window)))
         ;;              (next-win-edges (window-edges (next-window)))
         ;;              (this-win-2nd (not (and (<= (car this-win-edges)
         ;;                                          (car next-win-edges))
         ;;                                      (<= (cadr this-win-edges)
         ;;                                          (cadr next-win-edges)))))
         ;;              (splitter
         ;;               (if (= (car this-win-edges)
         ;;                      (car (window-edges (next-window))))
         ;;                   'split-window-horizontally
         ;;                 'split-window-vertically)))
         ;;         (delete-other-windows)
         ;;         (let ((first-win (selected-window)))
         ;;           (funcall splitter)
         ;;           (if this-win-2nd (other-window 1))
         ;;           (set-window-buffer (selected-window) this-win-buffer)
         ;;           (set-window-buffer (next-window) next-win-buffer)
         ;;           (select-window first-win)
         ;;           (if this-win-2nd (other-window 1))))))





         ;; (defun cleanup-buffer-safe ()
         ;;   "Perform a bunch of safe operations on the whitespace content of a buffer.
         ;; Does not indent buffer, because it is used for a before-save-hook, and that
         ;; might be bad."
         ;;   (interactive)
         ;;   (untabify (point-min) (point-max))
         ;;   (delete-trailing-whitespace)
         ;;   (set-buffer-file-coding-system 'utf-8))

         ;; ;; Various superfluous white-space. Just say no.
         ;; (add-hook 'before-save-hook 'cleanup-buffer-safe)

         ;; (defun cleanup-buffer ()
         ;;   "Perform a bunch of operations on the whitespace content of a buffer.
         ;; Including indent-buffer, which should not be called automatically on save."
         ;;   (interactive)
         ;;   (cleanup-buffer-safe)
         ;;   (indent-region (point-min) (point-max)))

         ;; (global-set-key (kbd "C-c n") 'cleanup-buffer)

         ;; I use these two literally all the time. The first one removes trailing whitespace and replaces all tabs with spaces before save.

         ;; The last one I've got on a key - it also indents the entire buffer.





         ;; C-d on an empty line in the shell terminates the process.

         ;; (defun comint-delchar-or-eof-or-kill-buffer (arg)
         ;;   (interactive "p")
         ;;   (if (null (get-buffer-process (current-buffer)))
         ;;       (kill-buffer)
         ;;     (comint-delchar-or-maybe-eof arg)))

         ;; (add-hook 'shell-mode-hook
         ;;           (lambda ()
         ;;             (define-key shell-mode-map
         ;;               (kbd "C-d") 'comint-delchar-or-eof-or-kill-buffer)))

         ;; With this snippet, another press of C-d will kill the buffer.

         ;; It's pretty nice, since you then just tap C-d twice to get rid of the shell and go on about your merry way.


         ;; ;; Auto refresh buffers
         ;; (global-auto-revert-mode 1)

         ;; ;; Also auto refresh dired, but be quiet about it
         ;; (setq global-auto-revert-non-file-buffers t)
         ;; (setq auto-revert-verbose nil)

         ;; Auto revert mode looks for changes to files, and updates them for you.

         ;; With these settings, dired buffers are also updated. The last
         ;; setting makes sure that you're not alerted every time this happens.
         ;; Which is every time you save something.



;; (setq company-backends
;;       '((company-files          ; files & directory
;;          company-keywords       ; keywords
;;          company-capf
;;          company-yasnippet
;;          )
;;         (company-abbrev company-dabbrev)
;;         ))

;; (add-hook 'python-mode-hook
;;           (lambda ()
;;             (add-to-list (make-local-variable 'company-backends)
;;                          'company-anaconda)))
;; (dolist (hook '(js-mode-hook
;;                 js2-mode-hook
;;                 js3-mode-hook
;;                 inferior-js-mode-hook
;;                 ))
;;   (add-hook hook
;;             (lambda ()
;;               (tern-mode t)

;;               (add-to-list (make-local-variable 'company-backends)
;;                            'company-tern)
;;               )))

;; ;;;_. company-mode support like auto-complete in web-mode

;; ;; Enable CSS completion between <style>...</style>
;; (defadvice company-css (before web-mode-set-up-ac-sources activate)
;;   "Set CSS completion based on current language before running `company-css'."
;;   (if (equal major-mode 'web-mode)
;;       (let ((web-mode-cur-language (web-mode-language-at-pos)))
;;         (if (string= web-mode-cur-language "css")
;;             (unless css-mode (css-mode))))))

;; ;; Enable JavaScript completion between <script>...</script> etc.
;; (defadvice company-tern (before web-mode-set-up-ac-sources activate)
;;   "Set `tern-mode' based on current language before running `company-tern'."
;;   (if (equal major-mode 'web-mode)
;;       (let ((web-mode-cur-language (web-mode-language-at-pos)))
;;         (if (or (string= web-mode-cur-language "javascript")
;;                (string= web-mode-cur-language "jsx"))
;;             (unless tern-mode (tern-mode))
;;           ;; (if tern-mode (tern-mode))
;;           ))))

(provide 'custom-functions)
;;; custom-functions.el ends here
