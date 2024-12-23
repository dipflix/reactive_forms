// Copyright 2020 Joan Pablo Jimenez Milian. All rights reserved.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.

/// Represent the state of a [FormControl].
base class ControlState<T> {
  final T? value;
  final bool? disabled;

  /// Constructs a state with a default [value] and a [disabled] status.
  const ControlState({
    this.value,
    this.disabled,
  });

  /// Creates a copy of this state with the given fields replaced.
  ControlState<T> copyWith({
    T? value,
    bool? disabled,
  }) {
    return ControlState(
      value: value ?? this.value,
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ControlState<T> &&
        other.value == value &&
        other.disabled == disabled;
  }

  @override
  int get hashCode => value.hashCode ^ disabled.hashCode;

  @override
  String toString() => 'ControlState(value: $value, disabled: $disabled)';
}
