// import 'dart:convert';
// import 'package:book_store/screens/detail_product.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// // import 'dart:convert' as convert;
// import 'package:book_store/models/product.dart';
// import 'package:book_store/widgets/left_drawer.dart';


// class ItemPage extends StatefulWidget {
//   const ItemPage({Key? key}) : super(key: key);

//   @override
//   _ItemPageState createState() => _ItemPageState();
// }

// class _ItemPageState extends State<ItemPage> {
//   Future<List<Item>> fetchItem() async {
//     // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
//     // String uname = LoginPage.uname;

//     var url = Uri.parse(
//         'http://localhost:8000/get-items/');
   
//     var response = await http.get(
//       url,
//       headers: {"Content-Type": "application/json"},
//     );

//     // melakukan decode response menjadi bentuk json
//     var data = jsonDecode(utf8.decode(response.bodyBytes));

//     // melakukan konversi data json menjadi object Item
//     List<Item> list_Item = [];
//     for (var d in data) {
//       if (d != null) {
//         list_Item.add(Item.fromJson(d));
//       }
//     }
//     return list_Item;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Item'),
//         ),
//         drawer: const LeftDrawer(),
//         body: FutureBuilder(
//             future: fetchItem(),
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.data == null) {
//                 return const Center(child: CircularProgressIndicator());
//               } else {
//                 // print(snapshot.data.length == 0);
//                 if (snapshot.data.length == 0) {
//                   return const Column(
//                     children: [
//                       Text(
//                         "Tidak ada data item.",
//                         style: TextStyle(
//                             color: Color.fromARGB(255, 19, 20, 21),
//                             fontSize: 20),
//                       ),
//                       SizedBox(height: 8),
//                     ],
//                   );
//                 } else {
//                   return ListView.builder(
//                         itemCount: snapshot.data!.length,
//                         itemBuilder: (_, index) => InkWell(
//                           onTap: () {
//                             // Navigate ke detail page
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => DetailPage(
//                                   itemName: snapshot.data![index].fields.name,
//                                   price: snapshot.data![index].fields.price,
//                                   itemDescription: snapshot.data![index].fields.description,
//                                   itemAmount: snapshot.data![index].fields.amount,
//                                   // Pass more data if needed
//                                 ),
//                               ),
//                             );
//                           },
//                           child: Container(
//                                             margin: const EdgeInsets.symmetric(
//                                                 horizontal: 16, vertical: 12),
//                                             padding: const EdgeInsets.all(20.0),
//                                             child: Column(
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,

//                           children: [
//                             Text(
//                               "${snapshot.data![index].fields.name}",
//                               style: const TextStyle(
//                                 fontSize: 18.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Text("${snapshot.data![index].fields.amount}"),
//                             const SizedBox(height: 10),
//                             Text("${snapshot.data![index].fields.description}"),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 }
//               }
//             }));
//   }
// }

import 'package:book_store/models/item.dart';
import 'package:flutter/material.dart';
import 'package:book_store/widgets/left_drawer.dart';

class ProductListPage extends StatefulWidget {
  final List<Item> productList;

  const ProductListPage({Key? key, required this.productList})
      : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Kaos'),
        backgroundColor: Color.fromARGB(255, 68, 44, 7),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: widget.productList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: ListTile(
              title: Text(widget.productList[index].name),
              subtitle: Text('Jumlah: ${widget.productList[index].amount} '),
              onTap: () {
                // Menampilkan popup dengan informasi barang yang di-klik
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(widget.productList[index].name),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Jumlah: ${widget.productList[index].amount}'),
                          Text('Harga: Rp${widget.productList[index].price}'),
                          Text('Deskripsi: ${widget.productList[index].description}'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}