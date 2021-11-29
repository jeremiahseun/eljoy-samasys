import 'package:flutter/material.dart';
import 'package:samasys/models/employees.dart';
import 'package:samasys/widgets/top_bar.dart';

class EmployeeDetails extends StatelessWidget {
  final List<Employees> employee;
  final int index;
  const EmployeeDetails({Key? key, required this.employee, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(theme: theme),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.dividerColor),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/man.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(employee[index].name!,
                                style: theme.textTheme.headline4!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                  color: Colors.black,
                                )),
                            const SizedBox(height: 10),
                            Text(
                              employee[index].jobTitle!,
                              style: theme.textTheme.headline6!
                                  .copyWith(color: Colors.grey),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              employee[index].phoneNumber!,
                              style: theme.textTheme.headline6!
                                  .copyWith(color: Colors.grey),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              employee[index].email!,
                              style: theme.textTheme.headline6!
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 30),
                Text(
                  'LOAN RECORD',
                  style: theme.textTheme.headline5,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: loanItemRecord(theme,
                borrowed: employee[index].loanRecords![0].borrowed!,
                receivable: employee[index].loanRecords![0].receivable!,
                month: employee[index].loanRecords![0].month!),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: loanItemRecord(theme,
                borrowed: employee[index].loanRecords![1].borrowed!,
                receivable: employee[index].loanRecords![1].receivable!,
                month: employee[index].loanRecords![1].month!),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("2019", style: theme.textTheme.headline6),
                const SizedBox(width: 25),
                Flexible(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: theme.dividerColor,
                  ),
                ),
                const Divider(
                  thickness: 3.3,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: loanItemRecord(theme,
                borrowed: employee[index].loanRecords![2].borrowed!,
                receivable: employee[index].loanRecords![2].receivable!,
                month: employee[index].loanRecords![2].month!),
          ),
        ],
      ),
    )));
  }

  Container loanItemRecord(ThemeData theme,
      {required String month,
      required String borrowed,
      required String receivable}) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: theme.dividerColor),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.grey[300],
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_today,
                  size: 30,
                  color: Colors.grey,
                ),
                const SizedBox(height: 20),
                Text(
                  month,
                  style: theme.textTheme.headline6!.copyWith(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("BORROWED: #$borrowed",
                  style: theme.textTheme.headline6!.copyWith(
                    color: Colors.black54,
                  )),
              const Divider(
                thickness: 1.3,
              ),
              Text("RECEIVABLE: #$receivable",
                  style: theme.textTheme.headline6!.copyWith(
                    color: Colors.black54,
                  )),
            ]),
          ),
        )
      ]),
    );
  }
}
