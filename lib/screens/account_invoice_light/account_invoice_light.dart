import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountInvoiceLight extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
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
                  Text('Company Name',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('XYZ Pvt Ltd',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff212121),
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text('Pan / Vat',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text('609982945',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff212121),
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 110.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account Type',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Company',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff212121),
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text('Reg No',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff606060),
                      fontSize: 8.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text('2020/00266/77',
                    style:GoogleFonts.montserrat(
                      color: Color(0xff212121),
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
