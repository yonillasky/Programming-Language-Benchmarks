(declaim (optimize (speed 3)(safety 0)(space 0)(debug 0)))

(load (compile-file "app.cl"))
(progn (sb-ext:disable-debugger)
       (sb-ext:save-lisp-and-die 
        "app"
        ;; http://www.sbcl.org/manual/#Function-sb_002dext-save_002dlisp_002dand_002ddie
        :purify t
        ;; :compression t
        ;; this is the main function:
        :toplevel #'main
        :executable t))
