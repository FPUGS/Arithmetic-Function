@; Using racket/match:

(require racket/match)

(define (arithmetic oper op1 op2)
  (match oper
    ["add" (displayln (+ op1 op2))]
    ["sub" (displayln (- op1 op2))]
    ["mul" (displayln (* op1 op2))]
    ["div" (displayln (/ op1 op2))]
    
    )
  )

(arithmetic "add" 5 10)


@; Primitive Lisp functions only:

(define (arithmetic oper op1 op2)
  (cddr (assoc oper (list
                    (list "add" (displayln (+ op1 op2)))
                    (list "sub" (displayln (- op1 op2)))
                    (list "mul" (displayln (* op1 op2)))
                    (list "div" (displayln (/ op1 op2)))
                    )
              )
       )
  )

(arithmetic "div" 5 10)
