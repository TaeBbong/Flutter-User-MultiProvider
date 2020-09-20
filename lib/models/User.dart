class User {
  final String email;
  final String password;
  final String name;
  final List<int> cart;

  User({this.email, this.password, this.name, this.cart});

  factory User.fromMap(Map map) {
    return User(
      email: map['email'],
      password: map['password'],
      name: map['name'] ?? '', // 디폴트 값은 '' 으로 했습니다.
      cart: map['age'] ?? [],
    );
  }

//   factory User.fromFireStore(DocumentSnapshot doc) {
//     Map map = doc.data;
// ​
//     return User(
//       name: map['name'] ?? '',
//       age: map['age'] ?? 0,
//     ) ;
//   }

  String getEmail() {
    return email;
  }

  String getPassword() {
    return password;
  }

  String getName() {
    return name;
  }

  List<int> getCart() {
    return cart;
  }
}
