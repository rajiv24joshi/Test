import 'package:flutter/foundation.dart';
import 'package:acoount_invoice/Model/company.dart';
import 'dart:collection';

class CompanyData extends ChangeNotifier {
  List<Company> _company = [
    Company(companyName:'XYZ pvt Ltd', accountType:'Company', vatNo:'46516516', regNo:'20120/226'),
  ];

}
