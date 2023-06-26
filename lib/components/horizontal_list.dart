import 'package:flutter/material.dart';

import '../pages/beneficiary_details.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {super.key,
      required this.listData,
      required this.title,
      this.onPressItem});
  final String title;
  final List<dynamic> listData;
  final dynamic onPressItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title (${listData.length})',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BeneficiaryDetails(BeneficiaryItem: listData)),
                )
              },
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: listData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(listData[index]['nickName'])
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
