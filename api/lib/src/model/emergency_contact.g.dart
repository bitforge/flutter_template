// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_contact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmergencyContact extends EmergencyContact {
  @override
  final String id;
  @override
  final String? displayName;
  @override
  final String? phone;

  factory _$EmergencyContact([void Function(EmergencyContactBuilder)? updates]) =>
      (new EmergencyContactBuilder()..update(updates))._build();

  _$EmergencyContact._({required this.id, this.displayName, this.phone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'EmergencyContact', 'id');
  }

  @override
  EmergencyContact rebuild(void Function(EmergencyContactBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  EmergencyContactBuilder toBuilder() => new EmergencyContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmergencyContact && id == other.id && displayName == other.displayName && phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmergencyContact')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('phone', phone))
        .toString();
  }
}

class EmergencyContactBuilder implements Builder<EmergencyContact, EmergencyContactBuilder> {
  _$EmergencyContact? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  EmergencyContactBuilder() {
    EmergencyContact._defaults(this);
  }

  EmergencyContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmergencyContact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmergencyContact;
  }

  @override
  void update(void Function(EmergencyContactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmergencyContact build() => _build();

  _$EmergencyContact _build() {
    final _$result = _$v ??
        new _$EmergencyContact._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EmergencyContact', 'id'),
          displayName: displayName,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
