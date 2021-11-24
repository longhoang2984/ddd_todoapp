import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icecream_todo/domain/core/failures.dart';
import 'package:icecream_todo/domain/notes/value_objects.dart';

part 'tag_item.freezed.dart';

@freezed
abstract class TagItem implements _$TagItem {
  const TagItem._();

  const factory TagItem({
    required ItemString name,
    required String id,
  }) = _TagItem;

  factory TagItem.emtpy() => TagItem(
        name: ItemString(''),
        id: DateTime.now().microsecondsSinceEpoch.toString(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold(
      (f) => some(f),
      (_) => none(),
    );
  }
}
