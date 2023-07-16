import 'package:flutter/material.dart';

import '../models/product.dart';

class AddNewProductScren extends StatefulWidget {
  final Future<void> Function(Product product) addNewProduct;
  const AddNewProductScren({
    super.key,
    required this.addNewProduct,
  });

  @override
  State<AddNewProductScren> createState() => _AddNewProductScrenState();
}

class _AddNewProductScrenState extends State<AddNewProductScren> {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  Product product = Product(
    productName: '',
    productId: '',
    createdAt: '',
    imageUrl: '',
    quantity: '',
    totalPrice: '',
    unitPrice: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Name',
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) {
                    if (value?.isEmpty ?? true) {
                      return;
                    }
                    product = Product(
                      productName: value as String,
                      productId: product.productId,
                      createdAt: product.createdAt,
                      imageUrl: product.imageUrl,
                      quantity: product.quantity,
                      totalPrice: product.totalPrice,
                      unitPrice: product.unitPrice,
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Product Code',
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) {
                    if (value?.isEmpty ?? true) {
                      return;
                    }
                    product = Product(
                      productName: product.productName,
                      productId: value as String,
                      createdAt: product.createdAt,
                      imageUrl: product.imageUrl,
                      quantity: product.quantity,
                      totalPrice: product.totalPrice,
                      unitPrice: product.unitPrice,
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Price',
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) {
                    if (value?.isEmpty ?? true) {
                      return;
                    }
                    product = Product(
                      productName: product.productName,
                      productId: product.productId,
                      createdAt: product.createdAt,
                      imageUrl: product.imageUrl,
                      quantity: product.quantity,
                      totalPrice: product.totalPrice,
                      unitPrice: value as String,
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Quantity',
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) {
                    if (value?.isEmpty ?? true) {
                      return;
                    }
                    product = Product(
                      productName: product.productName,
                      productId: product.productId,
                      createdAt: product.createdAt,
                      imageUrl: product.imageUrl,
                      quantity: value as String,
                      totalPrice: product.totalPrice,
                      unitPrice: product.unitPrice,
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Total Price',
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) {
                    if (value?.isEmpty ?? true) {
                      return;
                    }
                    product = Product(
                      productName: product.productName,
                      productId: product.productId,
                      createdAt: product.createdAt,
                      imageUrl: product.imageUrl,
                      quantity: product.quantity,
                      totalPrice: value as String,
                      unitPrice: product.unitPrice,
                    );
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Image URL',
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  onSaved: (value) {
                    if (value?.isEmpty ?? true) {
                      return;
                    }
                    product = Product(
                      productName: product.productName,
                      productId: product.productId,
                      createdAt: product.createdAt,
                      imageUrl: value as String,
                      quantity: product.quantity,
                      totalPrice: product.totalPrice,
                      unitPrice: product.unitPrice,
                    );
                  },
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () async {
                    // Product(
                    //   productName: 'MacBook Pro M2',
                    //   productId: 'k-1s2W',
                    //   imageUrl:
                    //       'https://images.unsplash.com/photo-1511385348-a52b4a160dc2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1207&q=80',
                    //   unitPrice: '154010',
                    //   quantity: '1',
                    //   totalPrice: '154010',
                    //   createdAt: '',
                    // )
                    if (form.currentState!.validate()) {
                      form.currentState!.save();
                      form.currentState!.reset();
                      await widget.addNewProduct(product);
                    }
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
