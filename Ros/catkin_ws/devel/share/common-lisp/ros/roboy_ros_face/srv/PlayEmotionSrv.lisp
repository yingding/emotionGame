; Auto-generated. Do not edit!


(cl:in-package roboy_ros_face-srv)


;//! \htmlinclude PlayEmotionSrv-request.msg.html

(cl:defclass <PlayEmotionSrv-request> (roslisp-msg-protocol:ros-message)
  ((emotion
    :reader emotion
    :initarg :emotion
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass PlayEmotionSrv-request (<PlayEmotionSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlayEmotionSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlayEmotionSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_ros_face-srv:<PlayEmotionSrv-request> is deprecated: use roboy_ros_face-srv:PlayEmotionSrv-request instead.")))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <PlayEmotionSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_ros_face-srv:emotion-val is deprecated.  Use roboy_ros_face-srv:emotion instead.")
  (emotion m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <PlayEmotionSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_ros_face-srv:duration-val is deprecated.  Use roboy_ros_face-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlayEmotionSrv-request>) ostream)
  "Serializes a message object of type '<PlayEmotionSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emotion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emotion))
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlayEmotionSrv-request>) istream)
  "Deserializes a message object of type '<PlayEmotionSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emotion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emotion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlayEmotionSrv-request>)))
  "Returns string type for a service object of type '<PlayEmotionSrv-request>"
  "roboy_ros_face/PlayEmotionSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlayEmotionSrv-request)))
  "Returns string type for a service object of type 'PlayEmotionSrv-request"
  "roboy_ros_face/PlayEmotionSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlayEmotionSrv-request>)))
  "Returns md5sum for a message object of type '<PlayEmotionSrv-request>"
  "af358f0eedfa2bb2933016410b2c78ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlayEmotionSrv-request)))
  "Returns md5sum for a message object of type 'PlayEmotionSrv-request"
  "af358f0eedfa2bb2933016410b2c78ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlayEmotionSrv-request>)))
  "Returns full string definition for message of type '<PlayEmotionSrv-request>"
  (cl:format cl:nil "string emotion~%int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlayEmotionSrv-request)))
  "Returns full string definition for message of type 'PlayEmotionSrv-request"
  (cl:format cl:nil "string emotion~%int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlayEmotionSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'emotion))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlayEmotionSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlayEmotionSrv-request
    (cl:cons ':emotion (emotion msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude PlayEmotionSrv-response.msg.html

(cl:defclass <PlayEmotionSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PlayEmotionSrv-response (<PlayEmotionSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlayEmotionSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlayEmotionSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_ros_face-srv:<PlayEmotionSrv-response> is deprecated: use roboy_ros_face-srv:PlayEmotionSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlayEmotionSrv-response>) ostream)
  "Serializes a message object of type '<PlayEmotionSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlayEmotionSrv-response>) istream)
  "Deserializes a message object of type '<PlayEmotionSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlayEmotionSrv-response>)))
  "Returns string type for a service object of type '<PlayEmotionSrv-response>"
  "roboy_ros_face/PlayEmotionSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlayEmotionSrv-response)))
  "Returns string type for a service object of type 'PlayEmotionSrv-response"
  "roboy_ros_face/PlayEmotionSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlayEmotionSrv-response>)))
  "Returns md5sum for a message object of type '<PlayEmotionSrv-response>"
  "af358f0eedfa2bb2933016410b2c78ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlayEmotionSrv-response)))
  "Returns md5sum for a message object of type 'PlayEmotionSrv-response"
  "af358f0eedfa2bb2933016410b2c78ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlayEmotionSrv-response>)))
  "Returns full string definition for message of type '<PlayEmotionSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlayEmotionSrv-response)))
  "Returns full string definition for message of type 'PlayEmotionSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlayEmotionSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlayEmotionSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlayEmotionSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlayEmotionSrv)))
  'PlayEmotionSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlayEmotionSrv)))
  'PlayEmotionSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlayEmotionSrv)))
  "Returns string type for a service object of type '<PlayEmotionSrv>"
  "roboy_ros_face/PlayEmotionSrv")