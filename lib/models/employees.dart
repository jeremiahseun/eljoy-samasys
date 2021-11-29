import 'package:samasys/models/loan_record.dart';

class Employees {
  final String? name;
  final String? jobTitle;
  final String? picture;
  final String? phoneNumber;
  final String? email;
  final List<LoanRecord>? loanRecords;

  Employees(
     {this.name, this.jobTitle, this.picture, this.phoneNumber, this.email, this.loanRecords});
}
