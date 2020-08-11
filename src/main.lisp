;Author: Farazul Hoda
;"Lambda function in LISP"

(setq a 10)
(loop
 (setq a(+ a 1))
 (write a)
 (terpri)
 (when (> a 17) (return a))
 )

(defun demo-function (flag)
   (print 'entering-outer-block)
   
   (block outer-block
      (print 'entering-inner-block)
      (print (block inner-block

         (if flag
            (return-from outer-block 3)
            (return-from inner-block 5)
         )

         (print 'This-wil--not-be-printed))
      )

      (print 'left-inner-block)
      (print 'leaving-outer-block)
   t)
)
(demo-function t)
(terpri)
(demo-function nil) 

(write ((lambda (a b c x)
	  (+(* a (* x x)) (*b x) c))
	4 2 9 3)
       )
