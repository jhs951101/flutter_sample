import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

void logger(dynamic value) {
  if (kReleaseMode) {
    return;
  } else if (kDebugMode) {
    final logger = Logger();
    const maxLength = 800; // Define a suitable chunk size

    if (value.toString().length <= maxLength) {
      logger.d(value);
    } else {
      final stringValue = value.toString();
      final chunks = _splitStringIntoChunks(stringValue, maxLength);

      for (final chunk in chunks) {
        logger.d(chunk);
      }
    }
  }
}

Iterable<String> _splitStringIntoChunks(String text, int chunkSize) {
  return [
    for (int i = 0; i < text.length; i += chunkSize)
      text.substring(
        i,
        i + chunkSize > text.length ? text.length : i + chunkSize,
      ),
  ];
}
