import 'package:flutter_shopping_app/models/catalog.dart';

class CartModel {
  // catalog ke model lo dusra naam diya hai bas!
  CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(catalog != null);
    _catalog = newCatalog;
  }

  // mapping id of new list to catalog model

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

// get total price logic
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add item
  void addItem(Item item) {
    _itemIds.add(item.id);
  }

  //remove item

  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}
