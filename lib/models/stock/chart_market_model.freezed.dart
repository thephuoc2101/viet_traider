// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChartMarketModel _$ChartMarketModelFromJson(Map<String, dynamic> json) {
  return _ChartMarketModel.fromJson(json);
}

/// @nodoc
class _$ChartMarketModelTearOff {
  const _$ChartMarketModelTearOff();

  _ChartMarketModel call(
      {String? marketCode, num? openIndex, List<ChartMarketDataModel>? data}) {
    return _ChartMarketModel(
      marketCode: marketCode,
      openIndex: openIndex,
      data: data,
    );
  }

  ChartMarketModel fromJson(Map<String, Object?> json) {
    return ChartMarketModel.fromJson(json);
  }
}

/// @nodoc
const $ChartMarketModel = _$ChartMarketModelTearOff();

/// @nodoc
mixin _$ChartMarketModel {
  String? get marketCode => throw _privateConstructorUsedError;
  num? get openIndex => throw _privateConstructorUsedError;
  List<ChartMarketDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartMarketModelCopyWith<ChartMarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartMarketModelCopyWith<$Res> {
  factory $ChartMarketModelCopyWith(
          ChartMarketModel value, $Res Function(ChartMarketModel) then) =
      _$ChartMarketModelCopyWithImpl<$Res>;
  $Res call(
      {String? marketCode, num? openIndex, List<ChartMarketDataModel>? data});
}

/// @nodoc
class _$ChartMarketModelCopyWithImpl<$Res>
    implements $ChartMarketModelCopyWith<$Res> {
  _$ChartMarketModelCopyWithImpl(this._value, this._then);

  final ChartMarketModel _value;
  // ignore: unused_field
  final $Res Function(ChartMarketModel) _then;

  @override
  $Res call({
    Object? marketCode = freezed,
    Object? openIndex = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      marketCode: marketCode == freezed
          ? _value.marketCode
          : marketCode // ignore: cast_nullable_to_non_nullable
              as String?,
      openIndex: openIndex == freezed
          ? _value.openIndex
          : openIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChartMarketDataModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ChartMarketModelCopyWith<$Res>
    implements $ChartMarketModelCopyWith<$Res> {
  factory _$ChartMarketModelCopyWith(
          _ChartMarketModel value, $Res Function(_ChartMarketModel) then) =
      __$ChartMarketModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? marketCode, num? openIndex, List<ChartMarketDataModel>? data});
}

/// @nodoc
class __$ChartMarketModelCopyWithImpl<$Res>
    extends _$ChartMarketModelCopyWithImpl<$Res>
    implements _$ChartMarketModelCopyWith<$Res> {
  __$ChartMarketModelCopyWithImpl(
      _ChartMarketModel _value, $Res Function(_ChartMarketModel) _then)
      : super(_value, (v) => _then(v as _ChartMarketModel));

  @override
  _ChartMarketModel get _value => super._value as _ChartMarketModel;

  @override
  $Res call({
    Object? marketCode = freezed,
    Object? openIndex = freezed,
    Object? data = freezed,
  }) {
    return _then(_ChartMarketModel(
      marketCode: marketCode == freezed
          ? _value.marketCode
          : marketCode // ignore: cast_nullable_to_non_nullable
              as String?,
      openIndex: openIndex == freezed
          ? _value.openIndex
          : openIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChartMarketDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChartMarketModel implements _ChartMarketModel {
  const _$_ChartMarketModel({this.marketCode, this.openIndex, this.data});

  factory _$_ChartMarketModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChartMarketModelFromJson(json);

  @override
  final String? marketCode;
  @override
  final num? openIndex;
  @override
  final List<ChartMarketDataModel>? data;

  @override
  String toString() {
    return 'ChartMarketModel(marketCode: $marketCode, openIndex: $openIndex, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartMarketModel &&
            const DeepCollectionEquality()
                .equals(other.marketCode, marketCode) &&
            const DeepCollectionEquality().equals(other.openIndex, openIndex) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(marketCode),
      const DeepCollectionEquality().hash(openIndex),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ChartMarketModelCopyWith<_ChartMarketModel> get copyWith =>
      __$ChartMarketModelCopyWithImpl<_ChartMarketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartMarketModelToJson(this);
  }
}

abstract class _ChartMarketModel implements ChartMarketModel {
  const factory _ChartMarketModel(
      {String? marketCode,
      num? openIndex,
      List<ChartMarketDataModel>? data}) = _$_ChartMarketModel;

  factory _ChartMarketModel.fromJson(Map<String, dynamic> json) =
      _$_ChartMarketModel.fromJson;

  @override
  String? get marketCode;
  @override
  num? get openIndex;
  @override
  List<ChartMarketDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$ChartMarketModelCopyWith<_ChartMarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChartMarketDataModel _$ChartMarketDataModelFromJson(Map<String, dynamic> json) {
  return _ChartMarketDataModel.fromJson(json);
}

/// @nodoc
class _$ChartMarketDataModelTearOff {
  const _$ChartMarketDataModelTearOff();

  _ChartMarketDataModel call(
      {String? time, num? oIndex, num? cIndex, double? value}) {
    return _ChartMarketDataModel(
      time: time,
      oIndex: oIndex,
      cIndex: cIndex,
      value: value,
    );
  }

  ChartMarketDataModel fromJson(Map<String, Object?> json) {
    return ChartMarketDataModel.fromJson(json);
  }
}

/// @nodoc
const $ChartMarketDataModel = _$ChartMarketDataModelTearOff();

/// @nodoc
mixin _$ChartMarketDataModel {
  String? get time => throw _privateConstructorUsedError;
  num? get oIndex => throw _privateConstructorUsedError;
  num? get cIndex => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartMarketDataModelCopyWith<ChartMarketDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartMarketDataModelCopyWith<$Res> {
  factory $ChartMarketDataModelCopyWith(ChartMarketDataModel value,
          $Res Function(ChartMarketDataModel) then) =
      _$ChartMarketDataModelCopyWithImpl<$Res>;
  $Res call({String? time, num? oIndex, num? cIndex, double? value});
}

/// @nodoc
class _$ChartMarketDataModelCopyWithImpl<$Res>
    implements $ChartMarketDataModelCopyWith<$Res> {
  _$ChartMarketDataModelCopyWithImpl(this._value, this._then);

  final ChartMarketDataModel _value;
  // ignore: unused_field
  final $Res Function(ChartMarketDataModel) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? oIndex = freezed,
    Object? cIndex = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      oIndex: oIndex == freezed
          ? _value.oIndex
          : oIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      cIndex: cIndex == freezed
          ? _value.cIndex
          : cIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ChartMarketDataModelCopyWith<$Res>
    implements $ChartMarketDataModelCopyWith<$Res> {
  factory _$ChartMarketDataModelCopyWith(_ChartMarketDataModel value,
          $Res Function(_ChartMarketDataModel) then) =
      __$ChartMarketDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? time, num? oIndex, num? cIndex, double? value});
}

/// @nodoc
class __$ChartMarketDataModelCopyWithImpl<$Res>
    extends _$ChartMarketDataModelCopyWithImpl<$Res>
    implements _$ChartMarketDataModelCopyWith<$Res> {
  __$ChartMarketDataModelCopyWithImpl(
      _ChartMarketDataModel _value, $Res Function(_ChartMarketDataModel) _then)
      : super(_value, (v) => _then(v as _ChartMarketDataModel));

  @override
  _ChartMarketDataModel get _value => super._value as _ChartMarketDataModel;

  @override
  $Res call({
    Object? time = freezed,
    Object? oIndex = freezed,
    Object? cIndex = freezed,
    Object? value = freezed,
  }) {
    return _then(_ChartMarketDataModel(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      oIndex: oIndex == freezed
          ? _value.oIndex
          : oIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      cIndex: cIndex == freezed
          ? _value.cIndex
          : cIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChartMarketDataModel implements _ChartMarketDataModel {
  const _$_ChartMarketDataModel(
      {this.time, this.oIndex, this.cIndex, this.value});

  factory _$_ChartMarketDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChartMarketDataModelFromJson(json);

  @override
  final String? time;
  @override
  final num? oIndex;
  @override
  final num? cIndex;
  @override
  final double? value;

  @override
  String toString() {
    return 'ChartMarketDataModel(time: $time, oIndex: $oIndex, cIndex: $cIndex, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartMarketDataModel &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.oIndex, oIndex) &&
            const DeepCollectionEquality().equals(other.cIndex, cIndex) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(oIndex),
      const DeepCollectionEquality().hash(cIndex),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ChartMarketDataModelCopyWith<_ChartMarketDataModel> get copyWith =>
      __$ChartMarketDataModelCopyWithImpl<_ChartMarketDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartMarketDataModelToJson(this);
  }
}

abstract class _ChartMarketDataModel implements ChartMarketDataModel {
  const factory _ChartMarketDataModel(
      {String? time,
      num? oIndex,
      num? cIndex,
      double? value}) = _$_ChartMarketDataModel;

  factory _ChartMarketDataModel.fromJson(Map<String, dynamic> json) =
      _$_ChartMarketDataModel.fromJson;

  @override
  String? get time;
  @override
  num? get oIndex;
  @override
  num? get cIndex;
  @override
  double? get value;
  @override
  @JsonKey(ignore: true)
  _$ChartMarketDataModelCopyWith<_ChartMarketDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
