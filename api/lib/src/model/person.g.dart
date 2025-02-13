// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Person extends Person {
  @override
  final String id;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? displayName;
  @override
  final String? dept;
  @override
  final String? phone;
  @override
  final String? mail;

  factory _$Person([void Function(PersonBuilder)? updates]) => (new PersonBuilder()..update(updates))._build();

  _$Person._({required this.id, this.lastName, this.firstName, this.displayName, this.dept, this.phone, this.mail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Person', 'id');
  }

  @override
  Person rebuild(void Function(PersonBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        id == other.id &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        displayName == other.displayName &&
        dept == other.dept &&
        phone == other.phone &&
        mail == other.mail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, dept.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Person')
          ..add('id', id)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('displayName', displayName)
          ..add('dept', dept)
          ..add('phone', phone)
          ..add('mail', mail))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _dept;
  String? get dept => _$this._dept;
  set dept(String? dept) => _$this._dept = dept;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  PersonBuilder() {
    Person._defaults(this);
  }

  PersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _displayName = $v.displayName;
      _dept = $v.dept;
      _phone = $v.phone;
      _mail = $v.mail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Person;
  }

  @override
  void update(void Function(PersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Person build() => _build();

  _$Person _build() {
    final _$result = _$v ??
        new _$Person._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Person', 'id'),
          lastName: lastName,
          firstName: firstName,
          displayName: displayName,
          dept: dept,
          phone: phone,
          mail: mail,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
