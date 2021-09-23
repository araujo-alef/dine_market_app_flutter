import 'dart:async';

class QuantProductBloc {
  int _quant = 1;
  int get quant => _quant;

  final quantController = StreamController<int>();

  Stream<int> get quantStream => quantController.stream;

  void incrementQuant() {
    if(quant < 99) {
      _quant++;
      quantController.sink.add(quant);
    }
  }

  void decrementQuant() {
    if(quant > 1) {
      _quant--;
      quantController.sink.add(quant);
    }
  }

  void closeQuantStream() {
    quantController.close();
  }
}