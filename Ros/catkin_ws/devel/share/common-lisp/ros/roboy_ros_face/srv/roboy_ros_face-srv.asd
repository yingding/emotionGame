
(cl:in-package :asdf)

(defsystem "roboy_ros_face-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PlayEmotionSrv" :depends-on ("_package_PlayEmotionSrv"))
    (:file "_package_PlayEmotionSrv" :depends-on ("_package"))
  ))