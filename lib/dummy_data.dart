import './models/home_item.dart';
import './models/chat_item.dart';

const DUMMY_HOMEITEMS = const [
  HomeItem(
    imagePath: 'assets/images/homeitem1.jpg',
    title: '맥북에어 스그 기본형',
    location: '성수2동',
    time: '1분 전',
    price: '1,060,000원',
    likes: 2,
  ),
  HomeItem(
    imagePath: 'assets/images/homeitem2.jpg',
    title: '맥북에어 m1 스페이스 그레이',
    location: '성수3동',
    time: '끌올 1분 전',
    price: '900,000원',
    likes: 10,
  ),
];

const DUMMY_CHAT = const [
  ChatItem(
    profileImagePath: 'assets/images/profile1.jpg',
    name: '바다',
    location: '성수동2가',
    time: '1일 전',
    itemImagePath: 'assets/images/homeitem1.jpg',
    messageLatest: '네',
  ),
  ChatItem(
      profileImagePath: 'assets/images/profile2.JPG',
      name: '새우깡',
      location: '용답동',
      time: '3일 전',
      itemImagePath: 'assets/images/homeitem2.jpg',
      messageLatest: '도착했습니다'),
];
