import 'package:flutter/material.dart';
import 'package:acoount_invoice/widget/company_card.dart';
import 'package:acoount_invoice/Model/company_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:acoount_invoice/Model/company.dart';

final CompalnyListProvider = StateProvider<List<Company>>((ref) {
  return [
    Company(
        id: 1,
        companyName: 'XYZ pvt Ltd',
        accountType: 'Company',
        vatNo: '46516516',
        regNo: '20120/226'),
    Company(
        id: 2,
        companyName: 'Abc pvt Ltd',
        accountType: 'Company',
        vatNo: '46516516',
        regNo: '20120/22'),
    Company(
        id: 3,
        companyName: 'add pvt Ltd',
        accountType: 'Company',
        vatNo: '46516516',
        regNo: '20120/225'),
    Company(
        id: 4,
        companyName: 'hello pvt Ltd',
        accountType: 'Company',
        vatNo: '46516516',
        regNo: '20120/225'),
    Company(
        id: 5,
        companyName: 'hello pvt Ltd',
        accountType: 'Company',
        vatNo: '46516516',
        regNo: '20120/225'),
    Company(
        id: 6,
        companyName: 'hello pvt Ltd',
        accountType: 'Company',
        vatNo: '46516516',
        regNo: '20120/225'),
  ];
});

class CompanyList extends ConsumerWidget {
  const CompanyList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final company = watch(CompalnyListProvider).state;
    return ListView.builder(
      itemBuilder: (context, index) {
        return CompanyCard(company: company[index]
            // companyName: company[index].companyName,
            // accountType: company[index].accountType,
            // vatNo: company[index].vatNo,
            // regNo: company[index].regNo,
            );
      },
      itemCount: company.length,
    );
  }
}
