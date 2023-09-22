import 'package:bai2/data/repository/cart_repo.dart';
import 'package:bai2/models/products_model.dart';
import 'package:bai2/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';

class CartController extends GetxController{
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items={};

  Map<int, CartModel> get items => _items;

  void addItem(ProductsModel product, int quantity) {
    // print("length of the item is "+_items.length.toString()); 9:38
    // print("adding item to the cart " + product.id!.toString()+" quantity "+ quantity.toString());
    // _items.forEach((key, value) {
    //   print("quantity is "+value.quantity.toString());
    // });
    var totalQuantity=0;
    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {

        totalQuantity=value.quantity!+quantity;

        return CartModel(
        id: value.id,
        name: value.name,
        price: value.price,
        img: value.img,
        quantity: value.quantity!+quantity,//9.52
        isExist: true,
        time: DateTime.now().toString(),
        );
      });

      if(totalQuantity<=0){
        _items.remove(product.id);
      }

    } else {
      if(quantity>0){
        _items.putIfAbsent(product.id!, () {
          return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            img: product.img,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),

          );
        }
      );
    }else{
        Get.snackbar("Item count","you shoud at least add an item in the count!",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
        );
      }
      }
  }

  existIntCart(ProductsModel product){
    if(_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductsModel product){
    var quantity=0;
    if(_items.containsKey(product.id)){
      _items.forEach((key, value) {
        if(key==product.id){
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems{
    var totalQuantity=0;
    _items.forEach((key, value) {
      totalQuantity += totalQuantity+ value .quantity!;
    });
    return totalQuantity;
  }


}