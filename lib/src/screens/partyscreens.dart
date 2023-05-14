import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/show.dart';

class PartyItem extends StatelessWidget {
  final Show show;

  const PartyItem({Key? key, required this.show}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: CupertinoColors.secondarySystemBackground,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

Widget buildlodedlistWidget() {
  return SingleChildScrollView(
    child: Container(
      color: Colors.red,
      child: Column(
        children: [
          // buildshowlist(),
        ],
      ),
    ),
  );
}

// Widget buildshowlist() {
//   return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 2 / 3,
//         crossAxisSpacing: 1,
//         mainAxisExtent: 1,
//       ),
//       itemBuilder: (ctx, index) {
//         return ShowItem(
//           Show: allshow[index],
//         );
//       })
// }
