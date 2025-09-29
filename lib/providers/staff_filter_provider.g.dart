// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StaffFilter)
const staffFilterProvider = StaffFilterProvider._();

final class StaffFilterProvider
    extends $NotifierProvider<StaffFilter, StaffFilterState> {
  const StaffFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'staffFilterProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$staffFilterHash();

  @$internal
  @override
  StaffFilter create() => StaffFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StaffFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StaffFilterState>(value),
    );
  }
}

String _$staffFilterHash() => r'5bc76765b11091ed3b0ec0b6c5987fcb109c6a52';

abstract class _$StaffFilter extends $Notifier<StaffFilterState> {
  StaffFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<StaffFilterState, StaffFilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<StaffFilterState, StaffFilterState>,
        StaffFilterState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
