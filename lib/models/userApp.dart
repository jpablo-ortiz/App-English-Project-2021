import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserApp extends Equatable {
  final String id;
  final String email;
  final String? name;
  final String? photoUrl;

  const UserApp({
    required this.id,
    required this.email,
    this.name,
    this.photoUrl,
  });

  static const empty = UserApp(id: '', email: '', name: null, photoUrl: null);

  UserApp copyWith({
    String? id,
    String? email,
    String? name,
    String? photoUrl,
  }) {
    return UserApp(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  factory UserApp.fromMap(Map<String, dynamic> map) {
    return UserApp(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'],
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserApp.fromJson(String source) => UserApp.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, email, name, photoUrl];

  static UserApp fromFirebaseUser(User? firebaseUser) {
    //
    if (firebaseUser == null) {
      return empty;
    } else {
      return UserApp(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? "",
        name: firebaseUser.displayName,
        photoUrl: firebaseUser.photoURL,
      );
    }
  }
}
