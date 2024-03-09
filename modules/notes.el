;;; notes.el --- it`s roam.

(setq org-directory "~/orgfiles/")

;; better-looking org files.
(use-package org-modern
  :hook org-mode)

(use-package org
  :straight (:type built-in)
  :hook (org-mode . org-indent-mode))

(use-package org-roam
  :hook
  (org-roam-backlinks . turn-on-visual-line-mode)
  :bind
  (("C-c n f" . #'org-roam-node-find)
   ("C-c n g" . #'org-roam-graph-show)
   ("C-c n i" . #'org-roam-insert)
   ("C-c n I" . #'org-roam-insert-immediate)
   ("C-c n b" . #'org-roam-switch-to-buffer))
  :custom
  (org-roam-buffer-window-parameters '((no-delete-other-windows . t)))
  (org-roam-directory "~/orgfiles/roam/")
  (org-roam-capture-templates
   '(("d" "default" plain "%?"
      :target (file+head "${slug}.org"
                         "#+title: ${title}\n")
      :unnarrowed t))))

(provide 'notes)
