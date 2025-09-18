// 2. Open/Closed Principle
import 'package:flutter_application_1/class/order.dart';

abstract class OrderStorage {
  void addOrder(Order order);
  List<Order> getAllOrders();
}

class OrderManager implements OrderStorage {
  static final List<Order> _orders = [];

  @override
  void addOrder(Order order) {
    _orders.add(order);
  }

  @override
  List<Order> getAllOrders() {
    return _orders;
  }

  List<Order> getPendingOrders() {
    return _orders.where((order) => !order.isCompleted).toList();
  }
}
