// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'market_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MarketStateTearOff {
  const _$MarketStateTearOff();

  MarketLoading loading() {
    return const MarketLoading();
  }

  MarketLogged marketLogged({required List<MarketDataModel> data}) {
    return MarketLogged(
      data: data,
    );
  }

  MarketChartLogged marketChartLogged({required ChartMarketModel? data}) {
    return MarketChartLogged(
      data: data,
    );
  }

  MarketError error({String? error, List<String>? errors, Object? data}) {
    return MarketError(
      error: error,
      errors: errors,
      data: data,
    );
  }
}

/// @nodoc
const $MarketState = _$MarketStateTearOff();

/// @nodoc
mixin _$MarketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MarketDataModel> data) marketLogged,
    required TResult Function(ChartMarketModel? data) marketChartLogged,
    required TResult Function(String? error, List<String>? errors, Object? data)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketLogged value) marketLogged,
    required TResult Function(MarketChartLogged value) marketChartLogged,
    required TResult Function(MarketError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketStateCopyWith<$Res> {
  factory $MarketStateCopyWith(
          MarketState value, $Res Function(MarketState) then) =
      _$MarketStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarketStateCopyWithImpl<$Res> implements $MarketStateCopyWith<$Res> {
  _$MarketStateCopyWithImpl(this._value, this._then);

  final MarketState _value;
  // ignore: unused_field
  final $Res Function(MarketState) _then;
}

/// @nodoc
abstract class $MarketLoadingCopyWith<$Res> {
  factory $MarketLoadingCopyWith(
          MarketLoading value, $Res Function(MarketLoading) then) =
      _$MarketLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarketLoadingCopyWithImpl<$Res> extends _$MarketStateCopyWithImpl<$Res>
    implements $MarketLoadingCopyWith<$Res> {
  _$MarketLoadingCopyWithImpl(
      MarketLoading _value, $Res Function(MarketLoading) _then)
      : super(_value, (v) => _then(v as MarketLoading));

  @override
  MarketLoading get _value => super._value as MarketLoading;
}

/// @nodoc

class _$MarketLoading implements MarketLoading {
  const _$MarketLoading();

  @override
  String toString() {
    return 'MarketState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MarketLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MarketDataModel> data) marketLogged,
    required TResult Function(ChartMarketModel? data) marketChartLogged,
    required TResult Function(String? error, List<String>? errors, Object? data)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketLogged value) marketLogged,
    required TResult Function(MarketChartLogged value) marketChartLogged,
    required TResult Function(MarketError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MarketLoading implements MarketState {
  const factory MarketLoading() = _$MarketLoading;
}

/// @nodoc
abstract class $MarketLoggedCopyWith<$Res> {
  factory $MarketLoggedCopyWith(
          MarketLogged value, $Res Function(MarketLogged) then) =
      _$MarketLoggedCopyWithImpl<$Res>;
  $Res call({List<MarketDataModel> data});
}

/// @nodoc
class _$MarketLoggedCopyWithImpl<$Res> extends _$MarketStateCopyWithImpl<$Res>
    implements $MarketLoggedCopyWith<$Res> {
  _$MarketLoggedCopyWithImpl(
      MarketLogged _value, $Res Function(MarketLogged) _then)
      : super(_value, (v) => _then(v as MarketLogged));

  @override
  MarketLogged get _value => super._value as MarketLogged;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(MarketLogged(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarketDataModel>,
    ));
  }
}

/// @nodoc

class _$MarketLogged implements MarketLogged {
  const _$MarketLogged({required this.data});

  @override
  final List<MarketDataModel> data;

  @override
  String toString() {
    return 'MarketState.marketLogged(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarketLogged &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $MarketLoggedCopyWith<MarketLogged> get copyWith =>
      _$MarketLoggedCopyWithImpl<MarketLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MarketDataModel> data) marketLogged,
    required TResult Function(ChartMarketModel? data) marketChartLogged,
    required TResult Function(String? error, List<String>? errors, Object? data)
        error,
  }) {
    return marketLogged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
  }) {
    return marketLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
    required TResult orElse(),
  }) {
    if (marketLogged != null) {
      return marketLogged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketLogged value) marketLogged,
    required TResult Function(MarketChartLogged value) marketChartLogged,
    required TResult Function(MarketError value) error,
  }) {
    return marketLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
  }) {
    return marketLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
    required TResult orElse(),
  }) {
    if (marketLogged != null) {
      return marketLogged(this);
    }
    return orElse();
  }
}

abstract class MarketLogged implements MarketState {
  const factory MarketLogged({required List<MarketDataModel> data}) =
      _$MarketLogged;

