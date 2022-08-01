import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_item.freezed.dart';
part 'home_item.g.dart';

@freezed
//TODO 클래스 이름 변경 - Goods
class HomeItem with _$HomeItem {
  factory HomeItem({
    required String id, //TODO goods_id 로 변수 이름 변경
    required String imagePath, //TODO List 타입의 image
    required String title,
    required String location, //TODO 삭제예정
    required String time,
    required String desc, //설명
    required String price,
    required int likes,
    required bool like, //관심 여부
    required String category,
    required int item_status, //판매중, 거래완료
    required int user_id,
  }) = _HomeItem;

  factory HomeItem.fromJson(Map<String, dynamic> json) =>
      _$HomeItemFromJson(json);
}
