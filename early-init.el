;;; earyl-init.el -*- lexical-binding: t; -*-

(setq gc-cons-threshold most-positive-fixnum)

(setq-default native-comp-speed 3)

(setq package-enable-at-startup nil)

(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq frame-resize-pixelwise t)

(setq inhibit-startup-buffer-menu t)
