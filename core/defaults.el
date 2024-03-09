;;; defaults.el -- default configuration.

;; set default directory.
(setq default-directory "~")

;; set home dir.
(cd (expand-file-name "~/"))

;; utf-8.
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; UI-specific.
(setq column-number-mode t)
(setq ring-bell-function (lambda()))
(setq use-dialog-box nil)
(setq make-pointer-invisible t)
(setq use-short-answers t)
(setq-default compilation-scroll-output t)
(global-hl-line-mode t)

;; keep auto-save files in /tmp.
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; files to trash when deleting.
(setq delete-by-moving-to-trash t)

;; completion ignores case.
(setq completion-ignore-case t
      read-file-name-completion-ignore-case t)

(provide 'defaults)
