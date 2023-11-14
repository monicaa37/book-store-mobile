import 'package:flutter/material.dart';
import 'package:book_store/model/Item.dart'; // Pastikan import model item
import 'package:book_store/widgets/left_drawer.dart';

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Item'),
        backgroundColor: const Color.fromARGB(255, 223, 146, 45),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: Item.listItem.length,
        itemBuilder: (context, index) {
          Item currentItem = Item.listItem[index];
          return ListTile(
            title: Text(currentItem.name),
            subtitle: Text(
                'Jumlah: ${currentItem.amount}\nDeskripsi: ${currentItem.description}'),
            isThreeLine: true,
            onTap: () {
              // Implementasi logika untuk menangani ketika item di-tap
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Detail Item'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama: ${currentItem.name}'),
                          Text('Jumlah Item: ${currentItem.amount}'),
                          Text('Deskripsi: ${currentItem.description}'),
                        ],
                      ),
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
          );
        },
      ),
    );
  }
}