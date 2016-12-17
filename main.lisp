(defpackage :main
  (:use :cl :parenscript :cl-who)
  (:export "MAIN"))
(in-package :main)

(defun main ()
  (woo:run
    (lambda (env)
      (declare (ignore env))
      `(200 (:content-type "text/plain")
	    (,(with-output-to-string (s)
				     (with-html-output (s)
						       (:html
							(:head
							 (:script (str (ps (alert "testing")))))
							(:body "Hello, world!")))))
	    ))))
  
