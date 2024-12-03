import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String email;
  final String phone;
  final String fullName;
  final String gender;
  final DateTime? birthday;
  final bool isEmailVerified;
  final bool isPhoneVerified;
  final bool isGoogleLinked;
  final bool isFacebookLinked;

  User({
    required this.email,
    required this.phone,
    required this.fullName,
    required this.gender,
    required this.birthday,
    required this.isEmailVerified,
    required this.isPhoneVerified,
    required this.isGoogleLinked,
    required this.isFacebookLinked,
  });

  User copyWith({
    String? email,
    String? phone,
    String? fullName,
    String? gender,
    DateTime? birthday,
    bool? isEmailVerified,
    bool? isPhoneVerified,
    bool? isGoogleLinked,
    bool? isFacebookLinked,
  }) {
    return User(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      fullName: fullName ?? this.fullName,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      isPhoneVerified: isPhoneVerified ?? this.isPhoneVerified,
      isGoogleLinked: isGoogleLinked ?? this.isGoogleLinked,
      isFacebookLinked: isFacebookLinked ?? this.isFacebookLinked,
    );
  }
}

final userProvider = StateProvider<User>((ref) => User(
      email: 'vltravis24@gmail.com',
      phone: '+447 (***) ***92',
      fullName: 'Prelura App',
      gender: 'Male',
      birthday: null,
      isEmailVerified: true,
      isPhoneVerified: true,
      isGoogleLinked: true,
      isFacebookLinked: false,
    ));
