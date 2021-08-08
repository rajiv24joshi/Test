import 'package:flutter/material.dart';
import 'package:acoount_invoice/widget/company_card.dart';
import 'package:acoount_invoice/Model/company_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:acoount_invoice/Model/company.dart';

class CompanyList extends StatefulWidget {

  @override
  _CompanyListState createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  List<Company> company = [
    Company(companyName:'XYZ pvt Ltd', accountType:'Company', vatNo:'46516516', regNo:'20120/226'),
    Company(companyName:'XYZ pvt Ltd', accountType:'Company', vatNo:'46516516', regNo:'20120/226'),
    Company(companyName:'XYZ pvt Ltd', accountType:'Company', vatNo:'46516516', regNo:'20120/226'),
    Company(companyName:'XYZ pvt Ltd', accountType:'Company', vatNo:'46516516', regNo:'20120/226'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CompanyCard(
          companyName: company[index].companyName,
          accountType: company[index].accountType,
          vatNo: company[index].vatNo,
          regNo: company[index].regNo,
        );
      },
      itemCount: company.length,
    );
  }
}
