import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_page.dart';
import 'package:med_pay/Features/Transaction/Widgets/pharmacy_postive_tile.dart';
import 'package:med_pay/Features/Transaction/Widgets/pharmacy_tile.dart';

void main() {
  runApp(MaterialApp(
    home: FilteredPhamarcyView(),
  ));
}

class FilteredPhamarcyView extends StatelessWidget {
  const FilteredPhamarcyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return FilterPage();
                      }),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter,
                        size: 18,
                        color: Colors.black,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            PharmacyTile1(),
            SizedBox(height: 15),
            PharmacyTile1(),
            SizedBox(height: 15),
            PharmacyTile1(),
            SizedBox(height: 15),
            PharmacyTile1(),
            SizedBox(height: 15),
            PharmacyTile(),
            SizedBox(height: 15),
            PharmacyTile1(),
            SizedBox(height: 15),
            PharmacyTile()
          ],
        ),
      ),
    );
  }
}