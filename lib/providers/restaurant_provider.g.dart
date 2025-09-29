// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(restaurantService)
const restaurantServiceProvider = RestaurantServiceProvider._();

final class RestaurantServiceProvider extends $FunctionalProvider<
    RestaurantService,
    RestaurantService,
    RestaurantService> with $Provider<RestaurantService> {
  const RestaurantServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'restaurantServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$restaurantServiceHash();

  @$internal
  @override
  $ProviderElement<RestaurantService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RestaurantService create(Ref ref) {
    return restaurantService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestaurantService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestaurantService>(value),
    );
  }
}

String _$restaurantServiceHash() => r'cb58d566c056655f18ba6ec8a8cb0394fdcb304e';

@ProviderFor(restaurantStream)
const restaurantStreamProvider = RestaurantStreamProvider._();

final class RestaurantStreamProvider extends $FunctionalProvider<
        AsyncValue<RestaurantModel?>,
        RestaurantModel?,
        Stream<RestaurantModel?>>
    with $FutureModifier<RestaurantModel?>, $StreamProvider<RestaurantModel?> {
  const RestaurantStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'restaurantStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$restaurantStreamHash();

  @$internal
  @override
  $StreamProviderElement<RestaurantModel?> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<RestaurantModel?> create(Ref ref) {
    return restaurantStream(ref);
  }
}

String _$restaurantStreamHash() => r'818632aa5402bf7fc1b98bcebce61e94bbde33d8';

@ProviderFor(functions)
const functionsProvider = FunctionsProvider._();

final class FunctionsProvider extends $FunctionalProvider<FirebaseFunctions,
    FirebaseFunctions, FirebaseFunctions> with $Provider<FirebaseFunctions> {
  const FunctionsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'functionsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$functionsHash();

  @$internal
  @override
  $ProviderElement<FirebaseFunctions> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseFunctions create(Ref ref) {
    return functions(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseFunctions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseFunctions>(value),
    );
  }
}

String _$functionsHash() => r'7b34c0406d9143c003b9f1f4f748715f456331a1';

@ProviderFor(RestaurantController)
const restaurantControllerProvider = RestaurantControllerProvider._();

final class RestaurantControllerProvider
    extends $AsyncNotifierProvider<RestaurantController, void> {
  const RestaurantControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'restaurantControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$restaurantControllerHash();

  @$internal
  @override
  RestaurantController create() => RestaurantController();
}

String _$restaurantControllerHash() =>
    r'54dce5e5a16aea86b3787b9c51829e493129083b';

abstract class _$RestaurantController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
