import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:yayasan/screen/login_screen.dart";
import "package:yayasan/screen/galeri_screen.dart";
import "package:yayasan/screen/profil_screen.dart";
import "package:yayasan/screen/donasi_screen.dart";

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  // ignore: unused_field
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GaleriScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DonasiScreen()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen1()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/gambar1.PNG",
              fit: BoxFit.fill,
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                // Tambahkan margin di sini jika diperlukan
                child: Stack(
                  children: [
                    // Gambar utama
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/gambar1.PNG",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 18,
                      left: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                padding: const EdgeInsets.only(top: 55),
                                icon: Icon(Icons.article_outlined,
                                    color: Colors.white),
                                onPressed: () {
                                  // Aksi saat ikon ditekan
                                },
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0),
                                child: Text(
                                  'Dashboard',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 24),
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Text(
                                  'Last updates in 20 January 2022',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 15),
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 15,
                      child: IconButton(
                        padding: const EdgeInsets.only(top: 55),
                        icon: Icon(Icons.account_box_rounded,
                            color: Colors.white),
                        onPressed: () {
                          // Aksi saat ikon ditekan
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // Konten utama di bawah gambar latar belakang
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 1),
                        Color.fromRGBO(170, 194, 255, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(bottom: 110),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'YAYASAN\n',
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              color: Color.fromARGB(255, 6, 38, 119),
                            ),
                            children: const [
                              TextSpan(
                                text: 'AISYAH BERBAGI',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Color.fromARGB(255, 6, 38, 119),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Yayasan ini mengawali kegiatannya dengan program Sedekah Jumat Rp10.000 yang hasilnya dialokasikan ke sejumlah pondok pesantren di Bengkalis, membantu fakir miskin, dhuafa, anak yatim dan yang membutuhkan lainnya. Saat ini Yayasan memiliki hampir 400 donatur, berasal dari dalam daerah, luar daerah hingga luar negeri.',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color.fromARGB(255, 6, 38, 119),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),

                        // card
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: 350,
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  'JUMLAH DONASI',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 20),
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Rp 1.500.000',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 20),
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 6, 38, 119),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: 350,
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  'JUMLAH DONATUR',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 20),
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '400 Orang',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 20),
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 6, 38, 119),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Foto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Donasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Login',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
