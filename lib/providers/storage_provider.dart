// lib/providers/storage_provider.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/services/storage_service.dart';

part 'storage_provider.g.dart';

@riverpod
StorageService storageService(Ref ref) {
  return StorageService();
}
