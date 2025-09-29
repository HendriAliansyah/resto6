// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(notificationService)
const notificationServiceProvider = NotificationServiceProvider._();

final class NotificationServiceProvider extends $FunctionalProvider<
    NotificationService,
    NotificationService,
    NotificationService> with $Provider<NotificationService> {
  const NotificationServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'notificationServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$notificationServiceHash();

  @$internal
  @override
  $ProviderElement<NotificationService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NotificationService create(Ref ref) {
    return notificationService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationService>(value),
    );
  }
}

String _$notificationServiceHash() =>
    r'96969bc13ba04fb7ab202af06271f196ab5a0e11';

@ProviderFor(notificationsStream)
const notificationsStreamProvider = NotificationsStreamProvider._();

final class NotificationsStreamProvider extends $FunctionalProvider<
        AsyncValue<List<NotificationModel>>,
        List<NotificationModel>,
        Stream<List<NotificationModel>>>
    with
        $FutureModifier<List<NotificationModel>>,
        $StreamProvider<List<NotificationModel>> {
  const NotificationsStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'notificationsStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$notificationsStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<NotificationModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<NotificationModel>> create(Ref ref) {
    return notificationsStream(ref);
  }
}

String _$notificationsStreamHash() =>
    r'1acd8f6d5d373bf538e6f7039bb6811c8df0dd57';

@ProviderFor(fcmService)
const fcmServiceProvider = FcmServiceProvider._();

final class FcmServiceProvider
    extends $FunctionalProvider<FcmService, FcmService, FcmService>
    with $Provider<FcmService> {
  const FcmServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fcmServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fcmServiceHash();

  @$internal
  @override
  $ProviderElement<FcmService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FcmService create(Ref ref) {
    return fcmService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FcmService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FcmService>(value),
    );
  }
}

String _$fcmServiceHash() => r'cde053b52e66c35295b177a509e7b4e4de891d6d';

@ProviderFor(localNotificationService)
const localNotificationServiceProvider = LocalNotificationServiceProvider._();

final class LocalNotificationServiceProvider extends $FunctionalProvider<
    LocalNotificationService,
    LocalNotificationService,
    LocalNotificationService> with $Provider<LocalNotificationService> {
  const LocalNotificationServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'localNotificationServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$localNotificationServiceHash();

  @$internal
  @override
  $ProviderElement<LocalNotificationService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LocalNotificationService create(Ref ref) {
    return localNotificationService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalNotificationService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalNotificationService>(value),
    );
  }
}

String _$localNotificationServiceHash() =>
    r'1ca3171fb374ae44235a0d2518ac80aa89b7284e';

@ProviderFor(notificationController)
const notificationControllerProvider = NotificationControllerProvider._();

final class NotificationControllerProvider extends $FunctionalProvider<
    NotificationController,
    NotificationController,
    NotificationController> with $Provider<NotificationController> {
  const NotificationControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'notificationControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$notificationControllerHash();

  @$internal
  @override
  $ProviderElement<NotificationController> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NotificationController create(Ref ref) {
    return notificationController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationController>(value),
    );
  }
}

String _$notificationControllerHash() =>
    r'8988b7da1fbc86a78d4d5f84f89c03b4de9958d7';
