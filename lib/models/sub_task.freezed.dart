// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sub_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubTask {
  String? get subTaskId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubTaskCopyWith<SubTask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubTaskCopyWith<$Res> {
  factory $SubTaskCopyWith(SubTask value, $Res Function(SubTask) then) =
      _$SubTaskCopyWithImpl<$Res>;
  $Res call(
      {String? subTaskId,
      String title,
      bool isDone,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$SubTaskCopyWithImpl<$Res> implements $SubTaskCopyWith<$Res> {
  _$SubTaskCopyWithImpl(this._value, this._then);

  final SubTask _value;
  // ignore: unused_field
  final $Res Function(SubTask) _then;

  @override
  $Res call({
    Object? subTaskId = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      subTaskId: subTaskId == freezed
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$SubTaskCopyWith<$Res> implements $SubTaskCopyWith<$Res> {
  factory _$SubTaskCopyWith(_SubTask value, $Res Function(_SubTask) then) =
      __$SubTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? subTaskId,
      String title,
      bool isDone,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$SubTaskCopyWithImpl<$Res> extends _$SubTaskCopyWithImpl<$Res>
    implements _$SubTaskCopyWith<$Res> {
  __$SubTaskCopyWithImpl(_SubTask _value, $Res Function(_SubTask) _then)
      : super(_value, (v) => _then(v as _SubTask));

  @override
  _SubTask get _value => super._value as _SubTask;

  @override
  $Res call({
    Object? subTaskId = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_SubTask(
      subTaskId: subTaskId == freezed
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SubTask extends _SubTask with DiagnosticableTreeMixin {
  _$_SubTask(
      {this.subTaskId,
      required this.title,
      required this.isDone,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  @override
  final String? subTaskId;
  @override
  final String title;
  @override
  final bool isDone;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubTask(subTaskId: $subTaskId, title: $title, isDone: $isDone, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubTask'))
      ..add(DiagnosticsProperty('subTaskId', subTaskId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubTask &&
            const DeepCollectionEquality().equals(other.subTaskId, subTaskId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subTaskId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$SubTaskCopyWith<_SubTask> get copyWith =>
      __$SubTaskCopyWithImpl<_SubTask>(this, _$identity);
}

abstract class _SubTask extends SubTask {
  factory _SubTask(
      {final String? subTaskId,
      required final String title,
      required final bool isDone,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_SubTask;
  _SubTask._() : super._();

  @override
  String? get subTaskId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubTaskCopyWith<_SubTask> get copyWith =>
      throw _privateConstructorUsedError;
}
