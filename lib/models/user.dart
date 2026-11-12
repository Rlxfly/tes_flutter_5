class User {
  //final int id;
  final String nim;
  final String nama;
  final String kelas;
  final String email;

  User({
    //required this.id,
    required this.nim,
    required this.nama,
    required this.kelas,
    required this.email,
    
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      //id: json['id'] ?? 0,
      nim: json['nim'] ?? '',
      nama: json['nama'] ?? '',
      kelas: json['kelas'] ?? '',
      email: json['email'] ?? '',
      
    );
  }
  // Inisial untuk avatar
  String get initial {
    if (nama.isEmpty) return '?';
    return nama[0].toUpperCase();
  }
}
