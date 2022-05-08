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
  List<SubTask> get subTasksList => throw _privateConstructorUsedError;
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
      List<SubTask> subTasksList,
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
    Object? subTasksList = freezed,
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
      subTasksList: subTasksList == freezed
          ? _value.subTasksList
          : subTasksList // ignore: cast_nullable_to_non_nullable
              as List<SubTask>,
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
abstract class _$MainTaskCopyWith<$Res> implements $MainTaskCopyWith<$Res> {
  factory _$MainTaskCopyWith(_MainTask value, $Res Function(_MainTask) then) =
      __$MainTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? mainTaskId,
      String title,
      String description,
      String reward,
      bool isDone,
      DateTime deadline,
      List<SubTask> subTasksList,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$MainTaskCopyWithImpl<$Res> extends _$MainTaskCopyWithImpl<$Res>
    implements _$MainTaskCopyWith<$Res> {
  __$MainTaskCopyWithImpl(_MainTask _value, $Res Function(_MainTask) _then)
      : super(_value, (v) => _then(v as _MainTask));

  @override
  _MainTask get _value => super._value as _MainTask;

  @override
  $Res call({
    Object? mainTaskId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reward = freezed,
    Object? isDone = freezed,
    Object? deadline = freezed,
    Object? subTasksList = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_MainTask(
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
      subTasksList: subTasksList == freezed
          ? _value.subTasksList
          : subTasksList // ignore: cast_nullable_to_non_nullable
              as List<SubTask>,
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
      required final List<SubTask> subTasksList,
      required this.createdAt,
      required this.updatedAt})
      : _subTasksList = subTasksList,
        super._();

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
  final List<SubTask> _subTasksList;
  @override
  List<SubTask> get subTasksList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subTasksList);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainTask(mainTaskId: $mainTaskId, title: $title, description: $description, reward: $reward, isDone: $isDone, deadline: $deadline, subTasksList: $subTasksList, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      ..add(DiagnosticsProperty('subTasksList', subTasksList))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainTask &&
            const DeepCollectionEquality()
                .equals(other.mainTaskId, mainTaskId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.reward, reward) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality()
                .equals(other.subTasksList, subTasksList) &&
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
      const DeepCollectionEquality().hash(subTasksList),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$MainTaskCopyWith<_MainTask> get copyWith =>
      __$MainTaskCopyWithImpl<_MainTask>(this, _$identity);
}

abstract class _MainTask extends MainTask {
  factory _MainTask(
      {final String? mainTaskId,
      required final String title,
      required final String description,
      required final String reward,
      required final bool isDone,
      required final DateTime deadline,
      required final List<SubTask> subTasksList,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_MainTask;
  _MainTask._() : super._();

  @override
  String? get mainTaskId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get reward => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  DateTime get deadline => throw _privateConstructorUsedError;
  @override
  List<SubTask> get subTasksList => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainTaskCopyWith<_MainTask> get copyWith =>
      throw _privateConstructorUsedError;
}
