;;; init.el

(add-to-list 'load-path (locate-user-emacs-file "core"))
(add-to-list 'load-path (locate-user-emacs-file "modules"))

(require 'defaults)
(require 'defuns)

;; setup straight.
(setq-default straight-cache-autoloads t)
(setq-default straight-check-for-modifications nil)
(setq-default straight-repository-branch "develop")

(defvar bootstrap-version)
(let ((bootstrap-file
       (locate-user-emacs-file "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq-default straight-use-package-by-default t)

(use-package diminish)

;; load modules.
(defvar my/modules
  '(appearence
    notes
    writing))

(dolist (module my/modules) (require module))
