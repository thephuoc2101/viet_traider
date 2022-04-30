// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketDataModel _$MarketDataModelFromJson(Map<String, dynamic> json) {
  return _ChartMarketModel.fromJson(json);
}

/// @nodoc
class _$MarketDataModelTearOff {
  const _$MarketDataModelTearOff();

  _ChartMarketModel call({String? mc, num? cIndex, num? oIndex, String? ot}) {
    return _ChartMarketModel(
      mc: mc,
      cIndex: cIndex,
      oIndex: oIndex,
      ot: ot,
    );
  }

  MarketDataModel fromJson(Map<String, Object?> json) {
    return MarketDataModel.fromJson(json);
  }
}

/// @nodoc
const $MarketDataModel = _$MarketDataModelTearOff();

/// @nodoc
mixin _$MarketDataModel {
  String? get mc => throw _privateConstructorUsedError;
  num? get cIndex => throw _privateConstructorUsedError;
  num? get oIndex => throw _privateConstructorUsedError;
  String? get ot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketDataModelCopyWith<MarketDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketDataModelCopyWith<$Res> {
  factory $MarketDataModelCopyWith(
          MarketDataModel value, $Res Function(MarketDataModel) then) =
      _$MarketDataModelCopyWithImpl<$Res>;
  $Res call({String? mc, num? cIndex, num? oIndex, String? ot});
}

/// @nodoc
class _$MarketDataModelCopyWithImpl<$Res>
    implements $MarketDataModelCopyWith<$Res> {
  _$MarketDataModelCopyWithImpl(this._value, this._then);

  final MarketDataModel _value;
  // ignore: unused_field
  final $Res Function(MarketDataModel) _then;

  @override
  $Res call({
    Object? mc = freezed,
    Object? cIndex = freezed,
    Object? oIndex = freezed,
    Object? ot = freezed,
  }) {
    return _then(_value.copyWith(
      mc: mc == freezed
          ? _value.mc
          : mc // ignore: cast_nullable_to_non_nullable
              as String?,
      cIndex: cIndex == freezed
          ? _value.cIndex
          : cIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      oIndex: oIndex == freezed
          ? _value.oIndex
          : oIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      ot: ot == freezed
          ? _value.ot
          : ot // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChartMarketModelCopyWith<$Res>
    implements $MarketDataModelCopyWith<$Res> {
  factory _$ChartMarketModelCopyWith(
          _ChartMarketModel value, $Res Function(_ChartMarketModel) then) =
      __$ChartMarketModelCopyWithImpl<$Res>;
  @override
  $Res call({String? mc, num? cIndex, num? oIndex, String? ot});
}

/// @nodoc
class __$ChartMarketModelCopyWithImpl<$Res>
    extends _$MarketDataModelCopyWithImpl<$Res>
    implements _$ChartMarketModelCopyWith<$Res> {
  __$ChartMarketModelCopyWithImpl(
      _ChartMarketModel _value, $Res Function(_ChartMarketModel) _then)
      : super(_value, (v) => _then(v as _ChartMarketModel));

  @override
  _ChartMarketModel get _value => super._value as _ChartMarketModel;

  @override
  $Res call({
    Object? mc = freezed,
    Object? cIndex = freezed,
    Object? oIndex = freezed,
    Object? ot = freezed,
  }) {
    return _then(_ChartMarketModel(
      mc: mc == freezed
          ? _value.mc
          : mc // ignore: cast_nullable_to_non_nullable
              as String?,
      cIndex: cIndex == freezed
          ? _value.cIndex
          : cIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      oIndex: oIndex == freezed
          ? _value.oIndex
          : oIndex // ignore: cast_nullable_to_non_nullable
              as num?,
      ot: ot == freezed
          ? _value.ot
          : ot // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChartMarketModel implements _ChartMarketModel {
  const _$_ChartMarketModel({this.mc, this.cIndex, this.oIndex, this.ot});

  factory _$_ChartMarketModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChartMarketModelFromJson(json);

  @override
  final String? mc;
  @override
  final num? cIndex;
  @override
  final num? oIndex;
  @override
  final String? ot;

  @override
  String toString() {
    return 'MarketDataModel(mc: $mc, cIndex: $cIndex, oIndex: $oIndex, ot: $ot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartMarketModel &&
            const DeepCollectionEquality().equals(other.mc, mc) &&
            const DeepCollectionEquality().equals(other.cIndex, cIndex) &&
            const DeepCollectionEquality().equals(other.oIndex, oIndex) &&
            const DeepCollectionEquality().equals(other.ot, ot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mc),
      const DeepCollectionEquality().hash(cIndex),
      const DeepCollectionEquality().hash(oIndex),
      const DeepCollectionEquality().hash(ot));

  @JsonKey(ignore: true)
  @override
  _$ChartMarketModelCopyWith<_ChartMarketModel> get copyWith =>
      __$ChartMarketModelCopyWithImpl<_ChartMarketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartMarketModelToJson(this);
  }
}

abstract class _ChartMarketModel implements MarketDataModel {
  const factory _ChartMarketModel(
      {String? mc, num? cIndex, num? oIndex, String? ot}) = _$_ChartMarketModel;

  factory _ChartMarketModel.fromJson(Map<String, dynamic> json) =
      _$_ChartMarketModel.fromJson;

  @override
  String? get mc;
  @override
  num? get cIndex;
  @override
  num? get oIndex;
  @override
  String? get ot;
  @override
  @JsonKey(ignore: true)
  _$ChartMarketModelCopyWith<_ChartMarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
