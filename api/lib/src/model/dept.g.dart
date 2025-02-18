// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dept.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Dept extends Dept {
  @override
  final String id;
  @override
  final String? dept;
  @override
  final String? displayName;
  @override
  final String? phone;
  @override
  final String? room;

  factory _$Dept([void Function(DeptBuilder)? updates]) =>
      (new DeptBuilder()..update(updates))._build();

  _$Dept._(
      {required this.id, this.dept, this.displayName, this.phone, this.room})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Dept', 'id');
  }

  @override
  Dept rebuild(void Function(DeptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeptBuilder toBuilder() => new DeptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dept &&
        id == other.id &&
        dept == other.dept &&
        displayName == other.displayName &&
        phone == other.phone &&
        room == other.room;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, dept.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, room.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Dept')
          ..add('id', id)
          ..add('dept', dept)
          ..add('displayName', displayName)
          ..add('phone', phone)
          ..add('room', room))
        .toString();
  }
}

class DeptBuilder implements Builder<Dept, DeptBuilder> {
  _$Dept? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _dept;
  String? get dept => _$this._dept;
  set dept(String? dept) => _$this._dept = dept;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  DeptBuilder() {
    Dept._defaults(this);
  }

  DeptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dept = $v.dept;
      _displayName = $v.displayName;
      _phone = $v.phone;
      _room = $v.room;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dept other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Dept;
  }

  @override
  void update(void Function(DeptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Dept build() => _build();

  _$Dept _build() {
    final _$result = _$v ??
        new _$Dept._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Dept', 'id'),
          dept: dept,
          displayName: displayName,
          phone: phone,
          room: room,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
