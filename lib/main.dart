import 'package:card_swiper/card_swiper.dart';
import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> slike = [
      'assets/slika1.jpeg',
      'assets/slika2.jpeg',
      'assets/slika3.jpeg',
      'assets/slika4.jpeg',
      'assets/slika5.jpeg'
    ];

    List<String> gradovi = [
      'Rome',
      'Barcelona',
      'Toronto',
      'Boston',
      'New York',
    ];

    List<String> automobili = [
      'SUV',
      'Limousine',
      'Convertible',
      'Family car',
      'Sports car'
    ];

    List<String> menjaci = [
      'Automatic',
      'Manual',
    ];

    List<String> gorivo = [
      'Electric',
      'Hybrid',
      'Diesel',
      'Gas',
    ];

    final Color primarnaBoja = Color(0xFF1E88E5);
    final Color akcenatBoja = Colors.lightBlue;

    var maksimumLinijaTeksta = 3;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primarnaBoja,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            headlineLarge: GoogleFonts.montserrat(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: primarnaBoja),
            headlineMedium: GoogleFonts.poppins(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: primarnaBoja),
            titleLarge: GoogleFonts.poppins(
                fontSize: 18.0, fontWeight: FontWeight.w500),
            bodyLarge: GoogleFonts.openSans(fontSize: 14.0),
          )),
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "How to order a vehicle from this site",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                    color: primarnaBoja,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Learn about our mission",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                        // fontStyle: FontStyle.normal,
                        color: primarnaBoja),
                  )),
              const SizedBox(
                height: 15.0,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact us",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                        // fontStyle: FontStyle.normal,
                        color: primarnaBoja),
                  )),
              const SizedBox(
                height: 15.0,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Support our humanitarian work",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                        // fontStyle: FontStyle.normal,
                        color: Colors.blueAccent),
                  )),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: primarnaBoja,
          title: Text(
            "Rent A Car",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SizedBox(height: 25.0),
            Text(
              "Please enter your start",
              style: GoogleFonts.montserrat(
                  fontSize: 32.0,
                  color: primarnaBoja,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 216.0),
              child: Container(
                width: 400.0,
                constraints: BoxConstraints(maxWidth: 400.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black12),
                padding: EdgeInsets.all(16.0),
                child: Column(children: [
                  Center(
                    child: DropdownMenu<String>(
                      label: Text(
                        "Please select your starting location",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(fontSize: 16.0),
                      ),
                      width: 300.0,
                      menuHeight: 150.0,
                      dropdownMenuEntries: gradovi
                          .map<DropdownMenuEntry<String>>((String gradovi) {
                        return DropdownMenuEntry<String>(
                          value: gradovi,
                          label: gradovi,
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Center(
                    child: DropdownMenu<String>(
                      label: Text(
                        "Please select your car type",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(fontSize: 16.0),
                      ),
                      width: 300.0,
                      menuHeight: 150.0,
                      dropdownMenuEntries: automobili
                          .map<DropdownMenuEntry<String>>((String automobili) {
                        return DropdownMenuEntry<String>(
                          value: automobili,
                          label: automobili,
                        );
                      }).toList(),
                    ),
                  ),
                  Center(
                      child: SizedBox(
                    width: 300.0,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration:
                          InputDecoration(hintText: "Input your start date..."),
                    ),
                  )),
                  SizedBox(height: 12.0),
                  Center(
                      child: SizedBox(
                    width: 300.0,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration:
                          InputDecoration(hintText: "Input your end date..."),
                    ),
                  )),
                  SizedBox(height: 12.0),
                  Center(
                    child: DropdownMenu<String>(
                      label: Text(
                        "Please select your fuel type",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(fontSize: 16.0),
                      ),
                      width: 300.0,
                      menuHeight: 150.0,
                      dropdownMenuEntries: gorivo
                          .map<DropdownMenuEntry<String>>((String gorivo) {
                        return DropdownMenuEntry<String>(
                          value: gorivo,
                          label: gorivo,
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Center(
                    child: DropdownMenu<String>(
                      label: Text(
                        "Select your preferred gear shifter",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(fontSize: 16.0),
                      ),
                      width: 300.0,
                      menuHeight: 150.0,
                      dropdownMenuEntries: menjaci
                          .map<DropdownMenuEntry<String>>((String menjaci) {
                        return DropdownMenuEntry<String>(
                          value: menjaci,
                          label: menjaci,
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Flex(direction: Axis.vertical, children: [
                    MaterialButton(
                      onPressed: () {},
                      color: akcenatBoja,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 20.0,
                      child: Text(
                        "ORDER",
                        style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      minWidth: 100.0,
                      height: 50.0,
                      // style: ElevatedButton.styleFrom(
                      //     backgroundColor: Colors.greenAccent,
                      //     minimumSize: Size(50.0, 50.0),
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10.0)),
                      //     elevation: 20.0),
                      // child: const Text('ORDER NOW'),//ovo je bio od ElevatedButton
                    )
                  ]),
                ]),
              ),
            ),
            SizedBox(height: 25.0),
            Center(
              child: Text(
                "Meet your preferred vehicle type",
                style: GoogleFonts.montserrat(
                    fontSize: 32.0, color: Colors.blueGrey),
              ),
            ),
            SizedBox(
              width: 800.0,
              height: 500.0,
              child: Swiper(
                itemCount: slike
                    .length, // Broj slika koje će se prikazivati u Swiper-u.
                pagination:
                    const SwiperPagination(), // Dodaje navigacione tačke za označavanje trenutnog indeksa slike.
                control:
                    const SwiperControl(), // Dodaje kontrole za prebacivanje između slika (sledeća/predhodna).
                viewportFraction:
                    0.8, // Određuje koliko prostora svaka slika zauzima u vidnom polju (0.8 = 80%).
                scale:
                    0.9, // Određuje kako se slike smanjuju (0.9 = smanjene za 10% od njihove pune veličine).
                itemBuilder: (context, indeks) {
                  // Funkcija koja gradi i vraca svaki element za Swiper.
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10.0), // Dodaje zaobljene ivice kontejneru.
                      image: DecorationImage(
                          image: AssetImage(slike[
                              indeks]), // Učitava sliku iz assets koristeći trenutni indeks.
                          fit: BoxFit
                              .fill, // Određuje kako će se slika prilagoditi veličini kontejnera (puni kontejner).
                          /*Postavlja kvalitet filtriranja slike na visok za bolji izgled.*/
                          filterQuality: FilterQuality.high),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SingleChildScrollView(
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 350.0,
                      width: 300.0,
                      child: Card(
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(
                                'assets/osiguranje.jpg',
                              ),
                              width: 150.0,
                              height: 150.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Meet your insurance needs with Geico, secure yourself just in case!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontSize: 20.0),
                                maxLines: maksimumLinijaTeksta,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: akcenatBoja,
                              child: Text('Learn more',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350.0,
                      width: 300.0,
                      child: Card(
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(
                                'assets/tim.jpeg',
                              ),
                              width: 150.0,
                              height: 150.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Become a member of our team within a few seconds!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontSize: 20.0),
                                maxLines: maksimumLinijaTeksta,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: akcenatBoja,
                              child: Text('Learn more',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350.0,
                      width: 300.0,
                      child: Card(
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(
                                'assets/kupon.jpg',
                              ),
                              width: 150.0,
                              height: 150.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Insert your valid coupon ID for discounts on our services!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontSize: 20.0),
                                maxLines: maksimumLinijaTeksta,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: akcenatBoja,
                              child: Text(
                                'Learn more',
                                style: GoogleFonts.poppins(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SingleChildScrollView(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150.0,
                      height: 280.0,
                      child: Column(
                        children: [
                          EasyPieChart(
                            children: [
                              PieData(value: 0.7, color: Colors.greenAccent),
                              PieData(value: 0.2, color: Colors.yellow),
                              PieData(value: 0.1, color: Colors.redAccent)
                            ],
                            pieType: PieType.crust,
                            size: 150.0,
                            showValue: false,
                            shouldAnimate: true,
                            // centerText:
                            //     "Green color of a graph are our satisfied customers. Be among them!",
                            // style: GoogleFonts.timmana(fontSize: 12.0),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Green color of a graph are our satisfied customers. Be among them!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                                fontSize: 14.0, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // humanitarno
                      width: 150.0,
                      height: 280.0,
                      child: Column(
                        children: [
                          EasyPieChart(
                            children: [
                              PieData(value: 0.68, color: Colors.greenAccent),
                              PieData(value: 0.32, color: Colors.yellow),
                            ],
                            pieType: PieType.triCrust,
                            size: 150.0,
                            showValue: false,
                            shouldAnimate: true,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Green color is our part of our income invested in charity. Bring a light to his world with us!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                                fontSize: 14.0, color: Colors.black),
                            //style: TextStyle(fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 280.0,
                      child: Column(
                        children: [
                          EasyPieChart(
                            children: [
                              PieData(value: 0.68, color: Colors.greenAccent),
                              PieData(value: 0.32, color: Colors.yellow),
                              PieData(value: 0.1, color: Colors.redAccent)
                            ],
                            pieType: PieType.fill,
                            size: 150.0,
                            showValue: false,
                            shouldAnimate: true,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Green color of a pie are our happy & proud team members. Join us now!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                                fontSize: 14.0, color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // SingleChildScrollView(
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 150.0,
            //         height: 150.0,
            //         child: Text(
            //           "Green color of a graph are our satisfied customers. Be among them!",
            //           textAlign: TextAlign.center,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 50.0,
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.black12,
                constraints: BoxConstraints(maxWidth: 700.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Form(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 600.0,
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Ask a question',
                                  style: GoogleFonts.montserrat(fontSize: 40.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Your first and last name',
                                        style:
                                            GoogleFonts.poppins(fontSize: 20.0),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                              'Input your first and last name',
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Text(
                                        'Your email',
                                        style:
                                            GoogleFonts.poppins(fontSize: 20.0),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Input your email here',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Your message',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(fontSize: 20.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Write your message here',
                                    ),
                                    maxLines: 8,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.cyan,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 20.0,
                                  child: Text(
                                    "SEND",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  minWidth: 100.0,
                                  height: 50.0,
                                ),
                                SizedBox(height: 15.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(width: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Follow us on social media:"),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                await launchUrl(Uri.parse(
                                    'https://www.instagram.com/tomcruise/'));
                              },
                              icon: SvgPicture.asset(
                                'assets/instagram.svg',
                                width: 50.0,
                                height: 50.0,
                              ),
                              iconSize: 50.0,
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              onPressed: () async {
                                await launchUrl(
                                    Uri.parse('https://www.x.com/tomcruise/'));
                              },
                              icon: SvgPicture.asset(
                                'assets/icons8-twitterx.svg',
                                width: 50.0,
                                height: 50.0,
                              ),
                              iconSize: 50.0,
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              onPressed: () async {
                                await launchUrl(
                                    Uri.parse('https://www.github.com/'));
                              },
                              icon: SvgPicture.asset(
                                'assets/icons8-github.svg',
                                width: 50.0,
                                height: 50.0,
                              ),
                              iconSize: 50.0,
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(width: 40.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Meet our sponsors"),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                await launchUrl(
                                    Uri.parse('https://www.hulu.com/'));
                              },
                              icon: SvgPicture.asset(
                                'assets/hulu-logo-svgrepo-com.svg',
                                width: 50.0,
                                height: 50.0,
                              ),
                              iconSize: 50.0,
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              onPressed: () async {
                                await launchUrl(
                                    Uri.parse('https://www.amazon.com/'));
                              },
                              icon: SvgPicture.asset(
                                'assets/amazon-2-logo-svgrepo-com.svg',
                                width: 50.0,
                                height: 50.0,
                              ),
                              iconSize: 50.0,
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              onPressed: () async {
                                await launchUrl(
                                    Uri.parse('https://www.apple.com/'));
                              },
                              icon: SvgPicture.asset(
                                'assets/apple-black-logo-svgrepo-com.svg',
                                width: 50.0,
                                height: 50.0,
                              ),
                              iconSize: 50.0,
                            ),
                          ],
                        ),
                      ],
                    ),

                    // OVDE POSTAVITI NOVE BLOKOVE U BUDUĆNOSTI
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {}, child: Text("Terms of Usage")),
                  TextButton(onPressed: () {}, child: Text("Privacy Policy")),
                  TextButton(onPressed: () {}, child: Text("Ad Policy")),
                  TextButton(onPressed: () {}, child: Text("Cookie Policy")),
                  Text(
                      "@ This app is the property of Arsenije Martinović. All rights reserved.")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
