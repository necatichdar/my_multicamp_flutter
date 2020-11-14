//async/await, HTTP

void main() {
  print("Siparisiniz Hazirlaniyor");
  print(getOrder());
  print("Siparisiniz Hazir");
}

Future<String> getOrder() async {
  var order = await 'Siparisiniz: 1 adet orta boy pizza';
  return "Siparisiniz: $order";
}

Future<String> fetchUserOder() =>
    Future.delayed(Duration(seconds: 2), () => '1 Adet orta boy pizza');
