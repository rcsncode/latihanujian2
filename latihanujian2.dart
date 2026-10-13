import 'dart:io';

void main(){
    var jalan = true;
    var ceklogin = true;
    var pin = 1234;

void login(){
    stdout.writeln('Masukkan pin anda: ');
    var inputpin = int.parse(stdin.readLineSync()!);
    if (inputpin == pin){
        ceklogin = false;
    } else {
        print('Pin anda salah, silahkan coba lagi');
    }
 }

void tampilmenu(){
    print('===========================');
    print('Sistem Gudang');
    print('===========================');
    print('1. Tambah Stock Barang');
    print('2. Lihat Stock Barang');
    print('3. Kurangin Stock Barang');
    print('4. Keluar');
}

List<Map<String, dynamic>> stockBarang = [
{'Nama': 'Beras', 'Stock': 10},
{'Nama' : 'Minyak', 'Stock': 5},
{'Nama' : 'Gula', 'Stock': 3},
];

void lihatstock(){
    for (var barang in stockBarang) {
        print('Nama: ${barang['Nama']}, Stock: ${barang['Stock']}');
    }
}

void tambahstock(){
    stdout.writeln('Pilih angka barng yang ingin direstock: ');
    var pilihrestock = int.parse(stdin.readLineSync()!);
    if (pilihrestock == 1){
        stdout.writeln('Masukkan jumlah barang yang ingin direstock: ');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        stockBarang[0]['Stock'] += jumlahrestock;
    } else if (pilihrestock == 2){
        stdout.writeln('Masukkan jumlah barang yang ingin direstock: ');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        stockBarang[1]['Stock'] += jumlahrestock;
    } else if (pilihrestock == 3){
        stdout.writeln('Masukkan jumlah barang yang ingin direstock: ');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        stockBarang[2]['Stock'] += jumlahrestock; 
    } else {
        print('Barang tidak tersedia');
    }

}

void kurangstock(){
    stdout.writeln('Pilih angka barang yang ingin dikurangi stocknya: ');
    var pilihkurang = int.parse(stdin.readLineSync()!);
    if (pilihkurang == 1){
        stdout.writeln('Masukkan jumlah barang yang ingin dikurangi: ');
        var jumlahkurang = int.parse(stdin.readLineSync()!);
        stockBarang[0]['Stock'] -= jumlahkurang;
    } else if (pilihkurang == 2){
        stdout.writeln('Masukkan jumlah barang yang ingin dikurangi: ');
        var jumlahkurang = int.parse(stdin.readLineSync()!);
        stockBarang[1]['Stock'] -= jumlahkurang;
    } else if (pilihkurang == 3){
        stdout.writeln('Masukkan jumlah barang yang ingin dikurangi: ');
        var jumlahkurang = int.parse(stdin.readLineSync()!);
        stockBarang[2]['Stock'] -= jumlahkurang; 
    } else {
        print('Barang tidak tersedia');
    }
}

void keluar(){
    exit(0);
}

while (jalan == true){
        if (ceklogin == true){
            login();
        } else {
            tampilmenu();
            stdout.writeln('Pilih menu: ');
            var pilihmenu = int.parse(stdin.readLineSync()!);
            switch (pilihmenu){
                case 1:
                    tambahstock();
                    break;
                case 2:
                    lihatstock();
                    break;
                case 3:
                    kurangstock();
                    break;
                case 4:
                    keluar();
                    break;
                default:
                    print('Menu tidak tersedia');
            }
        }
    }
}