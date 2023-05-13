//event parent
import 'Usaha.dart';

abstract class DataEvent {}

class FetchDataEvent extends DataEvent {}

class DataSiapEvent extends DataEvent {
  final List<Usaha> activity;
  DataSiapEvent(this.activity);
}
