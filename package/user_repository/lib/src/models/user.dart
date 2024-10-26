import 'package:user_repository/src/entities/entities.dart';

class MyUser{
  String userId;
  String name;
  String email;
  bool hasActiveCard;

  // class' constructor
  MyUser({required this.userId, required this.name, required this.email, required this.hasActiveCard});

  static final empty = MyUser(userId: '', name: '', email: '', hasActiveCard: false);

  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId, name: name, email: email, hasActiveCard: hasActiveCard
    );
  }

  static MyUser fromEntity (MyUserEntity entity) {
    return MyUser(
      userId: entity.userId, 
      name: entity.name, 
      email: entity.email, 
      hasActiveCard: entity.hasActiveCard,
      );
  }

  @override
  String toString() {
    return 'MyUser : $userId, $name, $email, $hasActiveCard';
  }
}