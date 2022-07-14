// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainTask {
  String? get mainTaskId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get reward => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTaskCopyWith<MainTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTaskCopyWith<$Res> {
  factory $MainTaskCopyWith(MainTask value, $Res Function(MainTask) then) =
      _$MainTaskCopyWithImpl<$Res>;
  $Res call(
      {String? mainTaskId,
      String title,
      String description,
      String reward,
      bool isDone,
      DateTime deadline,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$MainTaskCopyWithImpl<$Res> implements $MainTaskCopyWith<$Res> {
  _$MainTaskCopyWithImpl(this._value, this._then);

  final MainTask _value;
  // ignore: unused_field
  final $Res Function(MainTask) _then;

  @override
  $Res call({
    Object? mainTaskId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reward = freezed,
    Object? isDone = freezed,
    Object? deadline = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      mainTaskId: mainTaskId == freezed
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$_MainTaskCopyWith<$Res> implements $MainTaskCopyWith<$Res> {
  factory _$$_MainTaskCopyWith(
          _$_MainTask value, $Res Function(_$_MainTask) then) =
      __$$_MainTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? mainTaskId,
      String title,
      String description,
      String reward,
      bool isDone,
      DateTime deadline,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_MainTaskCopyWithImpl<$Res> extends _$MainTaskCopyWithImpl<$Res>
    implements _$$_MainTaskCopyWith<$Res> {
  __$$_MainTaskCopyWithImpl(
      _$_MainTask _value, $Res Function(_$_MainTask) _then)
      : super(_value, (v) => _then(v as _$_MainTask));

  @override
  _$_MainTask get _value => super._value as _$_MainTask;

  @override
  $Res call({
    Object? mainTaskId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reward = freezed,
    Object? isDone = freezed,
    Object? deadline = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_MainTask(
      mainTaskId: mainTaskId == freezed
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

class _$_MainTask extends _MainTask with DiagnosticableTreeMixin {
  _$_MainTask(
      {this.mainTaskId,
      required this.title,
      required this.description,
      required this.reward,
      required this.isDone,
      required this.deadline,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  @override
  final String? mainTaskId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String reward;
  @override
  final bool isDone;
  @override
  final DateTime deadline;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainTask(mainTaskId: $mainTaskId, title: $title, description: $description, reward: $reward, isDone: $isDone, deadline: $deadline, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainTask'))
      ..add(DiagnosticsProperty('mainTaskId', mainTaskId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('reward', reward))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('deadline', deadline))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainTask &&
            const DeepCollectionEquality()
                .equals(other.mainTaskId, mainTaskId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.reward, reward) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainTaskId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(reward),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_MainTaskCopyWith<_$_MainTask> get copyWith =>
      __$$_MainTaskCopyWithImpl<_$_MainTask>(this, _$identity);
}

abstract class _MainTask extends MainTask {
  factory _MainTask(
      {final String? mainTaskId,
      required final String title,
      required final String description,
      required final String reward,
      required final bool isDone,
      required final DateTime deadline,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_MainTask;
  _MainTask._() : super._();

  @override
  String? get mainTaskId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get reward;
  @override
  bool get isDone;
  @override
  DateTime get deadline;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MainTaskCopyWith<_$_MainTask> get copyWith =>
      throw _privateConstructorUsedError;
}
