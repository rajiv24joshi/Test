import 'package:acoount_invoice/screens/account_invoice_light/account_invoice_light.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget {

  Widget buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 374.0,
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 15,top: 10, bottom: 10),
          child: Row(
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
              SizedBox(
                width: 43.0,
              ),
              Column(
                children: [
                  SizedBox(
                      width: 26.0,
                      height: 26.0,
                      child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.delete,
                            ),
                          ),
                        ),
                      )
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  SizedBox(
                      width: 26.0,
                      height: 26.0,
                      child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                             onTap: () => showDialog<String>(
                               context: context,
                               builder: (BuildContext context) => AlertDialog(
                                 title: const Text('Edit Invoice'),
                                 content: AccountInvoiceLight(),
                                 actions: <Widget>[
                                   TextButton(
                                     onPressed: () => Navigator.pop(context, 'Cancel'),
                                     child: const Text('Cancel'),
                                   ),
                                   TextButton(
                                     onPressed: () => Navigator.pop(context, 'OK'),
                                     child: const Text('OK'),
                                   ),
                                 ],
                               ),
                             ),
                            // {
                            //   //showModalBottomSheet(context: context, builder: (BuildContext context) => AccountInvoiceLight());
                            // },
                            child: Icon(
                              Icons.edit,
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
