;; Packages setup.
(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; Define installed packages
(defvar my-packages
  '(better-defaults       ; emacs with more sensible defaults
    flycheck              ; real-time syntax checking
    py-autopep8           ; pep8 formatting compliance
    blacken               ; auto-format using blacken formatter
    projectile
    auto-complete
    epc
    jedi
    pyimpsort
    ))

;; Install packages that are not installed
(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      my-packages)

;; General emacs setup
(setq make-backup-files nil)      ; stop creating backup~ files
(setq auto-save-default nil)      ; stop creating #autosave# files
(setq inhibit-startup-message t)  ; hide the startup message
(global-linum-mode t)             ; enable line numbers globally
(setq linum-format "%d  ")        ; set line number format
(setq column-number-mode t)       ; enable column number mode
(set-default 'truncate-lines t)   ; enable line truncation
(menu-bar-mode -1)                ; disable menu bar

;; js2-jsx-mode setup
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

;; Flycheck
(global-flycheck-mode)
(setq flycheck-python-pylint-executable "python3")
(setq flycheck-python-flake8-executable "python3")

;; Python setup
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'blacken-mode)
(setq jedi:complete-on-dot t)

;; Pyimsort setup
(require 'pyimpsort)
(eval-after-load 'python
  '(define-key python-mode-map "\C-c\C-u" #'pyimpsort-buffer))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (pyimpsort py-autopep8 projectile material-theme json-mode js2-mode jedi flycheck elpy company-jedi company-anaconda blacken better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
