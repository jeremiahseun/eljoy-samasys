import 'package:flutter/material.dart';
import 'package:samasys/models/employees.dart';
import 'package:samasys/screens/employee/employee_details.dart';
import 'package:samasys/screens/home/home_viewmodel.dart';
import 'package:samasys/widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            TopBar(theme: theme),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EMPLOYEES',
                    style: theme.textTheme.headline5,
                  ),
                  const SizedBox(height: 30),
                  ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 40),
                    itemBuilder: (context, i) {
                      return InkWell(
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        onHover: (value) {
                          setState(() {
                            isHovered = value;
                          });
                        },
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EmployeeDetails(
                                    index: i,
                                    employee: employees,
                                  )));
                        },
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 170,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: theme.dividerColor),
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(children: [
                                    Flexible(
                                      flex: 2,
                                      child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage('assets/man.jpeg'),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(employees[i].name!,
                                                style: theme
                                                    .textTheme.headline4!
                                                    .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 28,
                                                  color: Colors.black,
                                                )),
                                            const SizedBox(height: 10),
                                            Text(
                                              employees[i].jobTitle!,
                                              style: theme.textTheme.headline6!
                                                  .copyWith(color: Colors.grey),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              employees[i].phoneNumber!,
                                              style: theme.textTheme.headline6!
                                                  .copyWith(color: Colors.grey),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              employees[i].email!,
                                              style: theme.textTheme.headline6!
                                                  .copyWith(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                            !isHovered
                                ? const SizedBox()
                                : Positioned(
                                    bottom: 0,
                                    right: 6,
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                              content: Text(
                                                'Sorry. This feature is not available at the moment.',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ));
                                          },
                                          child: Container(
                                              height: 30,
                                              width: 35,
                                              color: Colors.grey,
                                              alignment: Alignment.center,
                                              child: const Icon(Icons.edit)),
                                        ),
                                        const SizedBox(width: 5),
                                        InkWell(
                                          onTap: () {
                                            employees.removeAt(i);
                                            setState(() {});
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text(
                                                '${employees[i].name} removed successfully!',
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                              backgroundColor: Colors.red,
                                            ));
                                          },
                                          child: Container(
                                              height: 30,
                                              width: 35,
                                              color: Colors.grey,
                                              alignment: Alignment.center,
                                              child: const Icon(Icons.delete)),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      );
                    },
                    itemCount: employees.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
