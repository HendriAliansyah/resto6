// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(staffService)
const staffServiceProvider = StaffServiceProvider._();

final class StaffServiceProvider
    extends $FunctionalProvider<StaffService, StaffService, StaffService>
    with $Provider<StaffService> {
  const StaffServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'staffServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$staffServiceHash();

  @$internal
  @override
  $ProviderElement<StaffService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StaffService create(Ref ref) {
    return staffService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StaffService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StaffService>(value),
    );
  }
}

String _$staffServiceHash() => r'b83b330d3fad854bd01b1be058951b42519c5550';

@ProviderFor(staffListStream)
const staffListStreamProvider = StaffListStreamProvider._();

final class StaffListStreamProvider extends $FunctionalProvider<
        AsyncValue<List<Staff>>, List<Staff>, Stream<List<Staff>>>
    with $FutureModifier<List<Staff>>, $StreamProvider<List<Staff>> {
  const StaffListStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'staffListStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$staffListStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<Staff>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Staff>> create(Ref ref) {
    return staffListStream(ref);
  }
}

String _$staffListStreamHash() => r'7320d84c3a4f19e08774db47f590e065ae8494e5';

@ProviderFor(joinRequestsStream)
const joinRequestsStreamProvider = JoinRequestsStreamProvider._();

final class JoinRequestsStreamProvider extends $FunctionalProvider<
        AsyncValue<List<JoinRequestModel>>,
        List<JoinRequestModel>,
        Stream<List<JoinRequestModel>>>
    with
        $FutureModifier<List<JoinRequestModel>>,
        $StreamProvider<List<JoinRequestModel>> {
  const JoinRequestsStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'joinRequestsStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$joinRequestsStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<JoinRequestModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<JoinRequestModel>> create(Ref ref) {
    return joinRequestsStream(ref);
  }
}

String _$joinRequestsStreamHash() =>
    r'91f9f74bd0863b09a28ed9c1f1f861a8ecc00688';

@ProviderFor(staffController)
const staffControllerProvider = StaffControllerProvider._();

final class StaffControllerProvider extends $FunctionalProvider<StaffController,
    StaffController, StaffController> with $Provider<StaffController> {
  const StaffControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'staffControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$staffControllerHash();

  @$internal
  @override
  $ProviderElement<StaffController> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StaffController create(Ref ref) {
    return staffController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StaffController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StaffController>(value),
    );
  }
}

String _$staffControllerHash() => r'296231a4629ee0d41685d07cbeab7d568dbc9ae0';

@ProviderFor(sortedStaff)
const sortedStaffProvider = SortedStaffProvider._();

final class SortedStaffProvider
    extends $FunctionalProvider<List<Staff>, List<Staff>, List<Staff>>
    with $Provider<List<Staff>> {
  const SortedStaffProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sortedStaffProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sortedStaffHash();

  @$internal
  @override
  $ProviderElement<List<Staff>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Staff> create(Ref ref) {
    return sortedStaff(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Staff> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Staff>>(value),
    );
  }
}

String _$sortedStaffHash() => r'93855698bc21f1cfc78317aa8c0568fd91f3341b';
