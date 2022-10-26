(setq m (load-foreign "/tmp/defun-c-callable/cfunc.o"))

(defforeign sync m "sync" (:float) :float)
(defforeign toupper m "upperstring" (:string) :string)
(defforeign setlfunc m "setlfunc" (:integer) :integer)
(defforeign callfunc m "callfunc" (:integer) :integer)


(defun-c-callable TEST ((a :integer)) :integer
  (format t "TEST is called, arg=~s~%" a)
  (* a a))
