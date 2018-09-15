;; don't backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Ctrl-H is BackSpace
(global-set-key "\C-h" 'delete-backward-char)

(load-theme 'wombat t)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; C++ style
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "cc-mode")))
