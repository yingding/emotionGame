// Generated by gencpp from file roboy_ros_face/PlayEmotionSrvRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_ROS_FACE_MESSAGE_PLAYEMOTIONSRVREQUEST_H
#define ROBOY_ROS_FACE_MESSAGE_PLAYEMOTIONSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_ros_face
{
template <class ContainerAllocator>
struct PlayEmotionSrvRequest_
{
  typedef PlayEmotionSrvRequest_<ContainerAllocator> Type;

  PlayEmotionSrvRequest_()
    : emotion()
    , duration(0)  {
    }
  PlayEmotionSrvRequest_(const ContainerAllocator& _alloc)
    : emotion(_alloc)
    , duration(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _emotion_type;
  _emotion_type emotion;

   typedef int32_t _duration_type;
  _duration_type duration;




  typedef boost::shared_ptr< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PlayEmotionSrvRequest_

typedef ::roboy_ros_face::PlayEmotionSrvRequest_<std::allocator<void> > PlayEmotionSrvRequest;

typedef boost::shared_ptr< ::roboy_ros_face::PlayEmotionSrvRequest > PlayEmotionSrvRequestPtr;
typedef boost::shared_ptr< ::roboy_ros_face::PlayEmotionSrvRequest const> PlayEmotionSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roboy_ros_face

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af358f0eedfa2bb2933016410b2c78ee";
  }

  static const char* value(const ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf358f0eedfa2bb2ULL;
  static const uint64_t static_value2 = 0x933016410b2c78eeULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_ros_face/PlayEmotionSrvRequest";
  }

  static const char* value(const ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string emotion\n\
int32 duration\n\
";
  }

  static const char* value(const ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.emotion);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlayEmotionSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_ros_face::PlayEmotionSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "emotion: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.emotion);
    s << indent << "duration: ";
    Printer<int32_t>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_ROS_FACE_MESSAGE_PLAYEMOTIONSRVREQUEST_H