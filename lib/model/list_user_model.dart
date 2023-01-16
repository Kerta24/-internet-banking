class ListUsersModel {
    final int? userId;
    final String? username;
    final String? password;
    final String? nama;
    final double? saldo;
    final String? nomorRekening;

    ListUsersModel({this.userId, this.username, this.password, this.nama, this.saldo, this.nomorRekening});

    factory ListUsersModel.fromJson(Map<String, dynamic> json) {
        return ListUsersModel(
            userId: json['user_id'],
            username: json['username'],
            password: json['password'],
            nama: json['nama'],
            saldo: json['saldo'],
            nomorRekening: json['nomor_rekening'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['user_id'] = this.userId;
        data['username'] = this.username;
        data['password'] = this.password;
        data['nama'] = this.nama;
        data['saldo'] = this.saldo;
        data['nomor_rekening'] = this.nomorRekening;
        return data;
    }
}
