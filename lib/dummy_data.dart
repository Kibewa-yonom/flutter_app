import './models/home_item.dart';
import './models/chat_item.dart';

var DUMMY_HOMEITEMS = [
  HomeItem(
    imagePath: 'assets/images/homeitem1.jpg',
    title: '맥북에어 스그 기본형',
    location: '성수2동',
    time: '1분 전',
    price: '1,060,000원',
    likes: 2,
    id: 'h1',
    category: '디지털기기',
    desc:
        "맥북 프로 터치바 판매합니다.\n\n새로 나왔을 때부터 애지중지 케이스 끼워가며 사용했어요. \n떨어뜨린 적 거의 없고, \n배터리 사이클도 300으로 괜찮습니다.\n\n모든 기능 잘 작동합니다.\n영등포역 1번 출구에서 직거래가능합니다.",
    item_status: 0,
    like: false,
    user_id: 'u1',
  ),
  HomeItem(
    imagePath: 'assets/images/homeitem2.jpg',
    title: '맥북에어 m1 스페이스 그레이',
    location: '성수3동',
    time: '끌올 1분 전',
    price: '900,000원',
    likes: 10,
    id: 'h2',
    category: '디지털기기',
    desc:
        "맥북 프로 터치바 판매합니다.\n\n새로 나왔을 때부터 애지중지 케이스 끼워가며 사용했어요. \n떨어뜨린 적 거의 없고, \n배터리 사이클도 300으로 괜찮습니다.\n\n모든 기능 잘 작동합니다.\n영등포역 1번 출구에서 직거래가능합니다.",
    item_status: 0,
    like: false,
    user_id: 'u2',
  ),
];

var DUMMY_CHAT = [
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
