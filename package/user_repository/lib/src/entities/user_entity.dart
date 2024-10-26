class MyUserEntity {
  String userId;
  String name;
  String email;
  bool hasActiveCard;

  // class' constructor
  MyUserEntity(
      {required this.userId,
      required this.name,
      required this.email,
      required this.hasActiveCard});

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'haseActiveCard': hasActiveCard,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        userId: doc['userId'],
        name: doc['name'],
        email: doc['email'],
        hasActiveCard: doc['hasActiveCard']);
  }
}
