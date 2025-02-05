;; Auto-generated. Do not edit!


(when (boundp 'dashgo_tools::check_msgGoal)
  (if (not (find-package "DASHGO_TOOLS"))
    (make-package "DASHGO_TOOLS"))
  (shadow 'check_msgGoal (find-package "DASHGO_TOOLS")))
(unless (find-package "DASHGO_TOOLS::CHECK_MSGGOAL")
  (make-package "DASHGO_TOOLS::CHECK_MSGGOAL"))

(in-package "ROS")
;;//! \htmlinclude check_msgGoal.msg.html


(defclass dashgo_tools::check_msgGoal
  :super ros::object
  :slots (_imu _method _distance _angule _vel _error ))

(defmethod dashgo_tools::check_msgGoal
  (:init
   (&key
    ((:imu __imu) "")
    ((:method __method) "")
    ((:distance __distance) 0.0)
    ((:angule __angule) 0.0)
    ((:vel __vel) 0.0)
    ((:error __error) 0.0)
    )
   (send-super :init)
   (setq _imu (string __imu))
   (setq _method (string __method))
   (setq _distance (float __distance))
   (setq _angule (float __angule))
   (setq _vel (float __vel))
   (setq _error (float __error))
   self)
  (:imu
   (&optional __imu)
   (if __imu (setq _imu __imu)) _imu)
  (:method
   (&optional __method)
   (if __method (setq _method __method)) _method)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angule
   (&optional __angule)
   (if __angule (setq _angule __angule)) _angule)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; string _imu
    4 (length _imu)
    ;; string _method
    4 (length _method)
    ;; float32 _distance
    4
    ;; float32 _angule
    4
    ;; float32 _vel
    4
    ;; float32 _error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _imu
       (write-long (length _imu) s) (princ _imu s)
     ;; string _method
       (write-long (length _method) s) (princ _method s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angule
       (sys::poke _angule (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error
       (sys::poke _error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _imu
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _imu (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angule
     (setq _angule (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error
     (setq _error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashgo_tools::check_msgGoal :md5sum-) "49ffb1d067a2ea13f4a3e8f7374f2450")
(setf (get dashgo_tools::check_msgGoal :datatype-) "dashgo_tools/check_msgGoal")
(setf (get dashgo_tools::check_msgGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
string imu
string method
float32 distance
float32 angule
float32 vel
float32 error

")



(provide :dashgo_tools/check_msgGoal "49ffb1d067a2ea13f4a3e8f7374f2450")


