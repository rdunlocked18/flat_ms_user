import 'package:flutter/material.dart';

import '../../../model/product.dart';

class ListViewSingleRow extends StatelessWidget {
  final Person? person;
  const ListViewSingleRow({
    this.person,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        borderOnForeground: true,
        shadowColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: SizedBox(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network('${person?.avatar}'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${person?.id}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${person?.firstName}',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${person?.lastName}',
                        style: TextStyle(
                          overflow: TextOverflow.fade,
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 25,
                        padding: EdgeInsets.all(5),
                        color: Colors.green,
                        child: Text(
                          '${person?.email}',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: Center(child: Text('\$ ${product?.price}')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
