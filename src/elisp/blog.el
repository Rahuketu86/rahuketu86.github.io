(require 'org)

(setq org-mode-websrc-directory  "C:/rahuketu/programming/static-site/rahuketu86.github.io/src" )
(setq org-mode-publishing-directory  "C:/rahuketu/programming/static-site/rahuketu86.github.io" )

(defvar website-html-preamble
  "
<nav>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="/">Home</a></li>
  <li role="presentation"><a href="#">Profile</a></li>
  <li role="presentation"><a href="#">Messages</a></li>
</ul>
</nav>
")


(defvar website-html-postamble 
  "<div class='footer'>
Copyright 2016 %a (%v HTML).<br>
Last updated %C. <br>
</div>")

(setq org-publish-project-alist
      '(
        ("website" :components ("orgfiles"))
        ("orgfiles"
         :base-directory  ,org-mode-websrc-directory
         :base-extension "org"
         :publishing-directory  ,org-mode-publishing-directory
         :exclude "*/excluded/*" 
         :recursive t
         :publishing-function org-twbs-publish-to-html
         :headline-levels 3
	 :section-numbers nil
	 :html-preamble ,website-html-preamble
	 :html-postamble ,website-html-postamble
         :with-toc nil
        )
        )
      )
;; Setting up html-postamble
(setq org-html-postamble-format  "Published on %d. Last modified on %C")

(defun blog-site-dir()
  (interactive)
  (dired org-mode-websrc-directory))

(defun blog-elisp()
  (interactive)
  (find-file (concat org-mode-websrc-directory  "/elisp/blog.el")))


(provide 'blog)


