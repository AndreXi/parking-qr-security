import 'package:intl/intl.dart';

String ciFormatter(String ci) {
  final nationality = ci.substring(0, 1);
  final ciNumber = int.parse(ci.substring(1));
  final f = NumberFormat('###,###,###', 'es-VE');
  return '$nationality - ${f.format(ciNumber)}';
}
