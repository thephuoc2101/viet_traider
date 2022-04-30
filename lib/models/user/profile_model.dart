import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileModel({
    required String userId,
    String? email,
    String? phoneNumber,
    String? mobileNumber,
    String? firstName,
    String? lastName,
    String? avatar,
    String? sessionCode,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class UserProfileModel with _$UserProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfileModel({
    String? sub,
    String? email,
    String? mobile_number,
    String? first_name,
    String? last_name,
    String? avatar,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}