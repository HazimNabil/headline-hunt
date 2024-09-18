import 'package:timeago/timeago.dart' as timeago;

String formatDate(DateTime date) {
  final timeAgo = timeago.format(date, locale: 'en_short');
  return '$timeAgo ago';
}
