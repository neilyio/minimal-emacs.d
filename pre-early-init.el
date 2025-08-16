;;; pre-early-init.el --- User overrides (Elpaca switch) -*- no-byte-compile: t; lexical-binding: t; -*-

;; Disable minimal-emacs.d's automatic package.el initialization/refresh,
;; since Elpaca will manage packages instead.
(setq minimal-emacs-package-initialize-and-refresh nil)

;; Optional: uncomment during development to get backtraces on init errors.
;; (setq debug-on-error t)

(setq debug-on-error t)

;;; Reducing clutter in ~/.emacs.d by redirecting files to ~/.emacs.d/var/
(setq user-emacs-directory (expand-file-name "var/" minimal-emacs-user-directory))
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))

(setq minimal-emacs-optimize-file-name-handler-alist nil)

;; Set shell name for emulated terminals.
(setq shell-file-name "/opt/homebrew/bin/fish")

;; Up limit to resolve "Selection too long to send to terminal" error
;; when running in terminal vterm mode.
(setq xterm-max-cut-length 1000000)
