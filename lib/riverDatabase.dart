// memperlihatkan Database Spesifikasi dari sungai-sungai, dibuat dalam satu class khusus
// dan data disimpan dalam map

class RiverSpesification {
  String nama;
  String lokasi;
  double kedalaman;
  double ph;
  double suhu;
  double tds;
  bool switches;

  RiverSpesification({
    required this.nama,
    required this.lokasi,
    required this.kedalaman,
    required this.switches,
    required this.suhu,
    required this.tds,
    required this.ph,
  });

  void setSwitches(bool switches) {
    this.switches = switches;
  }
}

var riverList = [
  RiverSpesification(
    nama: 'Sungai A',
    lokasi: '18 LU 19 BT',
    kedalaman: 100.0,
    switches: false,
    suhu: 20,
    tds: 20,
    ph: 7,
  ),
  RiverSpesification(
    nama: 'Sungai B',
    lokasi: '17 LU 30 BT',
    kedalaman: 80.9,
    switches: false,
    suhu: 27,
    tds: 30,
    ph: 3,
  ),
  RiverSpesification(
    nama: 'Sungai C',
    lokasi: '12 LU 15 BT',
    kedalaman: 25.0,
    switches: true,
    suhu: 80,
    tds: 15,
    ph: 13,
  ),
  RiverSpesification(
    nama: 'Sungai D',
    lokasi: '18 LU 19 BT',
    kedalaman: 14.0,
    switches: false,
    suhu: 41,
    tds: 1,
    ph: 1,
  ),
  RiverSpesification(
    nama: 'Sungai E',
    lokasi: '14 LU 38 BT',
    kedalaman: 57.0,
    switches: false,
    suhu: 35,
    tds: 78,
    ph: 5,
  ),
];