  List<MarketDataModel> get data;
  @JsonKey(ignore: true)
  $MarketLoggedCopyWith<MarketLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketChartLoggedCopyWith<$Res> {
  factory $MarketChartLoggedCopyWith(
          MarketChartLogged value, $Res Function(MarketChartLogged) then) =
      _$MarketChartLoggedCopyWithImpl<$Res>;
  $Res call({ChartMarketModel? data});

  $ChartMarketModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$MarketChartLoggedCopyWithImpl<$Res>
    extends _$MarketStateCopyWithImpl<$Res>
    implements $MarketChartLoggedCopyWith<$Res> {
  _$MarketChartLoggedCopyWithImpl(
      MarketChartLogged _value, $Res Function(MarketChartLogged) _then)
      : super(_value, (v) => _then(v as MarketChartLogged));

  @override
  MarketChartLogged get _value => super._value as MarketChartLogged;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(MarketChartLogged(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChartMarketModel?,
    ));
  }

  @override
  $ChartMarketModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ChartMarketModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$MarketChartLogged implements MarketChartLogged {
  const _$MarketChartLogged({required this.data});

  @override
  final ChartMarketModel? data;

  @override
  String toString() {
    return 'MarketState.marketChartLogged(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarketChartLogged &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $MarketChartLoggedCopyWith<MarketChartLogged> get copyWith =>
      _$MarketChartLoggedCopyWithImpl<MarketChartLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MarketDataModel> data) marketLogged,
    required TResult Function(ChartMarketModel? data) marketChartLogged,
    required TResult Function(String? error, List<String>? errors, Object? data)
        error,
  }) {
    return marketChartLogged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
  }) {
    return marketChartLogged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
    required TResult orElse(),
  }) {
    if (marketChartLogged != null) {
      return marketChartLogged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketLogged value) marketLogged,
    required TResult Function(MarketChartLogged value) marketChartLogged,
    required TResult Function(MarketError value) error,
  }) {
    return marketChartLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
  }) {
    return marketChartLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
    required TResult orElse(),
  }) {
    if (marketChartLogged != null) {
      return marketChartLogged(this);
    }
    return orElse();
  }
}

abstract class MarketChartLogged implements MarketState {
  const factory MarketChartLogged({required ChartMarketModel? data}) =
      _$MarketChartLogged;

  ChartMarketModel? get data;
  @JsonKey(ignore: true)
  $MarketChartLoggedCopyWith<MarketChartLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketErrorCopyWith<$Res> {
  factory $MarketErrorCopyWith(
          MarketError value, $Res Function(MarketError) then) =
      _$MarketErrorCopyWithImpl<$Res>;
  $Res call({String? error, List<String>? errors, Object? data});
}

/// @nodoc
class _$MarketErrorCopyWithImpl<$Res> extends _$MarketStateCopyWithImpl<$Res>
    implements $MarketErrorCopyWith<$Res> {
  _$MarketErrorCopyWithImpl(
      MarketError _value, $Res Function(MarketError) _then)
      : super(_value, (v) => _then(v as MarketError));

  @override
  MarketError get _value => super._value as MarketError;

  @override
  $Res call({
    Object? error = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(MarketError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: data == freezed ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$MarketError implements MarketError {
  const _$MarketError({this.error, this.errors, this.data});

  @override
  final String? error;
  @override
  final List<String>? errors;
  @override
  final Object? data;

  @override
  String toString() {
    return 'MarketState.error(error: $error, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarketError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $MarketErrorCopyWith<MarketError> get copyWith =>
      _$MarketErrorCopyWithImpl<MarketError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MarketDataModel> data) marketLogged,
    required TResult Function(ChartMarketModel? data) marketChartLogged,
    required TResult Function(String? error, List<String>? errors, Object? data)
        error,
  }) {
    return error(this.error, errors, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
  }) {
    return error?.call(this.error, errors, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MarketDataModel> data)? marketLogged,
    TResult Function(ChartMarketModel? data)? marketChartLogged,
    TResult Function(String? error, List<String>? errors, Object? data)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, errors, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketLogged value) marketLogged,
    required TResult Function(MarketChartLogged value) marketChartLogged,
    required TResult Function(MarketError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketLogged value)? marketLogged,
    TResult Function(MarketChartLogged value)? marketChartLogged,
    TResult Function(MarketError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MarketError implements MarketState {
  const factory MarketError(
      {String? error, List<String>? errors, Object? data}) = _$MarketError;

  String? get error;
  List<String>? get errors;
  Object? get data;
  @JsonKey(ignore: true)
  $MarketErrorCopyWith<MarketError> get copyWith =>
      throw _privateConstructorUsedError;
}
