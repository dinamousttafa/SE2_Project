import 'package:flutter/material.dart';

Widget category(
    BuildContext context, String imageUrl, String title, String visit) {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 12),
    child: Container(
      width: 270,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200], // Placeholder color
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Color(0x230F1113),
            offset: Offset(0, 4),
          )
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey, // Placeholder color
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold), // Example style
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // Rating widget here
                          // visit widget here
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Placeholder color
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: Text(
                      visit,
                      style: TextStyle(
                          fontSize: 14, color: Colors.white), // Example style
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
