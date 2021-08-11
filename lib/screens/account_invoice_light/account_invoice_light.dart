import 'package:acoount_invoice/Model/company.dart';
import 'package:acoount_invoice/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final companyNameControllerProvider = StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});
final accountTypeControllerProvider = StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});
final vatNoControllerProvider = StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});
final regNoControllerProvider = StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});

class AccountInvoiceLight extends ConsumerWidget {
  final Company company;
  AccountInvoiceLight({this.company});
  @override
  Widget build(BuildContext context, watch) {
    final size = MediaQuery.of(context).size;
    final textScaleFactor = size.height / designHeight;
    final companyName_c = watch(companyNameControllerProvider).state;
    final accountType_c = watch(accountTypeControllerProvider).state;
    final vatNo_c = watch(vatNoControllerProvider).state;
    final regNo_c = watch(regNoControllerProvider).state;
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company Name',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  SizedBox(
                      width: 80,
                      child: TextField(
                        controller: companyName_c,
                        onChanged: (value){
                          company.companyName=value;
                        },
                      )),
                  // Text(
                  //   company.companyName,
                  //   style: GoogleFonts.montserrat(
                  //     color: Color(0xff212121),
                  //     fontSize: 12.0,
                  //     fontStyle: FontStyle.normal,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Pan / Vat',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                      width: 80,
                      child: TextField(
                        controller: vatNo_c,
                        onChanged: (value){
                          company.vatNo=value;
                        },
                      )),

                ],
              ),
              SizedBox(
                width: 50.0 / designWidth * size.width,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Type',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  SizedBox(
                      width: 80,
                      child: TextField(
                        controller: accountType_c,
                        onChanged: (value){
                          company.accountType=value;
                        },
                      )),
                  // Text(
                  //   company.accountType,
                  //   style: GoogleFonts.montserrat(
                  //     color: Color(0xff212121),
                  //     fontSize: 12.0,
                  //     fontStyle: FontStyle.normal,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Reg No',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                      width: 80,
                      child: TextField(
                        controller: regNo_c,
                        onChanged: (value){
                          company.regNo=value;
                        },
                      )),
                  // Text(
                  //   company.regNo,
                  //   style: GoogleFonts.montserrat(
                  //     color: Color(0xff212121),
                  //     fontSize: 12.0,
                  //     fontStyle: FontStyle.normal,
                  //     fontWeight: FontWeight.w600,
                  //     letterSpacing: -1,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
