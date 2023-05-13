;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.
;; See `package-archive-priorities` and `package-pinned-packages`.
;; Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" .
;;              "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("f74e8d46790f3e07fbb4a2c5dafe2ade0d8f5abc9c203cd1c29c7d5110a85230"
     "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908"
     "2dc03dfb67fbcb7d9c487522c29b7582da20766c9998aaad5e5b63b5c27eec3f"
     "ecc077ef834d36aa9839ec7997aad035f4586df7271dd492ec75a3b71f0559b3"
     default))
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(spaceline all-the-icons-dired
	       org-timeline flatland-theme
	       zenburn-theme npm-mode web-beautify
	       anaconda-mode elpy neotree origami
	       lsp-sourcekit lsp-ui rainbow-identifiers
	       prettify-math mode-icons
	       emojify helm-swoop project-explorer
	       page-break-lines projectile all-the-icons
	       borland-blue-theme auto-package-update
	       auto-correct ## svg chess python minimap)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; DASHBOARD SETTINGS *****************************************
(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :custom
  (dashboard-startup-banner "~/banner.txt")
  (dashboard-center-content t)
  (dashboard-banner-logo-title "Take Dead Aim")
  (dashboard-icon-type 'all-the-icons)
  (dashboard-set-navigator t)
  (dashboard-set-footer nil)
  (dashboard-set-heading-icons nil)
  (dashboard-set-file-icons t)
  (dashboard-items '((recents . 5)
		     (agenda . 5)
                     (projects . 5)))
  :config
  (dashboard-setup-startup-hook))


;; UI Settings ************************************************
(tool-bar-mode -1) ; turn off icons
(set-frame-parameter nil 'alpha '(99)) ;; turn on transparency
 (add-to-list 'default-frame-alist '(alpha . (99)))
 (set-frame-size (selected-frame) 80 40)
;; Format: "(icon title help action face prefix suffix)"
(setq dashboard-navigator-buttons
      `(;; line1
        ((,(all-the-icons-octicon "mark-github" :height 1.0 :v-adjust 0.0)
         "Repos"
         "GitHub Repos"
         (lambda (&rest _) (browse-url "https://github.com/VisibleARC")))
         (,(all-the-icons-octicon "organization" :height 1.0 :v-adjust 0.0)
          "Jira"
          ""
          (lambda (&rest _) (browse-url "https://start.atlassian.com/")))
	 (,(all-the-icons-octicon "mail-read" :height 1.0 :v-adjust 0.0)
          "Gmail"
          ""
          (lambda (&rest _) (browse-url
			     "https://mail.google.com/mail/u/?authuser=aaron@visiblearc.com"))))))
