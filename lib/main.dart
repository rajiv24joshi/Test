import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:acoount_invoice/list.dart';
import 'package:acoount_invoice/screens/account_invoice_light/account_invoice_light.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: Screen(),
      ),
    );
  }
}

final checkboxProvider = StateProvider<bool>((ref) {
    return true;

});
class Screen extends StatelessWidget {
  final String title;
  final designHeight=897;

  Screen({this.title});
  @override
  Widget build(BuildContext context) {
    // final checkValue=watch(checkboxProvider).state;
    // print(checkValue);
    final size=MediaQuery.of(context).size;
     final imageScale = designHeight / size.height;
    final textScaleFactor=size.height/designHeight;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 91.0/ designHeight * size.height,
            ),
            Row(
              children: [
                Text('Invoice Account Type',
                textScaleFactor: textScaleFactor,
                style:GoogleFonts.montserrat(
                  color: Color(0xff212121),
                  fontSize: 16.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
                ),
                // Consumer(
                //
                //   builder: (context,watch,val){
                //       final checkValue = watch(checkboxProvider).state;
                //     return Checkbox(value: checkValue, onChanged: (val){
                //
                //
                //     context.read(checkboxProvider).state=val;
                //   });
                //   },
                //
                //
                // ),
                SizedBox(
                  width: 120,
                ),
                FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Color(0xff0960F6),
                child: Icon(Icons.add,
                size: 30,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 69,
            ),
            ListCard(),
            SizedBox(
              height: 16.0,
            ),
            ListCard(),
            SizedBox(
              height: 16.0,
            ),
            ListCard(),
        Spacer(
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.description), label: Text('Report'),),
        ),
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
