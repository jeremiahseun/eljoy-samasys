import 'package:samasys/models/employees.dart';
import 'package:samasys/models/loan_record.dart';

List<Employees> employees = [
  Employees(
     name: 'Samantha Johnson',
     email: 'samantha@samasys.tech',
     phoneNumber: '(+234) (0) 593 3449 834',
     jobTitle: 'Software Engineer',
     loanRecords: [
       LoanRecord(
         month: 'FEB',
         borrowed: '50,000',
         receivable: '100,000',
         year: '2020',
       ),
       LoanRecord(
         month: 'JAN',
         borrowed: '20,000',
         receivable: '70,000',
          year: '2019',
       ),
       LoanRecord(
         month: 'DEC',
         borrowed: '70,000',
         receivable: '150,000',
          year: '2019',
       ),
     ],
  ),
  Employees(
     name: 'Ayodele Johnson',
     email: 'ayodele@samasys.tech',
     phoneNumber: '(+234) (0) 593 3449 834',
     jobTitle: 'Software Engineer',
     loanRecords: [
       LoanRecord(
         month: 'FEB',
         borrowed: '50,000',
         receivable: '100,000',
         year: '2020',
       ),
       LoanRecord(
         month: 'JAN',
         borrowed: '20,000',
         receivable: '70,000',
          year: '2019',
       ),
       LoanRecord(
         month: 'DEC',
         borrowed: '70,000',
         receivable: '150,000',
          year: '2019',
       ),
     ],
  ),
  Employees(
     name: 'Deji Johnson',
     email: 'deji@samasys.tech',
     phoneNumber: '(+234) (0) 593 3449 834',
     jobTitle: 'Software Engineer',
     loanRecords: [
       LoanRecord(
         month: 'FEB',
         borrowed: '50,000',
         receivable: '100,000',
         year: '2020',
       ),
       LoanRecord(
         month: 'JAN',
         borrowed: '20,000',
         receivable: '70,000',
          year: '2019',
       ),
       LoanRecord(
         month: 'DEC',
         borrowed: '70,000',
         receivable: '150,000',
          year: '2019',
       ),
     ],
  ),
];