import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Query$ViewMe {
  Query$ViewMe({
    this.viewMe,
    this.$__typename = 'Query',
  });

  factory Query$ViewMe.fromJson(Map<String, dynamic> json) {
    final l$viewMe = json['viewMe'];
    final l$$__typename = json['__typename'];
    return Query$ViewMe(
      viewMe: l$viewMe == null
          ? null
          : Query$ViewMe$viewMe.fromJson((l$viewMe as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ViewMe$viewMe? viewMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$viewMe = viewMe;
    _resultData['viewMe'] = l$viewMe?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$viewMe = viewMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$viewMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ViewMe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$viewMe = viewMe;
    final lOther$viewMe = other.viewMe;
    if (l$viewMe != lOther$viewMe) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ViewMe on Query$ViewMe {
  CopyWith$Query$ViewMe<Query$ViewMe> get copyWith => CopyWith$Query$ViewMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ViewMe<TRes> {
  factory CopyWith$Query$ViewMe(
    Query$ViewMe instance,
    TRes Function(Query$ViewMe) then,
  ) = _CopyWithImpl$Query$ViewMe;

  factory CopyWith$Query$ViewMe.stub(TRes res) = _CopyWithStubImpl$Query$ViewMe;

  TRes call({
    Query$ViewMe$viewMe? viewMe,
    String? $__typename,
  });
  CopyWith$Query$ViewMe$viewMe<TRes> get viewMe;
}

class _CopyWithImpl$Query$ViewMe<TRes> implements CopyWith$Query$ViewMe<TRes> {
  _CopyWithImpl$Query$ViewMe(
    this._instance,
    this._then,
  );

  final Query$ViewMe _instance;

  final TRes Function(Query$ViewMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ViewMe(
        viewMe: viewMe == _undefined
            ? _instance.viewMe
            : (viewMe as Query$ViewMe$viewMe?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ViewMe$viewMe<TRes> get viewMe {
    final local$viewMe = _instance.viewMe;
    return local$viewMe == null
        ? CopyWith$Query$ViewMe$viewMe.stub(_then(_instance))
        : CopyWith$Query$ViewMe$viewMe(local$viewMe, (e) => call(viewMe: e));
  }
}

class _CopyWithStubImpl$Query$ViewMe<TRes>
    implements CopyWith$Query$ViewMe<TRes> {
  _CopyWithStubImpl$Query$ViewMe(this._res);

  TRes _res;

  call({
    Query$ViewMe$viewMe? viewMe,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ViewMe$viewMe<TRes> get viewMe =>
      CopyWith$Query$ViewMe$viewMe.stub(_res);
}

const documentNodeQueryViewMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ViewMe'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'viewMe'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'profilePictureUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dob'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateJoined'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastLogin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'listing'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'number'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'countryCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$ViewMe _parserFn$Query$ViewMe(Map<String, dynamic> data) =>
    Query$ViewMe.fromJson(data);
typedef OnQueryComplete$Query$ViewMe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ViewMe?,
);

class Options$Query$ViewMe extends graphql.QueryOptions<Query$ViewMe> {
  Options$Query$ViewMe({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ViewMe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ViewMe? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$ViewMe(data),
                  ),
          onError: onError,
          document: documentNodeQueryViewMe,
          parserFn: _parserFn$Query$ViewMe,
        );

  final OnQueryComplete$Query$ViewMe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ViewMe
    extends graphql.WatchQueryOptions<Query$ViewMe> {
  WatchOptions$Query$ViewMe({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ViewMe? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryViewMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ViewMe,
        );
}

class FetchMoreOptions$Query$ViewMe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ViewMe({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryViewMe,
        );
}

extension ClientExtension$Query$ViewMe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ViewMe>> query$ViewMe(
          [Options$Query$ViewMe? options]) async =>
      await this.query(options ?? Options$Query$ViewMe());
  graphql.ObservableQuery<Query$ViewMe> watchQuery$ViewMe(
          [WatchOptions$Query$ViewMe? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ViewMe());
  void writeQuery$ViewMe({
    required Query$ViewMe data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryViewMe)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ViewMe? readQuery$ViewMe({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryViewMe)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ViewMe.fromJson(result);
  }
}

class Query$ViewMe$viewMe {
  Query$ViewMe$viewMe({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.bio,
    this.profilePictureUrl,
    this.gender,
    this.displayName,
    this.dob,
    this.dateJoined,
    this.lastLogin,
    this.fullName,
    this.listing,
    this.phone,
    this.$__typename = 'UserType',
  });

  factory Query$ViewMe$viewMe.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$bio = json['bio'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$gender = json['gender'];
    final l$displayName = json['displayName'];
    final l$dob = json['dob'];
    final l$dateJoined = json['dateJoined'];
    final l$lastLogin = json['lastLogin'];
    final l$fullName = json['fullName'];
    final l$listing = json['listing'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$ViewMe$viewMe(
      id: (l$id as int?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      username: (l$username as String?),
      email: (l$email as String?),
      bio: (l$bio as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      gender: (l$gender as String?),
      displayName: (l$displayName as String?),
      dob: l$dob == null ? null : DateTime.parse((l$dob as String)),
      dateJoined: l$dateJoined == null
          ? null
          : DateTime.parse((l$dateJoined as String)),
      lastLogin:
          l$lastLogin == null ? null : DateTime.parse((l$lastLogin as String)),
      fullName: (l$fullName as String?),
      listing: (l$listing as int?),
      phone: l$phone == null
          ? null
          : Query$ViewMe$viewMe$phone.fromJson(
              (l$phone as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? firstName;

  final String? lastName;

  final String? username;

  final String? email;

  final String? bio;

  final String? profilePictureUrl;

  final String? gender;

  final String? displayName;

  final DateTime? dob;

  final DateTime? dateJoined;

  final DateTime? lastLogin;

  final String? fullName;

  final int? listing;

  final Query$ViewMe$viewMe$phone? phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$dob = dob;
    _resultData['dob'] = l$dob?.toIso8601String();
    final l$dateJoined = dateJoined;
    _resultData['dateJoined'] = l$dateJoined?.toIso8601String();
    final l$lastLogin = lastLogin;
    _resultData['lastLogin'] = l$lastLogin?.toIso8601String();
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$listing = listing;
    _resultData['listing'] = l$listing;
    final l$phone = phone;
    _resultData['phone'] = l$phone?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$username = username;
    final l$email = email;
    final l$bio = bio;
    final l$profilePictureUrl = profilePictureUrl;
    final l$gender = gender;
    final l$displayName = displayName;
    final l$dob = dob;
    final l$dateJoined = dateJoined;
    final l$lastLogin = lastLogin;
    final l$fullName = fullName;
    final l$listing = listing;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$username,
      l$email,
      l$bio,
      l$profilePictureUrl,
      l$gender,
      l$displayName,
      l$dob,
      l$dateJoined,
      l$lastLogin,
      l$fullName,
      l$listing,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ViewMe$viewMe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$dateJoined = dateJoined;
    final lOther$dateJoined = other.dateJoined;
    if (l$dateJoined != lOther$dateJoined) {
      return false;
    }
    final l$lastLogin = lastLogin;
    final lOther$lastLogin = other.lastLogin;
    if (l$lastLogin != lOther$lastLogin) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$listing = listing;
    final lOther$listing = other.listing;
    if (l$listing != lOther$listing) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ViewMe$viewMe on Query$ViewMe$viewMe {
  CopyWith$Query$ViewMe$viewMe<Query$ViewMe$viewMe> get copyWith =>
      CopyWith$Query$ViewMe$viewMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ViewMe$viewMe<TRes> {
  factory CopyWith$Query$ViewMe$viewMe(
    Query$ViewMe$viewMe instance,
    TRes Function(Query$ViewMe$viewMe) then,
  ) = _CopyWithImpl$Query$ViewMe$viewMe;

  factory CopyWith$Query$ViewMe$viewMe.stub(TRes res) =
      _CopyWithStubImpl$Query$ViewMe$viewMe;

  TRes call({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
    int? listing,
    Query$ViewMe$viewMe$phone? phone,
    String? $__typename,
  });
  CopyWith$Query$ViewMe$viewMe$phone<TRes> get phone;
}

class _CopyWithImpl$Query$ViewMe$viewMe<TRes>
    implements CopyWith$Query$ViewMe$viewMe<TRes> {
  _CopyWithImpl$Query$ViewMe$viewMe(
    this._instance,
    this._then,
  );

  final Query$ViewMe$viewMe _instance;

  final TRes Function(Query$ViewMe$viewMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? bio = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? gender = _undefined,
    Object? displayName = _undefined,
    Object? dob = _undefined,
    Object? dateJoined = _undefined,
    Object? lastLogin = _undefined,
    Object? fullName = _undefined,
    Object? listing = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ViewMe$viewMe(
        id: id == _undefined ? _instance.id : (id as int?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        bio: bio == _undefined ? _instance.bio : (bio as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        dateJoined: dateJoined == _undefined
            ? _instance.dateJoined
            : (dateJoined as DateTime?),
        lastLogin: lastLogin == _undefined
            ? _instance.lastLogin
            : (lastLogin as DateTime?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        listing: listing == _undefined ? _instance.listing : (listing as int?),
        phone: phone == _undefined
            ? _instance.phone
            : (phone as Query$ViewMe$viewMe$phone?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ViewMe$viewMe$phone<TRes> get phone {
    final local$phone = _instance.phone;
    return local$phone == null
        ? CopyWith$Query$ViewMe$viewMe$phone.stub(_then(_instance))
        : CopyWith$Query$ViewMe$viewMe$phone(
            local$phone, (e) => call(phone: e));
  }
}

class _CopyWithStubImpl$Query$ViewMe$viewMe<TRes>
    implements CopyWith$Query$ViewMe$viewMe<TRes> {
  _CopyWithStubImpl$Query$ViewMe$viewMe(this._res);

  TRes _res;

  call({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
    int? listing,
    Query$ViewMe$viewMe$phone? phone,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ViewMe$viewMe$phone<TRes> get phone =>
      CopyWith$Query$ViewMe$viewMe$phone.stub(_res);
}

class Query$ViewMe$viewMe$phone {
  Query$ViewMe$viewMe$phone({
    this.number,
    this.countryCode,
    this.$__typename = 'PhoneType',
  });

  factory Query$ViewMe$viewMe$phone.fromJson(Map<String, dynamic> json) {
    final l$number = json['number'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$ViewMe$viewMe$phone(
      number: (l$number as String?),
      countryCode: (l$countryCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? number;

  final String? countryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$number = number;
    _resultData['number'] = l$number;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$number = number;
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$number,
      l$countryCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ViewMe$viewMe$phone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ViewMe$viewMe$phone
    on Query$ViewMe$viewMe$phone {
  CopyWith$Query$ViewMe$viewMe$phone<Query$ViewMe$viewMe$phone> get copyWith =>
      CopyWith$Query$ViewMe$viewMe$phone(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ViewMe$viewMe$phone<TRes> {
  factory CopyWith$Query$ViewMe$viewMe$phone(
    Query$ViewMe$viewMe$phone instance,
    TRes Function(Query$ViewMe$viewMe$phone) then,
  ) = _CopyWithImpl$Query$ViewMe$viewMe$phone;

  factory CopyWith$Query$ViewMe$viewMe$phone.stub(TRes res) =
      _CopyWithStubImpl$Query$ViewMe$viewMe$phone;

  TRes call({
    String? number,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ViewMe$viewMe$phone<TRes>
    implements CopyWith$Query$ViewMe$viewMe$phone<TRes> {
  _CopyWithImpl$Query$ViewMe$viewMe$phone(
    this._instance,
    this._then,
  );

  final Query$ViewMe$viewMe$phone _instance;

  final TRes Function(Query$ViewMe$viewMe$phone) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? number = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ViewMe$viewMe$phone(
        number: number == _undefined ? _instance.number : (number as String?),
        countryCode: countryCode == _undefined
            ? _instance.countryCode
            : (countryCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ViewMe$viewMe$phone<TRes>
    implements CopyWith$Query$ViewMe$viewMe$phone<TRes> {
  _CopyWithStubImpl$Query$ViewMe$viewMe$phone(this._res);

  TRes _res;

  call({
    String? number,
    String? countryCode,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchUser {
  factory Variables$Query$SearchUser({required String search}) =>
      Variables$Query$SearchUser._({
        r'search': search,
      });

  Variables$Query$SearchUser._(this._$data);

  factory Variables$Query$SearchUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$search = data['search'];
    result$data['search'] = (l$search as String);
    return Variables$Query$SearchUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get search => (_$data['search'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$search = search;
    result$data['search'] = l$search;
    return result$data;
  }

  CopyWith$Variables$Query$SearchUser<Variables$Query$SearchUser>
      get copyWith => CopyWith$Variables$Query$SearchUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    return Object.hashAll([l$search]);
  }
}

abstract class CopyWith$Variables$Query$SearchUser<TRes> {
  factory CopyWith$Variables$Query$SearchUser(
    Variables$Query$SearchUser instance,
    TRes Function(Variables$Query$SearchUser) then,
  ) = _CopyWithImpl$Variables$Query$SearchUser;

  factory CopyWith$Variables$Query$SearchUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchUser;

  TRes call({String? search});
}

class _CopyWithImpl$Variables$Query$SearchUser<TRes>
    implements CopyWith$Variables$Query$SearchUser<TRes> {
  _CopyWithImpl$Variables$Query$SearchUser(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchUser _instance;

  final TRes Function(Variables$Query$SearchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? search = _undefined}) =>
      _then(Variables$Query$SearchUser._({
        ..._instance._$data,
        if (search != _undefined && search != null)
          'search': (search as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchUser<TRes>
    implements CopyWith$Variables$Query$SearchUser<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchUser(this._res);

  TRes _res;

  call({String? search}) => _res;
}

class Query$SearchUser {
  Query$SearchUser({
    this.searchUsers,
    this.$__typename = 'Query',
  });

  factory Query$SearchUser.fromJson(Map<String, dynamic> json) {
    final l$searchUsers = json['searchUsers'];
    final l$$__typename = json['__typename'];
    return Query$SearchUser(
      searchUsers: (l$searchUsers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchUser$searchUsers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchUser$searchUsers?>? searchUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchUsers = searchUsers;
    _resultData['searchUsers'] =
        l$searchUsers?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchUsers = searchUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchUsers == null
          ? null
          : Object.hashAll(l$searchUsers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchUsers = searchUsers;
    final lOther$searchUsers = other.searchUsers;
    if (l$searchUsers != null && lOther$searchUsers != null) {
      if (l$searchUsers.length != lOther$searchUsers.length) {
        return false;
      }
      for (int i = 0; i < l$searchUsers.length; i++) {
        final l$searchUsers$entry = l$searchUsers[i];
        final lOther$searchUsers$entry = lOther$searchUsers[i];
        if (l$searchUsers$entry != lOther$searchUsers$entry) {
          return false;
        }
      }
    } else if (l$searchUsers != lOther$searchUsers) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchUser on Query$SearchUser {
  CopyWith$Query$SearchUser<Query$SearchUser> get copyWith =>
      CopyWith$Query$SearchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchUser<TRes> {
  factory CopyWith$Query$SearchUser(
    Query$SearchUser instance,
    TRes Function(Query$SearchUser) then,
  ) = _CopyWithImpl$Query$SearchUser;

  factory CopyWith$Query$SearchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUser;

  TRes call({
    List<Query$SearchUser$searchUsers?>? searchUsers,
    String? $__typename,
  });
  TRes searchUsers(
      Iterable<Query$SearchUser$searchUsers?>? Function(
              Iterable<
                  CopyWith$Query$SearchUser$searchUsers<
                      Query$SearchUser$searchUsers>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchUser<TRes>
    implements CopyWith$Query$SearchUser<TRes> {
  _CopyWithImpl$Query$SearchUser(
    this._instance,
    this._then,
  );

  final Query$SearchUser _instance;

  final TRes Function(Query$SearchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUser(
        searchUsers: searchUsers == _undefined
            ? _instance.searchUsers
            : (searchUsers as List<Query$SearchUser$searchUsers?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes searchUsers(
          Iterable<Query$SearchUser$searchUsers?>? Function(
                  Iterable<
                      CopyWith$Query$SearchUser$searchUsers<
                          Query$SearchUser$searchUsers>?>?)
              _fn) =>
      call(
          searchUsers: _fn(_instance.searchUsers?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchUser$searchUsers(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchUser<TRes>
    implements CopyWith$Query$SearchUser<TRes> {
  _CopyWithStubImpl$Query$SearchUser(this._res);

  TRes _res;

  call({
    List<Query$SearchUser$searchUsers?>? searchUsers,
    String? $__typename,
  }) =>
      _res;

  searchUsers(_fn) => _res;
}

const documentNodeQuerySearchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'searchUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'profilePictureUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dob'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateJoined'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastLogin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'listing'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'number'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'countryCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SearchUser _parserFn$Query$SearchUser(Map<String, dynamic> data) =>
    Query$SearchUser.fromJson(data);
typedef OnQueryComplete$Query$SearchUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchUser?,
);

class Options$Query$SearchUser extends graphql.QueryOptions<Query$SearchUser> {
  Options$Query$SearchUser({
    String? operationName,
    required Variables$Query$SearchUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchUser? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$SearchUser(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchUser,
          parserFn: _parserFn$Query$SearchUser,
        );

  final OnQueryComplete$Query$SearchUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchUser
    extends graphql.WatchQueryOptions<Query$SearchUser> {
  WatchOptions$Query$SearchUser({
    String? operationName,
    required Variables$Query$SearchUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySearchUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchUser,
        );
}

class FetchMoreOptions$Query$SearchUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchUser({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SearchUser variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearchUser,
        );
}

extension ClientExtension$Query$SearchUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchUser>> query$SearchUser(
          Options$Query$SearchUser options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SearchUser> watchQuery$SearchUser(
          WatchOptions$Query$SearchUser options) =>
      this.watchQuery(options);
  void writeQuery$SearchUser({
    required Query$SearchUser data,
    required Variables$Query$SearchUser variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchUser? readQuery$SearchUser({
    required Variables$Query$SearchUser variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchUser.fromJson(result);
  }
}

class Query$SearchUser$searchUsers {
  Query$SearchUser$searchUsers({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.bio,
    this.profilePictureUrl,
    this.gender,
    this.displayName,
    this.dob,
    this.dateJoined,
    this.lastLogin,
    this.fullName,
    this.listing,
    this.phone,
    this.$__typename = 'UserType',
  });

  factory Query$SearchUser$searchUsers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$bio = json['bio'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$gender = json['gender'];
    final l$displayName = json['displayName'];
    final l$dob = json['dob'];
    final l$dateJoined = json['dateJoined'];
    final l$lastLogin = json['lastLogin'];
    final l$fullName = json['fullName'];
    final l$listing = json['listing'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$SearchUser$searchUsers(
      id: (l$id as int?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      username: (l$username as String?),
      email: (l$email as String?),
      bio: (l$bio as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      gender: (l$gender as String?),
      displayName: (l$displayName as String?),
      dob: l$dob == null ? null : DateTime.parse((l$dob as String)),
      dateJoined: l$dateJoined == null
          ? null
          : DateTime.parse((l$dateJoined as String)),
      lastLogin:
          l$lastLogin == null ? null : DateTime.parse((l$lastLogin as String)),
      fullName: (l$fullName as String?),
      listing: (l$listing as int?),
      phone: l$phone == null
          ? null
          : Query$SearchUser$searchUsers$phone.fromJson(
              (l$phone as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? firstName;

  final String? lastName;

  final String? username;

  final String? email;

  final String? bio;

  final String? profilePictureUrl;

  final String? gender;

  final String? displayName;

  final DateTime? dob;

  final DateTime? dateJoined;

  final DateTime? lastLogin;

  final String? fullName;

  final int? listing;

  final Query$SearchUser$searchUsers$phone? phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$dob = dob;
    _resultData['dob'] = l$dob?.toIso8601String();
    final l$dateJoined = dateJoined;
    _resultData['dateJoined'] = l$dateJoined?.toIso8601String();
    final l$lastLogin = lastLogin;
    _resultData['lastLogin'] = l$lastLogin?.toIso8601String();
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$listing = listing;
    _resultData['listing'] = l$listing;
    final l$phone = phone;
    _resultData['phone'] = l$phone?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$username = username;
    final l$email = email;
    final l$bio = bio;
    final l$profilePictureUrl = profilePictureUrl;
    final l$gender = gender;
    final l$displayName = displayName;
    final l$dob = dob;
    final l$dateJoined = dateJoined;
    final l$lastLogin = lastLogin;
    final l$fullName = fullName;
    final l$listing = listing;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$username,
      l$email,
      l$bio,
      l$profilePictureUrl,
      l$gender,
      l$displayName,
      l$dob,
      l$dateJoined,
      l$lastLogin,
      l$fullName,
      l$listing,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchUser$searchUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$dateJoined = dateJoined;
    final lOther$dateJoined = other.dateJoined;
    if (l$dateJoined != lOther$dateJoined) {
      return false;
    }
    final l$lastLogin = lastLogin;
    final lOther$lastLogin = other.lastLogin;
    if (l$lastLogin != lOther$lastLogin) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$listing = listing;
    final lOther$listing = other.listing;
    if (l$listing != lOther$listing) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchUser$searchUsers
    on Query$SearchUser$searchUsers {
  CopyWith$Query$SearchUser$searchUsers<Query$SearchUser$searchUsers>
      get copyWith => CopyWith$Query$SearchUser$searchUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchUser$searchUsers<TRes> {
  factory CopyWith$Query$SearchUser$searchUsers(
    Query$SearchUser$searchUsers instance,
    TRes Function(Query$SearchUser$searchUsers) then,
  ) = _CopyWithImpl$Query$SearchUser$searchUsers;

  factory CopyWith$Query$SearchUser$searchUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUser$searchUsers;

  TRes call({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
    int? listing,
    Query$SearchUser$searchUsers$phone? phone,
    String? $__typename,
  });
  CopyWith$Query$SearchUser$searchUsers$phone<TRes> get phone;
}

class _CopyWithImpl$Query$SearchUser$searchUsers<TRes>
    implements CopyWith$Query$SearchUser$searchUsers<TRes> {
  _CopyWithImpl$Query$SearchUser$searchUsers(
    this._instance,
    this._then,
  );

  final Query$SearchUser$searchUsers _instance;

  final TRes Function(Query$SearchUser$searchUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? bio = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? gender = _undefined,
    Object? displayName = _undefined,
    Object? dob = _undefined,
    Object? dateJoined = _undefined,
    Object? lastLogin = _undefined,
    Object? fullName = _undefined,
    Object? listing = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUser$searchUsers(
        id: id == _undefined ? _instance.id : (id as int?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        bio: bio == _undefined ? _instance.bio : (bio as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        dateJoined: dateJoined == _undefined
            ? _instance.dateJoined
            : (dateJoined as DateTime?),
        lastLogin: lastLogin == _undefined
            ? _instance.lastLogin
            : (lastLogin as DateTime?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        listing: listing == _undefined ? _instance.listing : (listing as int?),
        phone: phone == _undefined
            ? _instance.phone
            : (phone as Query$SearchUser$searchUsers$phone?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchUser$searchUsers$phone<TRes> get phone {
    final local$phone = _instance.phone;
    return local$phone == null
        ? CopyWith$Query$SearchUser$searchUsers$phone.stub(_then(_instance))
        : CopyWith$Query$SearchUser$searchUsers$phone(
            local$phone, (e) => call(phone: e));
  }
}

class _CopyWithStubImpl$Query$SearchUser$searchUsers<TRes>
    implements CopyWith$Query$SearchUser$searchUsers<TRes> {
  _CopyWithStubImpl$Query$SearchUser$searchUsers(this._res);

  TRes _res;

  call({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
    int? listing,
    Query$SearchUser$searchUsers$phone? phone,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchUser$searchUsers$phone<TRes> get phone =>
      CopyWith$Query$SearchUser$searchUsers$phone.stub(_res);
}

class Query$SearchUser$searchUsers$phone {
  Query$SearchUser$searchUsers$phone({
    this.number,
    this.countryCode,
    this.$__typename = 'PhoneType',
  });

  factory Query$SearchUser$searchUsers$phone.fromJson(
      Map<String, dynamic> json) {
    final l$number = json['number'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchUser$searchUsers$phone(
      number: (l$number as String?),
      countryCode: (l$countryCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? number;

  final String? countryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$number = number;
    _resultData['number'] = l$number;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$number = number;
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$number,
      l$countryCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchUser$searchUsers$phone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchUser$searchUsers$phone
    on Query$SearchUser$searchUsers$phone {
  CopyWith$Query$SearchUser$searchUsers$phone<
          Query$SearchUser$searchUsers$phone>
      get copyWith => CopyWith$Query$SearchUser$searchUsers$phone(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchUser$searchUsers$phone<TRes> {
  factory CopyWith$Query$SearchUser$searchUsers$phone(
    Query$SearchUser$searchUsers$phone instance,
    TRes Function(Query$SearchUser$searchUsers$phone) then,
  ) = _CopyWithImpl$Query$SearchUser$searchUsers$phone;

  factory CopyWith$Query$SearchUser$searchUsers$phone.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUser$searchUsers$phone;

  TRes call({
    String? number,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchUser$searchUsers$phone<TRes>
    implements CopyWith$Query$SearchUser$searchUsers$phone<TRes> {
  _CopyWithImpl$Query$SearchUser$searchUsers$phone(
    this._instance,
    this._then,
  );

  final Query$SearchUser$searchUsers$phone _instance;

  final TRes Function(Query$SearchUser$searchUsers$phone) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? number = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUser$searchUsers$phone(
        number: number == _undefined ? _instance.number : (number as String?),
        countryCode: countryCode == _undefined
            ? _instance.countryCode
            : (countryCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchUser$searchUsers$phone<TRes>
    implements CopyWith$Query$SearchUser$searchUsers$phone<TRes> {
  _CopyWithStubImpl$Query$SearchUser$searchUsers$phone(this._res);

  TRes _res;

  call({
    String? number,
    String? countryCode,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetUser {
  factory Variables$Query$GetUser({required String username}) =>
      Variables$Query$GetUser._({
        r'username': username,
      });

  Variables$Query$GetUser._(this._$data);

  factory Variables$Query$GetUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Query$GetUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Query$GetUser<Variables$Query$GetUser> get copyWith =>
      CopyWith$Variables$Query$GetUser(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    return Object.hashAll([l$username]);
  }
}

abstract class CopyWith$Variables$Query$GetUser<TRes> {
  factory CopyWith$Variables$Query$GetUser(
    Variables$Query$GetUser instance,
    TRes Function(Variables$Query$GetUser) then,
  ) = _CopyWithImpl$Variables$Query$GetUser;

  factory CopyWith$Variables$Query$GetUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUser;

  TRes call({String? username});
}

class _CopyWithImpl$Variables$Query$GetUser<TRes>
    implements CopyWith$Variables$Query$GetUser<TRes> {
  _CopyWithImpl$Variables$Query$GetUser(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUser _instance;

  final TRes Function(Variables$Query$GetUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? username = _undefined}) =>
      _then(Variables$Query$GetUser._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUser<TRes>
    implements CopyWith$Variables$Query$GetUser<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUser(this._res);

  TRes _res;

  call({String? username}) => _res;
}

class Query$GetUser {
  Query$GetUser({
    this.getUser,
    this.$__typename = 'Query',
  });

  factory Query$GetUser.fromJson(Map<String, dynamic> json) {
    final l$getUser = json['getUser'];
    final l$$__typename = json['__typename'];
    return Query$GetUser(
      getUser: l$getUser == null
          ? null
          : Query$GetUser$getUser.fromJson((l$getUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUser$getUser? getUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getUser = getUser;
    _resultData['getUser'] = l$getUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getUser = getUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getUser = getUser;
    final lOther$getUser = other.getUser;
    if (l$getUser != lOther$getUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUser on Query$GetUser {
  CopyWith$Query$GetUser<Query$GetUser> get copyWith => CopyWith$Query$GetUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUser<TRes> {
  factory CopyWith$Query$GetUser(
    Query$GetUser instance,
    TRes Function(Query$GetUser) then,
  ) = _CopyWithImpl$Query$GetUser;

  factory CopyWith$Query$GetUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser;

  TRes call({
    Query$GetUser$getUser? getUser,
    String? $__typename,
  });
  CopyWith$Query$GetUser$getUser<TRes> get getUser;
}

class _CopyWithImpl$Query$GetUser<TRes>
    implements CopyWith$Query$GetUser<TRes> {
  _CopyWithImpl$Query$GetUser(
    this._instance,
    this._then,
  );

  final Query$GetUser _instance;

  final TRes Function(Query$GetUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser(
        getUser: getUser == _undefined
            ? _instance.getUser
            : (getUser as Query$GetUser$getUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUser$getUser<TRes> get getUser {
    final local$getUser = _instance.getUser;
    return local$getUser == null
        ? CopyWith$Query$GetUser$getUser.stub(_then(_instance))
        : CopyWith$Query$GetUser$getUser(
            local$getUser, (e) => call(getUser: e));
  }
}

class _CopyWithStubImpl$Query$GetUser<TRes>
    implements CopyWith$Query$GetUser<TRes> {
  _CopyWithStubImpl$Query$GetUser(this._res);

  TRes _res;

  call({
    Query$GetUser$getUser? getUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUser$getUser<TRes> get getUser =>
      CopyWith$Query$GetUser$getUser.stub(_res);
}

const documentNodeQueryGetUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'profilePictureUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dob'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateJoined'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastLogin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'listing'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'number'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'countryCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetUser _parserFn$Query$GetUser(Map<String, dynamic> data) =>
    Query$GetUser.fromJson(data);
typedef OnQueryComplete$Query$GetUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUser?,
);

class Options$Query$GetUser extends graphql.QueryOptions<Query$GetUser> {
  Options$Query$GetUser({
    String? operationName,
    required Variables$Query$GetUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUser? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUser,
          parserFn: _parserFn$Query$GetUser,
        );

  final OnQueryComplete$Query$GetUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUser
    extends graphql.WatchQueryOptions<Query$GetUser> {
  WatchOptions$Query$GetUser({
    String? operationName,
    required Variables$Query$GetUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUser,
        );
}

class FetchMoreOptions$Query$GetUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUser({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUser variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUser,
        );
}

extension ClientExtension$Query$GetUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUser>> query$GetUser(
          Options$Query$GetUser options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetUser> watchQuery$GetUser(
          WatchOptions$Query$GetUser options) =>
      this.watchQuery(options);
  void writeQuery$GetUser({
    required Query$GetUser data,
    required Variables$Query$GetUser variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUser? readQuery$GetUser({
    required Variables$Query$GetUser variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUser.fromJson(result);
  }
}

class Query$GetUser$getUser {
  Query$GetUser$getUser({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.bio,
    this.profilePictureUrl,
    this.gender,
    this.displayName,
    this.dob,
    this.dateJoined,
    this.lastLogin,
    this.fullName,
    this.listing,
    this.phone,
    this.$__typename = 'UserType',
  });

  factory Query$GetUser$getUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$bio = json['bio'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$gender = json['gender'];
    final l$displayName = json['displayName'];
    final l$dob = json['dob'];
    final l$dateJoined = json['dateJoined'];
    final l$lastLogin = json['lastLogin'];
    final l$fullName = json['fullName'];
    final l$listing = json['listing'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$GetUser$getUser(
      id: (l$id as int?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      username: (l$username as String?),
      email: (l$email as String?),
      bio: (l$bio as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      gender: (l$gender as String?),
      displayName: (l$displayName as String?),
      dob: l$dob == null ? null : DateTime.parse((l$dob as String)),
      dateJoined: l$dateJoined == null
          ? null
          : DateTime.parse((l$dateJoined as String)),
      lastLogin:
          l$lastLogin == null ? null : DateTime.parse((l$lastLogin as String)),
      fullName: (l$fullName as String?),
      listing: (l$listing as int?),
      phone: l$phone == null
          ? null
          : Query$GetUser$getUser$phone.fromJson(
              (l$phone as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? firstName;

  final String? lastName;

  final String? username;

  final String? email;

  final String? bio;

  final String? profilePictureUrl;

  final String? gender;

  final String? displayName;

  final DateTime? dob;

  final DateTime? dateJoined;

  final DateTime? lastLogin;

  final String? fullName;

  final int? listing;

  final Query$GetUser$getUser$phone? phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$dob = dob;
    _resultData['dob'] = l$dob?.toIso8601String();
    final l$dateJoined = dateJoined;
    _resultData['dateJoined'] = l$dateJoined?.toIso8601String();
    final l$lastLogin = lastLogin;
    _resultData['lastLogin'] = l$lastLogin?.toIso8601String();
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$listing = listing;
    _resultData['listing'] = l$listing;
    final l$phone = phone;
    _resultData['phone'] = l$phone?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$username = username;
    final l$email = email;
    final l$bio = bio;
    final l$profilePictureUrl = profilePictureUrl;
    final l$gender = gender;
    final l$displayName = displayName;
    final l$dob = dob;
    final l$dateJoined = dateJoined;
    final l$lastLogin = lastLogin;
    final l$fullName = fullName;
    final l$listing = listing;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$username,
      l$email,
      l$bio,
      l$profilePictureUrl,
      l$gender,
      l$displayName,
      l$dob,
      l$dateJoined,
      l$lastLogin,
      l$fullName,
      l$listing,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser$getUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$dateJoined = dateJoined;
    final lOther$dateJoined = other.dateJoined;
    if (l$dateJoined != lOther$dateJoined) {
      return false;
    }
    final l$lastLogin = lastLogin;
    final lOther$lastLogin = other.lastLogin;
    if (l$lastLogin != lOther$lastLogin) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$listing = listing;
    final lOther$listing = other.listing;
    if (l$listing != lOther$listing) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUser$getUser on Query$GetUser$getUser {
  CopyWith$Query$GetUser$getUser<Query$GetUser$getUser> get copyWith =>
      CopyWith$Query$GetUser$getUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUser$getUser<TRes> {
  factory CopyWith$Query$GetUser$getUser(
    Query$GetUser$getUser instance,
    TRes Function(Query$GetUser$getUser) then,
  ) = _CopyWithImpl$Query$GetUser$getUser;

  factory CopyWith$Query$GetUser$getUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser$getUser;

  TRes call({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
    int? listing,
    Query$GetUser$getUser$phone? phone,
    String? $__typename,
  });
  CopyWith$Query$GetUser$getUser$phone<TRes> get phone;
}

class _CopyWithImpl$Query$GetUser$getUser<TRes>
    implements CopyWith$Query$GetUser$getUser<TRes> {
  _CopyWithImpl$Query$GetUser$getUser(
    this._instance,
    this._then,
  );

  final Query$GetUser$getUser _instance;

  final TRes Function(Query$GetUser$getUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? bio = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? gender = _undefined,
    Object? displayName = _undefined,
    Object? dob = _undefined,
    Object? dateJoined = _undefined,
    Object? lastLogin = _undefined,
    Object? fullName = _undefined,
    Object? listing = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser$getUser(
        id: id == _undefined ? _instance.id : (id as int?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        bio: bio == _undefined ? _instance.bio : (bio as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        dob: dob == _undefined ? _instance.dob : (dob as DateTime?),
        dateJoined: dateJoined == _undefined
            ? _instance.dateJoined
            : (dateJoined as DateTime?),
        lastLogin: lastLogin == _undefined
            ? _instance.lastLogin
            : (lastLogin as DateTime?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        listing: listing == _undefined ? _instance.listing : (listing as int?),
        phone: phone == _undefined
            ? _instance.phone
            : (phone as Query$GetUser$getUser$phone?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUser$getUser$phone<TRes> get phone {
    final local$phone = _instance.phone;
    return local$phone == null
        ? CopyWith$Query$GetUser$getUser$phone.stub(_then(_instance))
        : CopyWith$Query$GetUser$getUser$phone(
            local$phone, (e) => call(phone: e));
  }
}

class _CopyWithStubImpl$Query$GetUser$getUser<TRes>
    implements CopyWith$Query$GetUser$getUser<TRes> {
  _CopyWithStubImpl$Query$GetUser$getUser(this._res);

  TRes _res;

  call({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? bio,
    String? profilePictureUrl,
    String? gender,
    String? displayName,
    DateTime? dob,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? fullName,
    int? listing,
    Query$GetUser$getUser$phone? phone,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUser$getUser$phone<TRes> get phone =>
      CopyWith$Query$GetUser$getUser$phone.stub(_res);
}

class Query$GetUser$getUser$phone {
  Query$GetUser$getUser$phone({
    this.number,
    this.countryCode,
    this.$__typename = 'PhoneType',
  });

  factory Query$GetUser$getUser$phone.fromJson(Map<String, dynamic> json) {
    final l$number = json['number'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetUser$getUser$phone(
      number: (l$number as String?),
      countryCode: (l$countryCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? number;

  final String? countryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$number = number;
    _resultData['number'] = l$number;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$number = number;
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$number,
      l$countryCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser$getUser$phone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUser$getUser$phone
    on Query$GetUser$getUser$phone {
  CopyWith$Query$GetUser$getUser$phone<Query$GetUser$getUser$phone>
      get copyWith => CopyWith$Query$GetUser$getUser$phone(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUser$getUser$phone<TRes> {
  factory CopyWith$Query$GetUser$getUser$phone(
    Query$GetUser$getUser$phone instance,
    TRes Function(Query$GetUser$getUser$phone) then,
  ) = _CopyWithImpl$Query$GetUser$getUser$phone;

  factory CopyWith$Query$GetUser$getUser$phone.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser$getUser$phone;

  TRes call({
    String? number,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUser$getUser$phone<TRes>
    implements CopyWith$Query$GetUser$getUser$phone<TRes> {
  _CopyWithImpl$Query$GetUser$getUser$phone(
    this._instance,
    this._then,
  );

  final Query$GetUser$getUser$phone _instance;

  final TRes Function(Query$GetUser$getUser$phone) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? number = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser$getUser$phone(
        number: number == _undefined ? _instance.number : (number as String?),
        countryCode: countryCode == _undefined
            ? _instance.countryCode
            : (countryCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUser$getUser$phone<TRes>
    implements CopyWith$Query$GetUser$getUser$phone<TRes> {
  _CopyWithStubImpl$Query$GetUser$getUser$phone(this._res);

  TRes _res;

  call({
    String? number,
    String? countryCode,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Product {
  factory Variables$Query$Product({required int id}) =>
      Variables$Query$Product._({
        r'id': id,
      });

  Variables$Query$Product._(this._$data);

  factory Variables$Query$Product.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$Product._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Product<Variables$Query$Product> get copyWith =>
      CopyWith$Variables$Query$Product(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Product<TRes> {
  factory CopyWith$Variables$Query$Product(
    Variables$Query$Product instance,
    TRes Function(Variables$Query$Product) then,
  ) = _CopyWithImpl$Variables$Query$Product;

  factory CopyWith$Variables$Query$Product.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Product;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$Product<TRes>
    implements CopyWith$Variables$Query$Product<TRes> {
  _CopyWithImpl$Variables$Query$Product(
    this._instance,
    this._then,
  );

  final Variables$Query$Product _instance;

  final TRes Function(Variables$Query$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Product._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Product<TRes>
    implements CopyWith$Variables$Query$Product<TRes> {
  _CopyWithStubImpl$Variables$Query$Product(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$Product {
  Query$Product({
    this.product,
    this.$__typename = 'Query',
  });

  factory Query$Product.fromJson(Map<String, dynamic> json) {
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$Product(
      product: l$product == null
          ? null
          : Query$Product$product.fromJson((l$product as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Product$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product on Query$Product {
  CopyWith$Query$Product<Query$Product> get copyWith => CopyWith$Query$Product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Product<TRes> {
  factory CopyWith$Query$Product(
    Query$Product instance,
    TRes Function(Query$Product) then,
  ) = _CopyWithImpl$Query$Product;

  factory CopyWith$Query$Product.stub(TRes res) =
      _CopyWithStubImpl$Query$Product;

  TRes call({
    Query$Product$product? product,
    String? $__typename,
  });
  CopyWith$Query$Product$product<TRes> get product;
}

class _CopyWithImpl$Query$Product<TRes>
    implements CopyWith$Query$Product<TRes> {
  _CopyWithImpl$Query$Product(
    this._instance,
    this._then,
  );

  final Query$Product _instance;

  final TRes Function(Query$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product(
        product: product == _undefined
            ? _instance.product
            : (product as Query$Product$product?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Product$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$Product$product.stub(_then(_instance))
        : CopyWith$Query$Product$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Query$Product<TRes>
    implements CopyWith$Query$Product<TRes> {
  _CopyWithStubImpl$Query$Product(this._res);

  TRes _res;

  call({
    Query$Product$product? product,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Product$product<TRes> get product =>
      CopyWith$Query$Product$product.stub(_res);
}

const documentNodeQueryProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Product'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'subCategory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'seller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'profilePictureUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'discountPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'size'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parcelSize'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'views'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userLiked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'imagesUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'brand'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Product _parserFn$Query$Product(Map<String, dynamic> data) =>
    Query$Product.fromJson(data);
typedef OnQueryComplete$Query$Product = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Product?,
);

class Options$Query$Product extends graphql.QueryOptions<Query$Product> {
  Options$Query$Product({
    String? operationName,
    required Variables$Query$Product variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Product? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Product? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Product(data),
                  ),
          onError: onError,
          document: documentNodeQueryProduct,
          parserFn: _parserFn$Query$Product,
        );

  final OnQueryComplete$Query$Product? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Product
    extends graphql.WatchQueryOptions<Query$Product> {
  WatchOptions$Query$Product({
    String? operationName,
    required Variables$Query$Product variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Product? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Product,
        );
}

class FetchMoreOptions$Query$Product extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Product({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Product variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryProduct,
        );
}

extension ClientExtension$Query$Product on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Product>> query$Product(
          Options$Query$Product options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Product> watchQuery$Product(
          WatchOptions$Query$Product options) =>
      this.watchQuery(options);
  void writeQuery$Product({
    required Query$Product data,
    required Variables$Query$Product variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryProduct),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Product? readQuery$Product({
    required Variables$Query$Product variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryProduct),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Product.fromJson(result);
  }
}

class Query$Product$product {
  Query$Product$product({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    required this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$Product$product.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$seller = json['seller'];
    final l$condition = json['condition'];
    final l$discountPrice = json['discountPrice'];
    final l$size = json['size'];
    final l$price = json['price'];
    final l$parcelSize = json['parcelSize'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$userLiked = json['userLiked'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$color = json['color'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$Product$product(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$Product$product$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$Product$product$subCategory.fromJson(
              (l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$Product$product$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as String),
      parcelSize: l$parcelSize == null
          ? null
          : fromJson$Enum$ProductsProductParcelSizeChoices(
              (l$parcelSize as String)),
      views: (l$views as int),
      likes: (l$likes as int),
      userLiked: (l$userLiked as bool?),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      color: (l$color as List<dynamic>).map((e) => (e as String)).toList(),
      brand: l$brand == null
          ? null
          : Query$Product$product$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$Product$product$category? category;

  final Query$Product$product$subCategory? subCategory;

  final Query$Product$product$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final String price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Query$Product$product$brand? brand;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$subCategory = subCategory;
    _resultData['subCategory'] = l$subCategory?.toJson();
    final l$seller = seller;
    _resultData['seller'] = l$seller?.toJson();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$discountPrice = discountPrice;
    _resultData['discountPrice'] = l$discountPrice;
    final l$size = size;
    _resultData['size'] =
        l$size == null ? null : toJson$Enum$ProductsProductSizeChoices(l$size);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$parcelSize = parcelSize;
    _resultData['parcelSize'] = l$parcelSize == null
        ? null
        : toJson$Enum$ProductsProductParcelSizeChoices(l$parcelSize);
    final l$views = views;
    _resultData['views'] = l$views;
    final l$likes = likes;
    _resultData['likes'] = l$likes;
    final l$userLiked = userLiked;
    _resultData['userLiked'] = l$userLiked;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$color = color;
    _resultData['color'] = l$color.map((e) => e).toList();
    final l$brand = brand;
    _resultData['brand'] = l$brand?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$subCategory = subCategory;
    final l$seller = seller;
    final l$condition = condition;
    final l$discountPrice = discountPrice;
    final l$size = size;
    final l$price = price;
    final l$parcelSize = parcelSize;
    final l$views = views;
    final l$likes = likes;
    final l$userLiked = userLiked;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$color = color;
    final l$brand = brand;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$seller,
      l$condition,
      l$discountPrice,
      l$size,
      l$price,
      l$parcelSize,
      l$views,
      l$likes,
      l$userLiked,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
      Object.hashAll(l$color.map((v) => v)),
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$discountPrice = discountPrice;
    final lOther$discountPrice = other.discountPrice;
    if (l$discountPrice != lOther$discountPrice) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$views = views;
    final lOther$views = other.views;
    if (l$views != lOther$views) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != lOther$likes) {
      return false;
    }
    final l$userLiked = userLiked;
    final lOther$userLiked = other.userLiked;
    if (l$userLiked != lOther$userLiked) {
      return false;
    }
    final l$imagesUrl = imagesUrl;
    final lOther$imagesUrl = other.imagesUrl;
    if (l$imagesUrl.length != lOther$imagesUrl.length) {
      return false;
    }
    for (int i = 0; i < l$imagesUrl.length; i++) {
      final l$imagesUrl$entry = l$imagesUrl[i];
      final lOther$imagesUrl$entry = lOther$imagesUrl[i];
      if (l$imagesUrl$entry != lOther$imagesUrl$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color.length != lOther$color.length) {
      return false;
    }
    for (int i = 0; i < l$color.length; i++) {
      final l$color$entry = l$color[i];
      final lOther$color$entry = lOther$color[i];
      if (l$color$entry != lOther$color$entry) {
        return false;
      }
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product on Query$Product$product {
  CopyWith$Query$Product$product<Query$Product$product> get copyWith =>
      CopyWith$Query$Product$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Product$product<TRes> {
  factory CopyWith$Query$Product$product(
    Query$Product$product instance,
    TRes Function(Query$Product$product) then,
  ) = _CopyWithImpl$Query$Product$product;

  factory CopyWith$Query$Product$product.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$Product$product$category? category,
    Query$Product$product$subCategory? subCategory,
    Query$Product$product$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Query$Product$product$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$Product$product$category<TRes> get category;
  CopyWith$Query$Product$product$subCategory<TRes> get subCategory;
  CopyWith$Query$Product$product$seller<TRes> get seller;
  CopyWith$Query$Product$product$brand<TRes> get brand;
}

class _CopyWithImpl$Query$Product$product<TRes>
    implements CopyWith$Query$Product$product<TRes> {
  _CopyWithImpl$Query$Product$product(
    this._instance,
    this._then,
  );

  final Query$Product$product _instance;

  final TRes Function(Query$Product$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? subCategory = _undefined,
    Object? seller = _undefined,
    Object? condition = _undefined,
    Object? discountPrice = _undefined,
    Object? size = _undefined,
    Object? price = _undefined,
    Object? parcelSize = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? userLiked = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category as Query$Product$product$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory as Query$Product$product$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller as Query$Product$product$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        parcelSize: parcelSize == _undefined
            ? _instance.parcelSize
            : (parcelSize as Enum$ProductsProductParcelSizeChoices?),
        views: views == _undefined || views == null
            ? _instance.views
            : (views as int),
        likes: likes == _undefined || likes == null
            ? _instance.likes
            : (likes as int),
        userLiked: userLiked == _undefined
            ? _instance.userLiked
            : (userLiked as bool?),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as List<String>),
        brand: brand == _undefined
            ? _instance.brand
            : (brand as Query$Product$product$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Product$product$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$Product$product$category.stub(_then(_instance))
        : CopyWith$Query$Product$product$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$Product$product$subCategory<TRes> get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$Product$product$subCategory.stub(_then(_instance))
        : CopyWith$Query$Product$product$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$Product$product$seller<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$Product$product$seller.stub(_then(_instance))
        : CopyWith$Query$Product$product$seller(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$Product$product$brand<TRes> get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$Product$product$brand.stub(_then(_instance))
        : CopyWith$Query$Product$product$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$Product$product<TRes>
    implements CopyWith$Query$Product$product<TRes> {
  _CopyWithStubImpl$Query$Product$product(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$Product$product$category? category,
    Query$Product$product$subCategory? subCategory,
    Query$Product$product$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Query$Product$product$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Product$product$category<TRes> get category =>
      CopyWith$Query$Product$product$category.stub(_res);

  CopyWith$Query$Product$product$subCategory<TRes> get subCategory =>
      CopyWith$Query$Product$product$subCategory.stub(_res);

  CopyWith$Query$Product$product$seller<TRes> get seller =>
      CopyWith$Query$Product$product$seller.stub(_res);

  CopyWith$Query$Product$product$brand<TRes> get brand =>
      CopyWith$Query$Product$product$brand.stub(_res);
}

class Query$Product$product$category {
  Query$Product$product$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$Product$product$category.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Product$product$category(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product$category ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product$category
    on Query$Product$product$category {
  CopyWith$Query$Product$product$category<Query$Product$product$category>
      get copyWith => CopyWith$Query$Product$product$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Product$product$category<TRes> {
  factory CopyWith$Query$Product$product$category(
    Query$Product$product$category instance,
    TRes Function(Query$Product$product$category) then,
  ) = _CopyWithImpl$Query$Product$product$category;

  factory CopyWith$Query$Product$product$category.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product$category<TRes>
    implements CopyWith$Query$Product$product$category<TRes> {
  _CopyWithImpl$Query$Product$product$category(
    this._instance,
    this._then,
  );

  final Query$Product$product$category _instance;

  final TRes Function(Query$Product$product$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Product$product$category<TRes>
    implements CopyWith$Query$Product$product$category<TRes> {
  _CopyWithStubImpl$Query$Product$product$category(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Product$product$subCategory {
  Query$Product$product$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$Product$product$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Product$product$subCategory(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product$subCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product$subCategory
    on Query$Product$product$subCategory {
  CopyWith$Query$Product$product$subCategory<Query$Product$product$subCategory>
      get copyWith => CopyWith$Query$Product$product$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Product$product$subCategory<TRes> {
  factory CopyWith$Query$Product$product$subCategory(
    Query$Product$product$subCategory instance,
    TRes Function(Query$Product$product$subCategory) then,
  ) = _CopyWithImpl$Query$Product$product$subCategory;

  factory CopyWith$Query$Product$product$subCategory.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product$subCategory<TRes>
    implements CopyWith$Query$Product$product$subCategory<TRes> {
  _CopyWithImpl$Query$Product$product$subCategory(
    this._instance,
    this._then,
  );

  final Query$Product$product$subCategory _instance;

  final TRes Function(Query$Product$product$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Product$product$subCategory<TRes>
    implements CopyWith$Query$Product$product$subCategory<TRes> {
  _CopyWithStubImpl$Query$Product$product$subCategory(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Product$product$seller {
  Query$Product$product$seller({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.$__typename = 'UserType',
  });

  factory Query$Product$product$seller.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$Product$product$seller(
      id: (l$id as int?),
      username: (l$username as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String? profilePictureUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$profilePictureUrl = profilePictureUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$profilePictureUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product$seller ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product$seller
    on Query$Product$product$seller {
  CopyWith$Query$Product$product$seller<Query$Product$product$seller>
      get copyWith => CopyWith$Query$Product$product$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Product$product$seller<TRes> {
  factory CopyWith$Query$Product$product$seller(
    Query$Product$product$seller instance,
    TRes Function(Query$Product$product$seller) then,
  ) = _CopyWithImpl$Query$Product$product$seller;

  factory CopyWith$Query$Product$product$seller.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product$seller;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product$seller<TRes>
    implements CopyWith$Query$Product$product$seller<TRes> {
  _CopyWithImpl$Query$Product$product$seller(
    this._instance,
    this._then,
  );

  final Query$Product$product$seller _instance;

  final TRes Function(Query$Product$product$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product$seller(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Product$product$seller<TRes>
    implements CopyWith$Query$Product$product$seller<TRes> {
  _CopyWithStubImpl$Query$Product$product$seller(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$Product$product$brand {
  Query$Product$product$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$Product$product$brand.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Product$product$brand(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product$brand ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product$brand
    on Query$Product$product$brand {
  CopyWith$Query$Product$product$brand<Query$Product$product$brand>
      get copyWith => CopyWith$Query$Product$product$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Product$product$brand<TRes> {
  factory CopyWith$Query$Product$product$brand(
    Query$Product$product$brand instance,
    TRes Function(Query$Product$product$brand) then,
  ) = _CopyWithImpl$Query$Product$product$brand;

  factory CopyWith$Query$Product$product$brand.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product$brand<TRes>
    implements CopyWith$Query$Product$product$brand<TRes> {
  _CopyWithImpl$Query$Product$product$brand(
    this._instance,
    this._then,
  );

  final Query$Product$product$brand _instance;

  final TRes Function(Query$Product$product$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Product$product$brand<TRes>
    implements CopyWith$Query$Product$product$brand<TRes> {
  _CopyWithStubImpl$Query$Product$product$brand(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$UserProducts {
  factory Variables$Query$UserProducts({
    String? search,
    String? username,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$UserProducts._({
        if (search != null) r'search': search,
        if (username != null) r'username': username,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$UserProducts._(this._$data);

  factory Variables$Query$UserProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$UserProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  String? get username => (_$data['username'] as String?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('pageCount')) {
      final l$pageCount = pageCount;
      result$data['pageCount'] = l$pageCount;
    }
    if (_$data.containsKey('pageNumber')) {
      final l$pageNumber = pageNumber;
      result$data['pageNumber'] = l$pageNumber;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserProducts<Variables$Query$UserProducts>
      get copyWith => CopyWith$Variables$Query$UserProducts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UserProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$pageCount = pageCount;
    final lOther$pageCount = other.pageCount;
    if (_$data.containsKey('pageCount') !=
        other._$data.containsKey('pageCount')) {
      return false;
    }
    if (l$pageCount != lOther$pageCount) {
      return false;
    }
    final l$pageNumber = pageNumber;
    final lOther$pageNumber = other.pageNumber;
    if (_$data.containsKey('pageNumber') !=
        other._$data.containsKey('pageNumber')) {
      return false;
    }
    if (l$pageNumber != lOther$pageNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$username = username;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserProducts<TRes> {
  factory CopyWith$Variables$Query$UserProducts(
    Variables$Query$UserProducts instance,
    TRes Function(Variables$Query$UserProducts) then,
  ) = _CopyWithImpl$Variables$Query$UserProducts;

  factory CopyWith$Variables$Query$UserProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserProducts;

  TRes call({
    String? search,
    String? username,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$UserProducts<TRes>
    implements CopyWith$Variables$Query$UserProducts<TRes> {
  _CopyWithImpl$Variables$Query$UserProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$UserProducts _instance;

  final TRes Function(Variables$Query$UserProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? username = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$UserProducts._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (username != _undefined) 'username': (username as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserProducts<TRes>
    implements CopyWith$Variables$Query$UserProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$UserProducts(this._res);

  TRes _res;

  call({
    String? search,
    String? username,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$UserProducts {
  Query$UserProducts({
    this.userProducts,
    this.$__typename = 'Query',
  });

  factory Query$UserProducts.fromJson(Map<String, dynamic> json) {
    final l$userProducts = json['userProducts'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts(
      userProducts: (l$userProducts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserProducts$userProducts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$UserProducts$userProducts?>? userProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userProducts = userProducts;
    _resultData['userProducts'] =
        l$userProducts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userProducts = userProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userProducts == null
          ? null
          : Object.hashAll(l$userProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userProducts = userProducts;
    final lOther$userProducts = other.userProducts;
    if (l$userProducts != null && lOther$userProducts != null) {
      if (l$userProducts.length != lOther$userProducts.length) {
        return false;
      }
      for (int i = 0; i < l$userProducts.length; i++) {
        final l$userProducts$entry = l$userProducts[i];
        final lOther$userProducts$entry = lOther$userProducts[i];
        if (l$userProducts$entry != lOther$userProducts$entry) {
          return false;
        }
      }
    } else if (l$userProducts != lOther$userProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserProducts on Query$UserProducts {
  CopyWith$Query$UserProducts<Query$UserProducts> get copyWith =>
      CopyWith$Query$UserProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserProducts<TRes> {
  factory CopyWith$Query$UserProducts(
    Query$UserProducts instance,
    TRes Function(Query$UserProducts) then,
  ) = _CopyWithImpl$Query$UserProducts;

  factory CopyWith$Query$UserProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts;

  TRes call({
    List<Query$UserProducts$userProducts?>? userProducts,
    String? $__typename,
  });
  TRes userProducts(
      Iterable<Query$UserProducts$userProducts?>? Function(
              Iterable<
                  CopyWith$Query$UserProducts$userProducts<
                      Query$UserProducts$userProducts>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserProducts<TRes>
    implements CopyWith$Query$UserProducts<TRes> {
  _CopyWithImpl$Query$UserProducts(
    this._instance,
    this._then,
  );

  final Query$UserProducts _instance;

  final TRes Function(Query$UserProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts(
        userProducts: userProducts == _undefined
            ? _instance.userProducts
            : (userProducts as List<Query$UserProducts$userProducts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes userProducts(
          Iterable<Query$UserProducts$userProducts?>? Function(
                  Iterable<
                      CopyWith$Query$UserProducts$userProducts<
                          Query$UserProducts$userProducts>?>?)
              _fn) =>
      call(
          userProducts: _fn(_instance.userProducts?.map((e) => e == null
              ? null
              : CopyWith$Query$UserProducts$userProducts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserProducts<TRes>
    implements CopyWith$Query$UserProducts<TRes> {
  _CopyWithStubImpl$Query$UserProducts(this._res);

  TRes _res;

  call({
    List<Query$UserProducts$userProducts?>? userProducts,
    String? $__typename,
  }) =>
      _res;

  userProducts(_fn) => _res;
}

const documentNodeQueryUserProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageCount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageCount'),
            value: VariableNode(name: NameNode(value: 'pageCount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageNumber'),
            value: VariableNode(name: NameNode(value: 'pageNumber')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'subCategory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'seller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'discountPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'size'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parcelSize'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'views'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userLiked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'imagesUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'brand'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$UserProducts _parserFn$Query$UserProducts(Map<String, dynamic> data) =>
    Query$UserProducts.fromJson(data);
typedef OnQueryComplete$Query$UserProducts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserProducts?,
);

class Options$Query$UserProducts
    extends graphql.QueryOptions<Query$UserProducts> {
  Options$Query$UserProducts({
    String? operationName,
    Variables$Query$UserProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserProducts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserProducts? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$UserProducts(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserProducts,
          parserFn: _parserFn$Query$UserProducts,
        );

  final OnQueryComplete$Query$UserProducts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserProducts
    extends graphql.WatchQueryOptions<Query$UserProducts> {
  WatchOptions$Query$UserProducts({
    String? operationName,
    Variables$Query$UserProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserProducts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryUserProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserProducts,
        );
}

class FetchMoreOptions$Query$UserProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserProducts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserProducts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserProducts,
        );
}

extension ClientExtension$Query$UserProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserProducts>> query$UserProducts(
          [Options$Query$UserProducts? options]) async =>
      await this.query(options ?? Options$Query$UserProducts());
  graphql.ObservableQuery<Query$UserProducts> watchQuery$UserProducts(
          [WatchOptions$Query$UserProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserProducts());
  void writeQuery$UserProducts({
    required Query$UserProducts data,
    Variables$Query$UserProducts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserProducts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserProducts? readQuery$UserProducts({
    Variables$Query$UserProducts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserProducts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserProducts.fromJson(result);
  }
}

class Query$UserProducts$userProducts {
  Query$UserProducts$userProducts({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    required this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$UserProducts$userProducts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$seller = json['seller'];
    final l$condition = json['condition'];
    final l$discountPrice = json['discountPrice'];
    final l$size = json['size'];
    final l$price = json['price'];
    final l$parcelSize = json['parcelSize'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$userLiked = json['userLiked'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$color = json['color'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$UserProducts$userProducts$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$UserProducts$userProducts$subCategory.fromJson(
              (l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$UserProducts$userProducts$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as String),
      parcelSize: l$parcelSize == null
          ? null
          : fromJson$Enum$ProductsProductParcelSizeChoices(
              (l$parcelSize as String)),
      views: (l$views as int),
      likes: (l$likes as int),
      userLiked: (l$userLiked as bool?),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      color: (l$color as List<dynamic>).map((e) => (e as String)).toList(),
      brand: l$brand == null
          ? null
          : Query$UserProducts$userProducts$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$UserProducts$userProducts$category? category;

  final Query$UserProducts$userProducts$subCategory? subCategory;

  final Query$UserProducts$userProducts$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final String price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Query$UserProducts$userProducts$brand? brand;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$subCategory = subCategory;
    _resultData['subCategory'] = l$subCategory?.toJson();
    final l$seller = seller;
    _resultData['seller'] = l$seller?.toJson();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$discountPrice = discountPrice;
    _resultData['discountPrice'] = l$discountPrice;
    final l$size = size;
    _resultData['size'] =
        l$size == null ? null : toJson$Enum$ProductsProductSizeChoices(l$size);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$parcelSize = parcelSize;
    _resultData['parcelSize'] = l$parcelSize == null
        ? null
        : toJson$Enum$ProductsProductParcelSizeChoices(l$parcelSize);
    final l$views = views;
    _resultData['views'] = l$views;
    final l$likes = likes;
    _resultData['likes'] = l$likes;
    final l$userLiked = userLiked;
    _resultData['userLiked'] = l$userLiked;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$color = color;
    _resultData['color'] = l$color.map((e) => e).toList();
    final l$brand = brand;
    _resultData['brand'] = l$brand?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$subCategory = subCategory;
    final l$seller = seller;
    final l$condition = condition;
    final l$discountPrice = discountPrice;
    final l$size = size;
    final l$price = price;
    final l$parcelSize = parcelSize;
    final l$views = views;
    final l$likes = likes;
    final l$userLiked = userLiked;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$color = color;
    final l$brand = brand;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$seller,
      l$condition,
      l$discountPrice,
      l$size,
      l$price,
      l$parcelSize,
      l$views,
      l$likes,
      l$userLiked,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
      Object.hashAll(l$color.map((v) => v)),
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts$userProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$discountPrice = discountPrice;
    final lOther$discountPrice = other.discountPrice;
    if (l$discountPrice != lOther$discountPrice) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$views = views;
    final lOther$views = other.views;
    if (l$views != lOther$views) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != lOther$likes) {
      return false;
    }
    final l$userLiked = userLiked;
    final lOther$userLiked = other.userLiked;
    if (l$userLiked != lOther$userLiked) {
      return false;
    }
    final l$imagesUrl = imagesUrl;
    final lOther$imagesUrl = other.imagesUrl;
    if (l$imagesUrl.length != lOther$imagesUrl.length) {
      return false;
    }
    for (int i = 0; i < l$imagesUrl.length; i++) {
      final l$imagesUrl$entry = l$imagesUrl[i];
      final lOther$imagesUrl$entry = lOther$imagesUrl[i];
      if (l$imagesUrl$entry != lOther$imagesUrl$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color.length != lOther$color.length) {
      return false;
    }
    for (int i = 0; i < l$color.length; i++) {
      final l$color$entry = l$color[i];
      final lOther$color$entry = lOther$color[i];
      if (l$color$entry != lOther$color$entry) {
        return false;
      }
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserProducts$userProducts
    on Query$UserProducts$userProducts {
  CopyWith$Query$UserProducts$userProducts<Query$UserProducts$userProducts>
      get copyWith => CopyWith$Query$UserProducts$userProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts<TRes> {
  factory CopyWith$Query$UserProducts$userProducts(
    Query$UserProducts$userProducts instance,
    TRes Function(Query$UserProducts$userProducts) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts;

  factory CopyWith$Query$UserProducts$userProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$UserProducts$userProducts$category? category,
    Query$UserProducts$userProducts$subCategory? subCategory,
    Query$UserProducts$userProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Query$UserProducts$userProducts$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$UserProducts$userProducts$category<TRes> get category;
  CopyWith$Query$UserProducts$userProducts$subCategory<TRes> get subCategory;
  CopyWith$Query$UserProducts$userProducts$seller<TRes> get seller;
  CopyWith$Query$UserProducts$userProducts$brand<TRes> get brand;
}

class _CopyWithImpl$Query$UserProducts$userProducts<TRes>
    implements CopyWith$Query$UserProducts$userProducts<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts _instance;

  final TRes Function(Query$UserProducts$userProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? subCategory = _undefined,
    Object? seller = _undefined,
    Object? condition = _undefined,
    Object? discountPrice = _undefined,
    Object? size = _undefined,
    Object? price = _undefined,
    Object? parcelSize = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? userLiked = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category as Query$UserProducts$userProducts$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory as Query$UserProducts$userProducts$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller as Query$UserProducts$userProducts$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        parcelSize: parcelSize == _undefined
            ? _instance.parcelSize
            : (parcelSize as Enum$ProductsProductParcelSizeChoices?),
        views: views == _undefined || views == null
            ? _instance.views
            : (views as int),
        likes: likes == _undefined || likes == null
            ? _instance.likes
            : (likes as int),
        userLiked: userLiked == _undefined
            ? _instance.userLiked
            : (userLiked as bool?),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as List<String>),
        brand: brand == _undefined
            ? _instance.brand
            : (brand as Query$UserProducts$userProducts$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserProducts$userProducts$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$UserProducts$userProducts$category.stub(
            _then(_instance))
        : CopyWith$Query$UserProducts$userProducts$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$UserProducts$userProducts$subCategory<TRes> get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$UserProducts$userProducts$subCategory.stub(
            _then(_instance))
        : CopyWith$Query$UserProducts$userProducts$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$UserProducts$userProducts$seller<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$UserProducts$userProducts$seller.stub(_then(_instance))
        : CopyWith$Query$UserProducts$userProducts$seller(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$UserProducts$userProducts$brand<TRes> get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$UserProducts$userProducts$brand.stub(_then(_instance))
        : CopyWith$Query$UserProducts$userProducts$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$UserProducts$userProducts<TRes>
    implements CopyWith$Query$UserProducts$userProducts<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$UserProducts$userProducts$category? category,
    Query$UserProducts$userProducts$subCategory? subCategory,
    Query$UserProducts$userProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Query$UserProducts$userProducts$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserProducts$userProducts$category<TRes> get category =>
      CopyWith$Query$UserProducts$userProducts$category.stub(_res);

  CopyWith$Query$UserProducts$userProducts$subCategory<TRes> get subCategory =>
      CopyWith$Query$UserProducts$userProducts$subCategory.stub(_res);

  CopyWith$Query$UserProducts$userProducts$seller<TRes> get seller =>
      CopyWith$Query$UserProducts$userProducts$seller.stub(_res);

  CopyWith$Query$UserProducts$userProducts$brand<TRes> get brand =>
      CopyWith$Query$UserProducts$userProducts$brand.stub(_res);
}

class Query$UserProducts$userProducts$category {
  Query$UserProducts$userProducts$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$UserProducts$userProducts$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts$category(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts$userProducts$category ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserProducts$userProducts$category
    on Query$UserProducts$userProducts$category {
  CopyWith$Query$UserProducts$userProducts$category<
          Query$UserProducts$userProducts$category>
      get copyWith => CopyWith$Query$UserProducts$userProducts$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts$category<TRes> {
  factory CopyWith$Query$UserProducts$userProducts$category(
    Query$UserProducts$userProducts$category instance,
    TRes Function(Query$UserProducts$userProducts$category) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts$category;

  factory CopyWith$Query$UserProducts$userProducts$category.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserProducts$userProducts$category<TRes>
    implements CopyWith$Query$UserProducts$userProducts$category<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts$category(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts$category _instance;

  final TRes Function(Query$UserProducts$userProducts$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserProducts$userProducts$category<TRes>
    implements CopyWith$Query$UserProducts$userProducts$category<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts$category(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserProducts$userProducts$subCategory {
  Query$UserProducts$userProducts$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$UserProducts$userProducts$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts$subCategory(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts$userProducts$subCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserProducts$userProducts$subCategory
    on Query$UserProducts$userProducts$subCategory {
  CopyWith$Query$UserProducts$userProducts$subCategory<
          Query$UserProducts$userProducts$subCategory>
      get copyWith => CopyWith$Query$UserProducts$userProducts$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts$subCategory<TRes> {
  factory CopyWith$Query$UserProducts$userProducts$subCategory(
    Query$UserProducts$userProducts$subCategory instance,
    TRes Function(Query$UserProducts$userProducts$subCategory) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts$subCategory;

  factory CopyWith$Query$UserProducts$userProducts$subCategory.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserProducts$userProducts$subCategory<TRes>
    implements CopyWith$Query$UserProducts$userProducts$subCategory<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts$subCategory(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts$subCategory _instance;

  final TRes Function(Query$UserProducts$userProducts$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserProducts$userProducts$subCategory<TRes>
    implements CopyWith$Query$UserProducts$userProducts$subCategory<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts$subCategory(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserProducts$userProducts$seller {
  Query$UserProducts$userProducts$seller({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$UserProducts$userProducts$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts$seller(
      id: (l$id as int?),
      username: (l$username as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts$userProducts$seller ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserProducts$userProducts$seller
    on Query$UserProducts$userProducts$seller {
  CopyWith$Query$UserProducts$userProducts$seller<
          Query$UserProducts$userProducts$seller>
      get copyWith => CopyWith$Query$UserProducts$userProducts$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts$seller<TRes> {
  factory CopyWith$Query$UserProducts$userProducts$seller(
    Query$UserProducts$userProducts$seller instance,
    TRes Function(Query$UserProducts$userProducts$seller) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts$seller;

  factory CopyWith$Query$UserProducts$userProducts$seller.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts$seller;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserProducts$userProducts$seller<TRes>
    implements CopyWith$Query$UserProducts$userProducts$seller<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts$seller(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts$seller _instance;

  final TRes Function(Query$UserProducts$userProducts$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts$seller(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserProducts$userProducts$seller<TRes>
    implements CopyWith$Query$UserProducts$userProducts$seller<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts$seller(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserProducts$userProducts$brand {
  Query$UserProducts$userProducts$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$UserProducts$userProducts$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts$brand(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts$userProducts$brand ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserProducts$userProducts$brand
    on Query$UserProducts$userProducts$brand {
  CopyWith$Query$UserProducts$userProducts$brand<
          Query$UserProducts$userProducts$brand>
      get copyWith => CopyWith$Query$UserProducts$userProducts$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts$brand<TRes> {
  factory CopyWith$Query$UserProducts$userProducts$brand(
    Query$UserProducts$userProducts$brand instance,
    TRes Function(Query$UserProducts$userProducts$brand) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts$brand;

  factory CopyWith$Query$UserProducts$userProducts$brand.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserProducts$userProducts$brand<TRes>
    implements CopyWith$Query$UserProducts$userProducts$brand<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts$brand(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts$brand _instance;

  final TRes Function(Query$UserProducts$userProducts$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserProducts$userProducts$brand<TRes>
    implements CopyWith$Query$UserProducts$userProducts$brand<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts$brand(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$AllProducts {
  factory Variables$Query$AllProducts({
    String? search,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$AllProducts._({
        if (search != null) r'search': search,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$AllProducts._(this._$data);

  factory Variables$Query$AllProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$AllProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('pageCount')) {
      final l$pageCount = pageCount;
      result$data['pageCount'] = l$pageCount;
    }
    if (_$data.containsKey('pageNumber')) {
      final l$pageNumber = pageNumber;
      result$data['pageNumber'] = l$pageNumber;
    }
    return result$data;
  }

  CopyWith$Variables$Query$AllProducts<Variables$Query$AllProducts>
      get copyWith => CopyWith$Variables$Query$AllProducts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AllProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$pageCount = pageCount;
    final lOther$pageCount = other.pageCount;
    if (_$data.containsKey('pageCount') !=
        other._$data.containsKey('pageCount')) {
      return false;
    }
    if (l$pageCount != lOther$pageCount) {
      return false;
    }
    final l$pageNumber = pageNumber;
    final lOther$pageNumber = other.pageNumber;
    if (_$data.containsKey('pageNumber') !=
        other._$data.containsKey('pageNumber')) {
      return false;
    }
    if (l$pageNumber != lOther$pageNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllProducts<TRes> {
  factory CopyWith$Variables$Query$AllProducts(
    Variables$Query$AllProducts instance,
    TRes Function(Variables$Query$AllProducts) then,
  ) = _CopyWithImpl$Variables$Query$AllProducts;

  factory CopyWith$Variables$Query$AllProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AllProducts;

  TRes call({
    String? search,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$AllProducts<TRes>
    implements CopyWith$Variables$Query$AllProducts<TRes> {
  _CopyWithImpl$Variables$Query$AllProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$AllProducts _instance;

  final TRes Function(Variables$Query$AllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$AllProducts._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$AllProducts<TRes>
    implements CopyWith$Variables$Query$AllProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$AllProducts(this._res);

  TRes _res;

  call({
    String? search,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$AllProducts {
  Query$AllProducts({
    this.allProducts,
    this.$__typename = 'Query',
  });

  factory Query$AllProducts.fromJson(Map<String, dynamic> json) {
    final l$allProducts = json['allProducts'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts(
      allProducts: (l$allProducts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllProducts$allProducts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AllProducts$allProducts?>? allProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allProducts = allProducts;
    _resultData['allProducts'] =
        l$allProducts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allProducts = allProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allProducts == null
          ? null
          : Object.hashAll(l$allProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allProducts = allProducts;
    final lOther$allProducts = other.allProducts;
    if (l$allProducts != null && lOther$allProducts != null) {
      if (l$allProducts.length != lOther$allProducts.length) {
        return false;
      }
      for (int i = 0; i < l$allProducts.length; i++) {
        final l$allProducts$entry = l$allProducts[i];
        final lOther$allProducts$entry = lOther$allProducts[i];
        if (l$allProducts$entry != lOther$allProducts$entry) {
          return false;
        }
      }
    } else if (l$allProducts != lOther$allProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts on Query$AllProducts {
  CopyWith$Query$AllProducts<Query$AllProducts> get copyWith =>
      CopyWith$Query$AllProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllProducts<TRes> {
  factory CopyWith$Query$AllProducts(
    Query$AllProducts instance,
    TRes Function(Query$AllProducts) then,
  ) = _CopyWithImpl$Query$AllProducts;

  factory CopyWith$Query$AllProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts;

  TRes call({
    List<Query$AllProducts$allProducts?>? allProducts,
    String? $__typename,
  });
  TRes allProducts(
      Iterable<Query$AllProducts$allProducts?>? Function(
              Iterable<
                  CopyWith$Query$AllProducts$allProducts<
                      Query$AllProducts$allProducts>?>?)
          _fn);
}

class _CopyWithImpl$Query$AllProducts<TRes>
    implements CopyWith$Query$AllProducts<TRes> {
  _CopyWithImpl$Query$AllProducts(
    this._instance,
    this._then,
  );

  final Query$AllProducts _instance;

  final TRes Function(Query$AllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts(
        allProducts: allProducts == _undefined
            ? _instance.allProducts
            : (allProducts as List<Query$AllProducts$allProducts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes allProducts(
          Iterable<Query$AllProducts$allProducts?>? Function(
                  Iterable<
                      CopyWith$Query$AllProducts$allProducts<
                          Query$AllProducts$allProducts>?>?)
              _fn) =>
      call(
          allProducts: _fn(_instance.allProducts?.map((e) => e == null
              ? null
              : CopyWith$Query$AllProducts$allProducts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$AllProducts<TRes>
    implements CopyWith$Query$AllProducts<TRes> {
  _CopyWithStubImpl$Query$AllProducts(this._res);

  TRes _res;

  call({
    List<Query$AllProducts$allProducts?>? allProducts,
    String? $__typename,
  }) =>
      _res;

  allProducts(_fn) => _res;
}

const documentNodeQueryAllProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageCount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageCount'),
            value: VariableNode(name: NameNode(value: 'pageCount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageNumber'),
            value: VariableNode(name: NameNode(value: 'pageNumber')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'subCategory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'seller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'discountPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'size'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parcelSize'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'views'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userLiked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'imagesUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'brand'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$AllProducts _parserFn$Query$AllProducts(Map<String, dynamic> data) =>
    Query$AllProducts.fromJson(data);
typedef OnQueryComplete$Query$AllProducts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AllProducts?,
);

class Options$Query$AllProducts
    extends graphql.QueryOptions<Query$AllProducts> {
  Options$Query$AllProducts({
    String? operationName,
    Variables$Query$AllProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllProducts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AllProducts? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$AllProducts(data),
                  ),
          onError: onError,
          document: documentNodeQueryAllProducts,
          parserFn: _parserFn$Query$AllProducts,
        );

  final OnQueryComplete$Query$AllProducts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AllProducts
    extends graphql.WatchQueryOptions<Query$AllProducts> {
  WatchOptions$Query$AllProducts({
    String? operationName,
    Variables$Query$AllProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllProducts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAllProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllProducts,
        );
}

class FetchMoreOptions$Query$AllProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllProducts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$AllProducts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryAllProducts,
        );
}

extension ClientExtension$Query$AllProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllProducts>> query$AllProducts(
          [Options$Query$AllProducts? options]) async =>
      await this.query(options ?? Options$Query$AllProducts());
  graphql.ObservableQuery<Query$AllProducts> watchQuery$AllProducts(
          [WatchOptions$Query$AllProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AllProducts());
  void writeQuery$AllProducts({
    required Query$AllProducts data,
    Variables$Query$AllProducts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryAllProducts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllProducts? readQuery$AllProducts({
    Variables$Query$AllProducts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAllProducts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllProducts.fromJson(result);
  }
}

class Query$AllProducts$allProducts {
  Query$AllProducts$allProducts({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    required this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$AllProducts$allProducts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$seller = json['seller'];
    final l$condition = json['condition'];
    final l$discountPrice = json['discountPrice'];
    final l$size = json['size'];
    final l$price = json['price'];
    final l$parcelSize = json['parcelSize'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$userLiked = json['userLiked'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$color = json['color'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$AllProducts$allProducts$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$AllProducts$allProducts$subCategory.fromJson(
              (l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$AllProducts$allProducts$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as String),
      parcelSize: l$parcelSize == null
          ? null
          : fromJson$Enum$ProductsProductParcelSizeChoices(
              (l$parcelSize as String)),
      views: (l$views as int),
      likes: (l$likes as int),
      userLiked: (l$userLiked as bool?),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      color: (l$color as List<dynamic>).map((e) => (e as String)).toList(),
      brand: l$brand == null
          ? null
          : Query$AllProducts$allProducts$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$AllProducts$allProducts$category? category;

  final Query$AllProducts$allProducts$subCategory? subCategory;

  final Query$AllProducts$allProducts$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final String price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Query$AllProducts$allProducts$brand? brand;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$subCategory = subCategory;
    _resultData['subCategory'] = l$subCategory?.toJson();
    final l$seller = seller;
    _resultData['seller'] = l$seller?.toJson();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$discountPrice = discountPrice;
    _resultData['discountPrice'] = l$discountPrice;
    final l$size = size;
    _resultData['size'] =
        l$size == null ? null : toJson$Enum$ProductsProductSizeChoices(l$size);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$parcelSize = parcelSize;
    _resultData['parcelSize'] = l$parcelSize == null
        ? null
        : toJson$Enum$ProductsProductParcelSizeChoices(l$parcelSize);
    final l$views = views;
    _resultData['views'] = l$views;
    final l$likes = likes;
    _resultData['likes'] = l$likes;
    final l$userLiked = userLiked;
    _resultData['userLiked'] = l$userLiked;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$color = color;
    _resultData['color'] = l$color.map((e) => e).toList();
    final l$brand = brand;
    _resultData['brand'] = l$brand?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$subCategory = subCategory;
    final l$seller = seller;
    final l$condition = condition;
    final l$discountPrice = discountPrice;
    final l$size = size;
    final l$price = price;
    final l$parcelSize = parcelSize;
    final l$views = views;
    final l$likes = likes;
    final l$userLiked = userLiked;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$color = color;
    final l$brand = brand;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$seller,
      l$condition,
      l$discountPrice,
      l$size,
      l$price,
      l$parcelSize,
      l$views,
      l$likes,
      l$userLiked,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
      Object.hashAll(l$color.map((v) => v)),
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$allProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$discountPrice = discountPrice;
    final lOther$discountPrice = other.discountPrice;
    if (l$discountPrice != lOther$discountPrice) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$views = views;
    final lOther$views = other.views;
    if (l$views != lOther$views) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != lOther$likes) {
      return false;
    }
    final l$userLiked = userLiked;
    final lOther$userLiked = other.userLiked;
    if (l$userLiked != lOther$userLiked) {
      return false;
    }
    final l$imagesUrl = imagesUrl;
    final lOther$imagesUrl = other.imagesUrl;
    if (l$imagesUrl.length != lOther$imagesUrl.length) {
      return false;
    }
    for (int i = 0; i < l$imagesUrl.length; i++) {
      final l$imagesUrl$entry = l$imagesUrl[i];
      final lOther$imagesUrl$entry = lOther$imagesUrl[i];
      if (l$imagesUrl$entry != lOther$imagesUrl$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color.length != lOther$color.length) {
      return false;
    }
    for (int i = 0; i < l$color.length; i++) {
      final l$color$entry = l$color[i];
      final lOther$color$entry = lOther$color[i];
      if (l$color$entry != lOther$color$entry) {
        return false;
      }
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts$allProducts
    on Query$AllProducts$allProducts {
  CopyWith$Query$AllProducts$allProducts<Query$AllProducts$allProducts>
      get copyWith => CopyWith$Query$AllProducts$allProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts<TRes> {
  factory CopyWith$Query$AllProducts$allProducts(
    Query$AllProducts$allProducts instance,
    TRes Function(Query$AllProducts$allProducts) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts;

  factory CopyWith$Query$AllProducts$allProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$AllProducts$allProducts$category? category,
    Query$AllProducts$allProducts$subCategory? subCategory,
    Query$AllProducts$allProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Query$AllProducts$allProducts$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$AllProducts$allProducts$category<TRes> get category;
  CopyWith$Query$AllProducts$allProducts$subCategory<TRes> get subCategory;
  CopyWith$Query$AllProducts$allProducts$seller<TRes> get seller;
  CopyWith$Query$AllProducts$allProducts$brand<TRes> get brand;
}

class _CopyWithImpl$Query$AllProducts$allProducts<TRes>
    implements CopyWith$Query$AllProducts$allProducts<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts _instance;

  final TRes Function(Query$AllProducts$allProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? subCategory = _undefined,
    Object? seller = _undefined,
    Object? condition = _undefined,
    Object? discountPrice = _undefined,
    Object? size = _undefined,
    Object? price = _undefined,
    Object? parcelSize = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? userLiked = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category as Query$AllProducts$allProducts$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory as Query$AllProducts$allProducts$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller as Query$AllProducts$allProducts$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        parcelSize: parcelSize == _undefined
            ? _instance.parcelSize
            : (parcelSize as Enum$ProductsProductParcelSizeChoices?),
        views: views == _undefined || views == null
            ? _instance.views
            : (views as int),
        likes: likes == _undefined || likes == null
            ? _instance.likes
            : (likes as int),
        userLiked: userLiked == _undefined
            ? _instance.userLiked
            : (userLiked as bool?),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as List<String>),
        brand: brand == _undefined
            ? _instance.brand
            : (brand as Query$AllProducts$allProducts$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllProducts$allProducts$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$AllProducts$allProducts$category.stub(_then(_instance))
        : CopyWith$Query$AllProducts$allProducts$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$AllProducts$allProducts$subCategory<TRes> get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$AllProducts$allProducts$subCategory.stub(
            _then(_instance))
        : CopyWith$Query$AllProducts$allProducts$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$AllProducts$allProducts$seller<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$AllProducts$allProducts$seller.stub(_then(_instance))
        : CopyWith$Query$AllProducts$allProducts$seller(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$AllProducts$allProducts$brand<TRes> get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$AllProducts$allProducts$brand.stub(_then(_instance))
        : CopyWith$Query$AllProducts$allProducts$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$AllProducts$allProducts<TRes>
    implements CopyWith$Query$AllProducts$allProducts<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$AllProducts$allProducts$category? category,
    Query$AllProducts$allProducts$subCategory? subCategory,
    Query$AllProducts$allProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Query$AllProducts$allProducts$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllProducts$allProducts$category<TRes> get category =>
      CopyWith$Query$AllProducts$allProducts$category.stub(_res);

  CopyWith$Query$AllProducts$allProducts$subCategory<TRes> get subCategory =>
      CopyWith$Query$AllProducts$allProducts$subCategory.stub(_res);

  CopyWith$Query$AllProducts$allProducts$seller<TRes> get seller =>
      CopyWith$Query$AllProducts$allProducts$seller.stub(_res);

  CopyWith$Query$AllProducts$allProducts$brand<TRes> get brand =>
      CopyWith$Query$AllProducts$allProducts$brand.stub(_res);
}

class Query$AllProducts$allProducts$category {
  Query$AllProducts$allProducts$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$AllProducts$allProducts$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$category(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$allProducts$category ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts$allProducts$category
    on Query$AllProducts$allProducts$category {
  CopyWith$Query$AllProducts$allProducts$category<
          Query$AllProducts$allProducts$category>
      get copyWith => CopyWith$Query$AllProducts$allProducts$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts$category<TRes> {
  factory CopyWith$Query$AllProducts$allProducts$category(
    Query$AllProducts$allProducts$category instance,
    TRes Function(Query$AllProducts$allProducts$category) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts$category;

  factory CopyWith$Query$AllProducts$allProducts$category.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$allProducts$category<TRes>
    implements CopyWith$Query$AllProducts$allProducts$category<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts$category(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts$category _instance;

  final TRes Function(Query$AllProducts$allProducts$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllProducts$allProducts$category<TRes>
    implements CopyWith$Query$AllProducts$allProducts$category<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$category(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllProducts$allProducts$subCategory {
  Query$AllProducts$allProducts$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$AllProducts$allProducts$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$subCategory(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$allProducts$subCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts$allProducts$subCategory
    on Query$AllProducts$allProducts$subCategory {
  CopyWith$Query$AllProducts$allProducts$subCategory<
          Query$AllProducts$allProducts$subCategory>
      get copyWith => CopyWith$Query$AllProducts$allProducts$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts$subCategory<TRes> {
  factory CopyWith$Query$AllProducts$allProducts$subCategory(
    Query$AllProducts$allProducts$subCategory instance,
    TRes Function(Query$AllProducts$allProducts$subCategory) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts$subCategory;

  factory CopyWith$Query$AllProducts$allProducts$subCategory.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$allProducts$subCategory<TRes>
    implements CopyWith$Query$AllProducts$allProducts$subCategory<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts$subCategory(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts$subCategory _instance;

  final TRes Function(Query$AllProducts$allProducts$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllProducts$allProducts$subCategory<TRes>
    implements CopyWith$Query$AllProducts$allProducts$subCategory<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$subCategory(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllProducts$allProducts$seller {
  Query$AllProducts$allProducts$seller({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$AllProducts$allProducts$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$seller(
      id: (l$id as int?),
      username: (l$username as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$allProducts$seller ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts$allProducts$seller
    on Query$AllProducts$allProducts$seller {
  CopyWith$Query$AllProducts$allProducts$seller<
          Query$AllProducts$allProducts$seller>
      get copyWith => CopyWith$Query$AllProducts$allProducts$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts$seller<TRes> {
  factory CopyWith$Query$AllProducts$allProducts$seller(
    Query$AllProducts$allProducts$seller instance,
    TRes Function(Query$AllProducts$allProducts$seller) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts$seller;

  factory CopyWith$Query$AllProducts$allProducts$seller.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts$seller;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$allProducts$seller<TRes>
    implements CopyWith$Query$AllProducts$allProducts$seller<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts$seller(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts$seller _instance;

  final TRes Function(Query$AllProducts$allProducts$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$seller(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllProducts$allProducts$seller<TRes>
    implements CopyWith$Query$AllProducts$allProducts$seller<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$seller(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllProducts$allProducts$brand {
  Query$AllProducts$allProducts$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$AllProducts$allProducts$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$brand(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$allProducts$brand ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts$allProducts$brand
    on Query$AllProducts$allProducts$brand {
  CopyWith$Query$AllProducts$allProducts$brand<
          Query$AllProducts$allProducts$brand>
      get copyWith => CopyWith$Query$AllProducts$allProducts$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts$brand<TRes> {
  factory CopyWith$Query$AllProducts$allProducts$brand(
    Query$AllProducts$allProducts$brand instance,
    TRes Function(Query$AllProducts$allProducts$brand) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts$brand;

  factory CopyWith$Query$AllProducts$allProducts$brand.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$allProducts$brand<TRes>
    implements CopyWith$Query$AllProducts$allProducts$brand<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts$brand(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts$brand _instance;

  final TRes Function(Query$AllProducts$allProducts$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllProducts$allProducts$brand<TRes>
    implements CopyWith$Query$AllProducts$allProducts$brand<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$brand(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Categories {
  Query$Categories({
    this.categories,
    this.$__typename = 'Query',
  });

  factory Query$Categories.fromJson(Map<String, dynamic> json) {
    final l$categories = json['categories'];
    final l$$__typename = json['__typename'];
    return Query$Categories(
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Categories$categories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Categories$categories?>? categories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Categories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Categories on Query$Categories {
  CopyWith$Query$Categories<Query$Categories> get copyWith =>
      CopyWith$Query$Categories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Categories<TRes> {
  factory CopyWith$Query$Categories(
    Query$Categories instance,
    TRes Function(Query$Categories) then,
  ) = _CopyWithImpl$Query$Categories;

  factory CopyWith$Query$Categories.stub(TRes res) =
      _CopyWithStubImpl$Query$Categories;

  TRes call({
    List<Query$Categories$categories?>? categories,
    String? $__typename,
  });
  TRes categories(
      Iterable<Query$Categories$categories?>? Function(
              Iterable<
                  CopyWith$Query$Categories$categories<
                      Query$Categories$categories>?>?)
          _fn);
}

class _CopyWithImpl$Query$Categories<TRes>
    implements CopyWith$Query$Categories<TRes> {
  _CopyWithImpl$Query$Categories(
    this._instance,
    this._then,
  );

  final Query$Categories _instance;

  final TRes Function(Query$Categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? categories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Categories(
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<Query$Categories$categories?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes categories(
          Iterable<Query$Categories$categories?>? Function(
                  Iterable<
                      CopyWith$Query$Categories$categories<
                          Query$Categories$categories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Query$Categories$categories(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Categories<TRes>
    implements CopyWith$Query$Categories<TRes> {
  _CopyWithStubImpl$Query$Categories(this._res);

  TRes _res;

  call({
    List<Query$Categories$categories?>? categories,
    String? $__typename,
  }) =>
      _res;

  categories(_fn) => _res;
}

const documentNodeQueryCategories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Categories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'categories'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'subCategory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Categories _parserFn$Query$Categories(Map<String, dynamic> data) =>
    Query$Categories.fromJson(data);
typedef OnQueryComplete$Query$Categories = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Categories?,
);

class Options$Query$Categories extends graphql.QueryOptions<Query$Categories> {
  Options$Query$Categories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Categories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Categories? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Categories(data),
                  ),
          onError: onError,
          document: documentNodeQueryCategories,
          parserFn: _parserFn$Query$Categories,
        );

  final OnQueryComplete$Query$Categories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Categories
    extends graphql.WatchQueryOptions<Query$Categories> {
  WatchOptions$Query$Categories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Categories? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryCategories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Categories,
        );
}

class FetchMoreOptions$Query$Categories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Categories({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCategories,
        );
}

extension ClientExtension$Query$Categories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Categories>> query$Categories(
          [Options$Query$Categories? options]) async =>
      await this.query(options ?? Options$Query$Categories());
  graphql.ObservableQuery<Query$Categories> watchQuery$Categories(
          [WatchOptions$Query$Categories? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Categories());
  void writeQuery$Categories({
    required Query$Categories data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCategories)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Categories? readQuery$Categories({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCategories)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Categories.fromJson(result);
  }
}

class Query$Categories$categories {
  Query$Categories$categories({
    required this.id,
    required this.name,
    this.subCategory,
    this.$__typename = 'CategoryTypes',
  });

  factory Query$Categories$categories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$subCategory = json['subCategory'];
    final l$$__typename = json['__typename'];
    return Query$Categories$categories(
      id: (l$id as String),
      name: (l$name as String),
      subCategory: (l$subCategory as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Categories$categories$subCategory.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final List<Query$Categories$categories$subCategory?>? subCategory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$subCategory = subCategory;
    _resultData['subCategory'] =
        l$subCategory?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$subCategory = subCategory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$subCategory == null
          ? null
          : Object.hashAll(l$subCategory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Categories$categories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != null && lOther$subCategory != null) {
      if (l$subCategory.length != lOther$subCategory.length) {
        return false;
      }
      for (int i = 0; i < l$subCategory.length; i++) {
        final l$subCategory$entry = l$subCategory[i];
        final lOther$subCategory$entry = lOther$subCategory[i];
        if (l$subCategory$entry != lOther$subCategory$entry) {
          return false;
        }
      }
    } else if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Categories$categories
    on Query$Categories$categories {
  CopyWith$Query$Categories$categories<Query$Categories$categories>
      get copyWith => CopyWith$Query$Categories$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Categories$categories<TRes> {
  factory CopyWith$Query$Categories$categories(
    Query$Categories$categories instance,
    TRes Function(Query$Categories$categories) then,
  ) = _CopyWithImpl$Query$Categories$categories;

  factory CopyWith$Query$Categories$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$Categories$categories;

  TRes call({
    String? id,
    String? name,
    List<Query$Categories$categories$subCategory?>? subCategory,
    String? $__typename,
  });
  TRes subCategory(
      Iterable<Query$Categories$categories$subCategory?>? Function(
              Iterable<
                  CopyWith$Query$Categories$categories$subCategory<
                      Query$Categories$categories$subCategory>?>?)
          _fn);
}

class _CopyWithImpl$Query$Categories$categories<TRes>
    implements CopyWith$Query$Categories$categories<TRes> {
  _CopyWithImpl$Query$Categories$categories(
    this._instance,
    this._then,
  );

  final Query$Categories$categories _instance;

  final TRes Function(Query$Categories$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? subCategory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Categories$categories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory as List<Query$Categories$categories$subCategory?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes subCategory(
          Iterable<Query$Categories$categories$subCategory?>? Function(
                  Iterable<
                      CopyWith$Query$Categories$categories$subCategory<
                          Query$Categories$categories$subCategory>?>?)
              _fn) =>
      call(
          subCategory: _fn(_instance.subCategory?.map((e) => e == null
              ? null
              : CopyWith$Query$Categories$categories$subCategory(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Categories$categories<TRes>
    implements CopyWith$Query$Categories$categories<TRes> {
  _CopyWithStubImpl$Query$Categories$categories(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Query$Categories$categories$subCategory?>? subCategory,
    String? $__typename,
  }) =>
      _res;

  subCategory(_fn) => _res;
}

class Query$Categories$categories$subCategory {
  Query$Categories$categories$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$Categories$categories$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Categories$categories$subCategory(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Categories$categories$subCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Categories$categories$subCategory
    on Query$Categories$categories$subCategory {
  CopyWith$Query$Categories$categories$subCategory<
          Query$Categories$categories$subCategory>
      get copyWith => CopyWith$Query$Categories$categories$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Categories$categories$subCategory<TRes> {
  factory CopyWith$Query$Categories$categories$subCategory(
    Query$Categories$categories$subCategory instance,
    TRes Function(Query$Categories$categories$subCategory) then,
  ) = _CopyWithImpl$Query$Categories$categories$subCategory;

  factory CopyWith$Query$Categories$categories$subCategory.stub(TRes res) =
      _CopyWithStubImpl$Query$Categories$categories$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Categories$categories$subCategory<TRes>
    implements CopyWith$Query$Categories$categories$subCategory<TRes> {
  _CopyWithImpl$Query$Categories$categories$subCategory(
    this._instance,
    this._then,
  );

  final Query$Categories$categories$subCategory _instance;

  final TRes Function(Query$Categories$categories$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Categories$categories$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Categories$categories$subCategory<TRes>
    implements CopyWith$Query$Categories$categories$subCategory<TRes> {
  _CopyWithStubImpl$Query$Categories$categories$subCategory(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$likedProducts {
  factory Variables$Query$likedProducts({
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$likedProducts._({
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$likedProducts._(this._$data);

  factory Variables$Query$likedProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$likedProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('pageCount')) {
      final l$pageCount = pageCount;
      result$data['pageCount'] = l$pageCount;
    }
    if (_$data.containsKey('pageNumber')) {
      final l$pageNumber = pageNumber;
      result$data['pageNumber'] = l$pageNumber;
    }
    return result$data;
  }

  CopyWith$Variables$Query$likedProducts<Variables$Query$likedProducts>
      get copyWith => CopyWith$Variables$Query$likedProducts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$likedProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageCount = pageCount;
    final lOther$pageCount = other.pageCount;
    if (_$data.containsKey('pageCount') !=
        other._$data.containsKey('pageCount')) {
      return false;
    }
    if (l$pageCount != lOther$pageCount) {
      return false;
    }
    final l$pageNumber = pageNumber;
    final lOther$pageNumber = other.pageNumber;
    if (_$data.containsKey('pageNumber') !=
        other._$data.containsKey('pageNumber')) {
      return false;
    }
    if (l$pageNumber != lOther$pageNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$likedProducts<TRes> {
  factory CopyWith$Variables$Query$likedProducts(
    Variables$Query$likedProducts instance,
    TRes Function(Variables$Query$likedProducts) then,
  ) = _CopyWithImpl$Variables$Query$likedProducts;

  factory CopyWith$Variables$Query$likedProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$likedProducts;

  TRes call({
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$likedProducts<TRes>
    implements CopyWith$Variables$Query$likedProducts<TRes> {
  _CopyWithImpl$Variables$Query$likedProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$likedProducts _instance;

  final TRes Function(Variables$Query$likedProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$likedProducts._({
        ..._instance._$data,
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$likedProducts<TRes>
    implements CopyWith$Variables$Query$likedProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$likedProducts(this._res);

  TRes _res;

  call({
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$likedProducts {
  Query$likedProducts({
    this.likedProducts,
    this.$__typename = 'Query',
  });

  factory Query$likedProducts.fromJson(Map<String, dynamic> json) {
    final l$likedProducts = json['likedProducts'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts(
      likedProducts: (l$likedProducts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$likedProducts$likedProducts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$likedProducts$likedProducts?>? likedProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likedProducts = likedProducts;
    _resultData['likedProducts'] =
        l$likedProducts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likedProducts = likedProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$likedProducts == null
          ? null
          : Object.hashAll(l$likedProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$likedProducts = likedProducts;
    final lOther$likedProducts = other.likedProducts;
    if (l$likedProducts != null && lOther$likedProducts != null) {
      if (l$likedProducts.length != lOther$likedProducts.length) {
        return false;
      }
      for (int i = 0; i < l$likedProducts.length; i++) {
        final l$likedProducts$entry = l$likedProducts[i];
        final lOther$likedProducts$entry = lOther$likedProducts[i];
        if (l$likedProducts$entry != lOther$likedProducts$entry) {
          return false;
        }
      }
    } else if (l$likedProducts != lOther$likedProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts on Query$likedProducts {
  CopyWith$Query$likedProducts<Query$likedProducts> get copyWith =>
      CopyWith$Query$likedProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$likedProducts<TRes> {
  factory CopyWith$Query$likedProducts(
    Query$likedProducts instance,
    TRes Function(Query$likedProducts) then,
  ) = _CopyWithImpl$Query$likedProducts;

  factory CopyWith$Query$likedProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$likedProducts;

  TRes call({
    List<Query$likedProducts$likedProducts?>? likedProducts,
    String? $__typename,
  });
  TRes likedProducts(
      Iterable<Query$likedProducts$likedProducts?>? Function(
              Iterable<
                  CopyWith$Query$likedProducts$likedProducts<
                      Query$likedProducts$likedProducts>?>?)
          _fn);
}

class _CopyWithImpl$Query$likedProducts<TRes>
    implements CopyWith$Query$likedProducts<TRes> {
  _CopyWithImpl$Query$likedProducts(
    this._instance,
    this._then,
  );

  final Query$likedProducts _instance;

  final TRes Function(Query$likedProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? likedProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts(
        likedProducts: likedProducts == _undefined
            ? _instance.likedProducts
            : (likedProducts as List<Query$likedProducts$likedProducts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes likedProducts(
          Iterable<Query$likedProducts$likedProducts?>? Function(
                  Iterable<
                      CopyWith$Query$likedProducts$likedProducts<
                          Query$likedProducts$likedProducts>?>?)
              _fn) =>
      call(
          likedProducts: _fn(_instance.likedProducts?.map((e) => e == null
              ? null
              : CopyWith$Query$likedProducts$likedProducts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$likedProducts<TRes>
    implements CopyWith$Query$likedProducts<TRes> {
  _CopyWithStubImpl$Query$likedProducts(this._res);

  TRes _res;

  call({
    List<Query$likedProducts$likedProducts?>? likedProducts,
    String? $__typename,
  }) =>
      _res;

  likedProducts(_fn) => _res;
}

const documentNodeQuerylikedProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'likedProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageCount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'likedProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pageCount'),
            value: VariableNode(name: NameNode(value: 'pageCount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageNumber'),
            value: VariableNode(name: NameNode(value: 'pageNumber')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'category'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'subCategory'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'seller'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'condition'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'discountPrice'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'size'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'condition'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'price'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'parcelSize'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'views'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imagesUrl'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userLiked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'brand'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$likedProducts _parserFn$Query$likedProducts(Map<String, dynamic> data) =>
    Query$likedProducts.fromJson(data);
typedef OnQueryComplete$Query$likedProducts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$likedProducts?,
);

class Options$Query$likedProducts
    extends graphql.QueryOptions<Query$likedProducts> {
  Options$Query$likedProducts({
    String? operationName,
    Variables$Query$likedProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$likedProducts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$likedProducts? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$likedProducts(data),
                  ),
          onError: onError,
          document: documentNodeQuerylikedProducts,
          parserFn: _parserFn$Query$likedProducts,
        );

  final OnQueryComplete$Query$likedProducts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$likedProducts
    extends graphql.WatchQueryOptions<Query$likedProducts> {
  WatchOptions$Query$likedProducts({
    String? operationName,
    Variables$Query$likedProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$likedProducts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerylikedProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$likedProducts,
        );
}

class FetchMoreOptions$Query$likedProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$likedProducts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$likedProducts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerylikedProducts,
        );
}

extension ClientExtension$Query$likedProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$likedProducts>> query$likedProducts(
          [Options$Query$likedProducts? options]) async =>
      await this.query(options ?? Options$Query$likedProducts());
  graphql.ObservableQuery<Query$likedProducts> watchQuery$likedProducts(
          [WatchOptions$Query$likedProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$likedProducts());
  void writeQuery$likedProducts({
    required Query$likedProducts data,
    Variables$Query$likedProducts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerylikedProducts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$likedProducts? readQuery$likedProducts({
    Variables$Query$likedProducts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerylikedProducts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$likedProducts.fromJson(result);
  }
}

class Query$likedProducts$likedProducts {
  Query$likedProducts$likedProducts({
    this.product,
    this.$__typename = 'LikedProductType',
  });

  factory Query$likedProducts$likedProducts.fromJson(
      Map<String, dynamic> json) {
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts(
      product: l$product == null
          ? null
          : Query$likedProducts$likedProducts$product.fromJson(
              (l$product as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$likedProducts$likedProducts$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts$likedProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts$likedProducts
    on Query$likedProducts$likedProducts {
  CopyWith$Query$likedProducts$likedProducts<Query$likedProducts$likedProducts>
      get copyWith => CopyWith$Query$likedProducts$likedProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts<TRes> {
  factory CopyWith$Query$likedProducts$likedProducts(
    Query$likedProducts$likedProducts instance,
    TRes Function(Query$likedProducts$likedProducts) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts;

  factory CopyWith$Query$likedProducts$likedProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts;

  TRes call({
    Query$likedProducts$likedProducts$product? product,
    String? $__typename,
  });
  CopyWith$Query$likedProducts$likedProducts$product<TRes> get product;
}

class _CopyWithImpl$Query$likedProducts$likedProducts<TRes>
    implements CopyWith$Query$likedProducts$likedProducts<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts _instance;

  final TRes Function(Query$likedProducts$likedProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts(
        product: product == _undefined
            ? _instance.product
            : (product as Query$likedProducts$likedProducts$product?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$likedProducts$likedProducts$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$likedProducts$likedProducts$product.stub(
            _then(_instance))
        : CopyWith$Query$likedProducts$likedProducts$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts<TRes>
    implements CopyWith$Query$likedProducts$likedProducts<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts(this._res);

  TRes _res;

  call({
    Query$likedProducts$likedProducts$product? product,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$likedProducts$likedProducts$product<TRes> get product =>
      CopyWith$Query$likedProducts$likedProducts$product.stub(_res);
}

class Query$likedProducts$likedProducts$product {
  Query$likedProducts$likedProducts$product({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    required this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    this.userLiked,
    required this.color,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$likedProducts$likedProducts$product.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$seller = json['seller'];
    final l$condition = json['condition'];
    final l$discountPrice = json['discountPrice'];
    final l$size = json['size'];
    final l$price = json['price'];
    final l$parcelSize = json['parcelSize'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$userLiked = json['userLiked'];
    final l$color = json['color'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts$product(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$likedProducts$likedProducts$product$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$likedProducts$likedProducts$product$subCategory.fromJson(
              (l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$likedProducts$likedProducts$product$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as String),
      parcelSize: l$parcelSize == null
          ? null
          : fromJson$Enum$ProductsProductParcelSizeChoices(
              (l$parcelSize as String)),
      views: (l$views as int),
      likes: (l$likes as int),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      userLiked: (l$userLiked as bool?),
      color: (l$color as List<dynamic>).map((e) => (e as String)).toList(),
      brand: l$brand == null
          ? null
          : Query$likedProducts$likedProducts$product$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$likedProducts$likedProducts$product$category? category;

  final Query$likedProducts$likedProducts$product$subCategory? subCategory;

  final Query$likedProducts$likedProducts$product$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final String price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final bool? userLiked;

  final List<String> color;

  final Query$likedProducts$likedProducts$product$brand? brand;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$subCategory = subCategory;
    _resultData['subCategory'] = l$subCategory?.toJson();
    final l$seller = seller;
    _resultData['seller'] = l$seller?.toJson();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$discountPrice = discountPrice;
    _resultData['discountPrice'] = l$discountPrice;
    final l$size = size;
    _resultData['size'] =
        l$size == null ? null : toJson$Enum$ProductsProductSizeChoices(l$size);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$parcelSize = parcelSize;
    _resultData['parcelSize'] = l$parcelSize == null
        ? null
        : toJson$Enum$ProductsProductParcelSizeChoices(l$parcelSize);
    final l$views = views;
    _resultData['views'] = l$views;
    final l$likes = likes;
    _resultData['likes'] = l$likes;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$userLiked = userLiked;
    _resultData['userLiked'] = l$userLiked;
    final l$color = color;
    _resultData['color'] = l$color.map((e) => e).toList();
    final l$brand = brand;
    _resultData['brand'] = l$brand?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$subCategory = subCategory;
    final l$seller = seller;
    final l$condition = condition;
    final l$discountPrice = discountPrice;
    final l$size = size;
    final l$price = price;
    final l$parcelSize = parcelSize;
    final l$views = views;
    final l$likes = likes;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$userLiked = userLiked;
    final l$color = color;
    final l$brand = brand;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$seller,
      l$condition,
      l$discountPrice,
      l$size,
      l$price,
      l$parcelSize,
      l$views,
      l$likes,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
      l$userLiked,
      Object.hashAll(l$color.map((v) => v)),
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts$likedProducts$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != lOther$subCategory) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$discountPrice = discountPrice;
    final lOther$discountPrice = other.discountPrice;
    if (l$discountPrice != lOther$discountPrice) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$views = views;
    final lOther$views = other.views;
    if (l$views != lOther$views) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != lOther$likes) {
      return false;
    }
    final l$imagesUrl = imagesUrl;
    final lOther$imagesUrl = other.imagesUrl;
    if (l$imagesUrl.length != lOther$imagesUrl.length) {
      return false;
    }
    for (int i = 0; i < l$imagesUrl.length; i++) {
      final l$imagesUrl$entry = l$imagesUrl[i];
      final lOther$imagesUrl$entry = lOther$imagesUrl[i];
      if (l$imagesUrl$entry != lOther$imagesUrl$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$userLiked = userLiked;
    final lOther$userLiked = other.userLiked;
    if (l$userLiked != lOther$userLiked) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color.length != lOther$color.length) {
      return false;
    }
    for (int i = 0; i < l$color.length; i++) {
      final l$color$entry = l$color[i];
      final lOther$color$entry = lOther$color[i];
      if (l$color$entry != lOther$color$entry) {
        return false;
      }
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts$likedProducts$product
    on Query$likedProducts$likedProducts$product {
  CopyWith$Query$likedProducts$likedProducts$product<
          Query$likedProducts$likedProducts$product>
      get copyWith => CopyWith$Query$likedProducts$likedProducts$product(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts$product<TRes> {
  factory CopyWith$Query$likedProducts$likedProducts$product(
    Query$likedProducts$likedProducts$product instance,
    TRes Function(Query$likedProducts$likedProducts$product) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts$product;

  factory CopyWith$Query$likedProducts$likedProducts$product.stub(TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts$product;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$likedProducts$likedProducts$product$category? category,
    Query$likedProducts$likedProducts$product$subCategory? subCategory,
    Query$likedProducts$likedProducts$product$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? userLiked,
    List<String>? color,
    Query$likedProducts$likedProducts$product$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$likedProducts$likedProducts$product$category<TRes>
      get category;
  CopyWith$Query$likedProducts$likedProducts$product$subCategory<TRes>
      get subCategory;
  CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> get seller;
  CopyWith$Query$likedProducts$likedProducts$product$brand<TRes> get brand;
}

class _CopyWithImpl$Query$likedProducts$likedProducts$product<TRes>
    implements CopyWith$Query$likedProducts$likedProducts$product<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts$product(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts$product _instance;

  final TRes Function(Query$likedProducts$likedProducts$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? subCategory = _undefined,
    Object? seller = _undefined,
    Object? condition = _undefined,
    Object? discountPrice = _undefined,
    Object? size = _undefined,
    Object? price = _undefined,
    Object? parcelSize = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? userLiked = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts$product(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category as Query$likedProducts$likedProducts$product$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory
                as Query$likedProducts$likedProducts$product$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller as Query$likedProducts$likedProducts$product$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        parcelSize: parcelSize == _undefined
            ? _instance.parcelSize
            : (parcelSize as Enum$ProductsProductParcelSizeChoices?),
        views: views == _undefined || views == null
            ? _instance.views
            : (views as int),
        likes: likes == _undefined || likes == null
            ? _instance.likes
            : (likes as int),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        userLiked: userLiked == _undefined
            ? _instance.userLiked
            : (userLiked as bool?),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as List<String>),
        brand: brand == _undefined
            ? _instance.brand
            : (brand as Query$likedProducts$likedProducts$product$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$likedProducts$likedProducts$product$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$likedProducts$likedProducts$product$category.stub(
            _then(_instance))
        : CopyWith$Query$likedProducts$likedProducts$product$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$likedProducts$likedProducts$product$subCategory<TRes>
      get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$likedProducts$likedProducts$product$subCategory.stub(
            _then(_instance))
        : CopyWith$Query$likedProducts$likedProducts$product$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$likedProducts$likedProducts$product$seller.stub(
            _then(_instance))
        : CopyWith$Query$likedProducts$likedProducts$product$seller(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$likedProducts$likedProducts$product$brand<TRes> get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$likedProducts$likedProducts$product$brand.stub(
            _then(_instance))
        : CopyWith$Query$likedProducts$likedProducts$product$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts$product<TRes>
    implements CopyWith$Query$likedProducts$likedProducts$product<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts$product(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$likedProducts$likedProducts$product$category? category,
    Query$likedProducts$likedProducts$product$subCategory? subCategory,
    Query$likedProducts$likedProducts$product$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    String? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? userLiked,
    List<String>? color,
    Query$likedProducts$likedProducts$product$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$likedProducts$likedProducts$product$category<TRes>
      get category =>
          CopyWith$Query$likedProducts$likedProducts$product$category.stub(
              _res);

  CopyWith$Query$likedProducts$likedProducts$product$subCategory<TRes>
      get subCategory =>
          CopyWith$Query$likedProducts$likedProducts$product$subCategory.stub(
              _res);

  CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> get seller =>
      CopyWith$Query$likedProducts$likedProducts$product$seller.stub(_res);

  CopyWith$Query$likedProducts$likedProducts$product$brand<TRes> get brand =>
      CopyWith$Query$likedProducts$likedProducts$product$brand.stub(_res);
}

class Query$likedProducts$likedProducts$product$category {
  Query$likedProducts$likedProducts$product$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$likedProducts$likedProducts$product$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts$product$category(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts$likedProducts$product$category ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts$likedProducts$product$category
    on Query$likedProducts$likedProducts$product$category {
  CopyWith$Query$likedProducts$likedProducts$product$category<
          Query$likedProducts$likedProducts$product$category>
      get copyWith =>
          CopyWith$Query$likedProducts$likedProducts$product$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts$product$category<
    TRes> {
  factory CopyWith$Query$likedProducts$likedProducts$product$category(
    Query$likedProducts$likedProducts$product$category instance,
    TRes Function(Query$likedProducts$likedProducts$product$category) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts$product$category;

  factory CopyWith$Query$likedProducts$likedProducts$product$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts$product$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$likedProducts$likedProducts$product$category<TRes>
    implements
        CopyWith$Query$likedProducts$likedProducts$product$category<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts$product$category(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts$product$category _instance;

  final TRes Function(Query$likedProducts$likedProducts$product$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts$product$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts$product$category<TRes>
    implements
        CopyWith$Query$likedProducts$likedProducts$product$category<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts$product$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$likedProducts$likedProducts$product$subCategory {
  Query$likedProducts$likedProducts$product$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$likedProducts$likedProducts$product$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts$product$subCategory(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts$likedProducts$product$subCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts$likedProducts$product$subCategory
    on Query$likedProducts$likedProducts$product$subCategory {
  CopyWith$Query$likedProducts$likedProducts$product$subCategory<
          Query$likedProducts$likedProducts$product$subCategory>
      get copyWith =>
          CopyWith$Query$likedProducts$likedProducts$product$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts$product$subCategory<
    TRes> {
  factory CopyWith$Query$likedProducts$likedProducts$product$subCategory(
    Query$likedProducts$likedProducts$product$subCategory instance,
    TRes Function(Query$likedProducts$likedProducts$product$subCategory) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts$product$subCategory;

  factory CopyWith$Query$likedProducts$likedProducts$product$subCategory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts$product$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$likedProducts$likedProducts$product$subCategory<TRes>
    implements
        CopyWith$Query$likedProducts$likedProducts$product$subCategory<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts$product$subCategory(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts$product$subCategory _instance;

  final TRes Function(Query$likedProducts$likedProducts$product$subCategory)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts$product$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts$product$subCategory<
        TRes>
    implements
        CopyWith$Query$likedProducts$likedProducts$product$subCategory<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts$product$subCategory(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$likedProducts$likedProducts$product$seller {
  Query$likedProducts$likedProducts$product$seller({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$likedProducts$likedProducts$product$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts$product$seller(
      id: (l$id as int?),
      username: (l$username as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts$likedProducts$product$seller ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts$likedProducts$product$seller
    on Query$likedProducts$likedProducts$product$seller {
  CopyWith$Query$likedProducts$likedProducts$product$seller<
          Query$likedProducts$likedProducts$product$seller>
      get copyWith => CopyWith$Query$likedProducts$likedProducts$product$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> {
  factory CopyWith$Query$likedProducts$likedProducts$product$seller(
    Query$likedProducts$likedProducts$product$seller instance,
    TRes Function(Query$likedProducts$likedProducts$product$seller) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts$product$seller;

  factory CopyWith$Query$likedProducts$likedProducts$product$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts$product$seller;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$likedProducts$likedProducts$product$seller<TRes>
    implements CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts$product$seller(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts$product$seller _instance;

  final TRes Function(Query$likedProducts$likedProducts$product$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts$product$seller(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts$product$seller<TRes>
    implements CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts$product$seller(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Query$likedProducts$likedProducts$product$brand {
  Query$likedProducts$likedProducts$product$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$likedProducts$likedProducts$product$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts$product$brand(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$likedProducts$likedProducts$product$brand ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$likedProducts$likedProducts$product$brand
    on Query$likedProducts$likedProducts$product$brand {
  CopyWith$Query$likedProducts$likedProducts$product$brand<
          Query$likedProducts$likedProducts$product$brand>
      get copyWith => CopyWith$Query$likedProducts$likedProducts$product$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts$product$brand<TRes> {
  factory CopyWith$Query$likedProducts$likedProducts$product$brand(
    Query$likedProducts$likedProducts$product$brand instance,
    TRes Function(Query$likedProducts$likedProducts$product$brand) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts$product$brand;

  factory CopyWith$Query$likedProducts$likedProducts$product$brand.stub(
          TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts$product$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$likedProducts$likedProducts$product$brand<TRes>
    implements CopyWith$Query$likedProducts$likedProducts$product$brand<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts$product$brand(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts$product$brand _instance;

  final TRes Function(Query$likedProducts$likedProducts$product$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts$product$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts$product$brand<TRes>
    implements CopyWith$Query$likedProducts$likedProducts$product$brand<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts$product$brand(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Brands {
  factory Variables$Query$Brands({
    String? search,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$Brands._({
        if (search != null) r'search': search,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$Brands._(this._$data);

  factory Variables$Query$Brands.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$Brands._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('pageCount')) {
      final l$pageCount = pageCount;
      result$data['pageCount'] = l$pageCount;
    }
    if (_$data.containsKey('pageNumber')) {
      final l$pageNumber = pageNumber;
      result$data['pageNumber'] = l$pageNumber;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Brands<Variables$Query$Brands> get copyWith =>
      CopyWith$Variables$Query$Brands(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Brands || runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$pageCount = pageCount;
    final lOther$pageCount = other.pageCount;
    if (_$data.containsKey('pageCount') !=
        other._$data.containsKey('pageCount')) {
      return false;
    }
    if (l$pageCount != lOther$pageCount) {
      return false;
    }
    final l$pageNumber = pageNumber;
    final lOther$pageNumber = other.pageNumber;
    if (_$data.containsKey('pageNumber') !=
        other._$data.containsKey('pageNumber')) {
      return false;
    }
    if (l$pageNumber != lOther$pageNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Brands<TRes> {
  factory CopyWith$Variables$Query$Brands(
    Variables$Query$Brands instance,
    TRes Function(Variables$Query$Brands) then,
  ) = _CopyWithImpl$Variables$Query$Brands;

  factory CopyWith$Variables$Query$Brands.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Brands;

  TRes call({
    String? search,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$Brands<TRes>
    implements CopyWith$Variables$Query$Brands<TRes> {
  _CopyWithImpl$Variables$Query$Brands(
    this._instance,
    this._then,
  );

  final Variables$Query$Brands _instance;

  final TRes Function(Variables$Query$Brands) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$Brands._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Brands<TRes>
    implements CopyWith$Variables$Query$Brands<TRes> {
  _CopyWithStubImpl$Variables$Query$Brands(this._res);

  TRes _res;

  call({
    String? search,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$Brands {
  Query$Brands({
    this.brands,
    this.brandsTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$Brands.fromJson(Map<String, dynamic> json) {
    final l$brands = json['brands'];
    final l$brandsTotalNumber = json['brandsTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$Brands(
      brands: (l$brands as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Brands$brands.fromJson((e as Map<String, dynamic>)))
          .toList(),
      brandsTotalNumber: (l$brandsTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Brands$brands?>? brands;

  final int? brandsTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$brands = brands;
    _resultData['brands'] = l$brands?.map((e) => e?.toJson()).toList();
    final l$brandsTotalNumber = brandsTotalNumber;
    _resultData['brandsTotalNumber'] = l$brandsTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$brands = brands;
    final l$brandsTotalNumber = brandsTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$brands == null ? null : Object.hashAll(l$brands.map((v) => v)),
      l$brandsTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Brands || runtimeType != other.runtimeType) {
      return false;
    }
    final l$brands = brands;
    final lOther$brands = other.brands;
    if (l$brands != null && lOther$brands != null) {
      if (l$brands.length != lOther$brands.length) {
        return false;
      }
      for (int i = 0; i < l$brands.length; i++) {
        final l$brands$entry = l$brands[i];
        final lOther$brands$entry = lOther$brands[i];
        if (l$brands$entry != lOther$brands$entry) {
          return false;
        }
      }
    } else if (l$brands != lOther$brands) {
      return false;
    }
    final l$brandsTotalNumber = brandsTotalNumber;
    final lOther$brandsTotalNumber = other.brandsTotalNumber;
    if (l$brandsTotalNumber != lOther$brandsTotalNumber) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Brands on Query$Brands {
  CopyWith$Query$Brands<Query$Brands> get copyWith => CopyWith$Query$Brands(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Brands<TRes> {
  factory CopyWith$Query$Brands(
    Query$Brands instance,
    TRes Function(Query$Brands) then,
  ) = _CopyWithImpl$Query$Brands;

  factory CopyWith$Query$Brands.stub(TRes res) = _CopyWithStubImpl$Query$Brands;

  TRes call({
    List<Query$Brands$brands?>? brands,
    int? brandsTotalNumber,
    String? $__typename,
  });
  TRes brands(
      Iterable<Query$Brands$brands?>? Function(
              Iterable<CopyWith$Query$Brands$brands<Query$Brands$brands>?>?)
          _fn);
}

class _CopyWithImpl$Query$Brands<TRes> implements CopyWith$Query$Brands<TRes> {
  _CopyWithImpl$Query$Brands(
    this._instance,
    this._then,
  );

  final Query$Brands _instance;

  final TRes Function(Query$Brands) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? brands = _undefined,
    Object? brandsTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Brands(
        brands: brands == _undefined
            ? _instance.brands
            : (brands as List<Query$Brands$brands?>?),
        brandsTotalNumber: brandsTotalNumber == _undefined
            ? _instance.brandsTotalNumber
            : (brandsTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes brands(
          Iterable<Query$Brands$brands?>? Function(
                  Iterable<CopyWith$Query$Brands$brands<Query$Brands$brands>?>?)
              _fn) =>
      call(
          brands: _fn(_instance.brands?.map((e) => e == null
              ? null
              : CopyWith$Query$Brands$brands(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Brands<TRes>
    implements CopyWith$Query$Brands<TRes> {
  _CopyWithStubImpl$Query$Brands(this._res);

  TRes _res;

  call({
    List<Query$Brands$brands?>? brands,
    int? brandsTotalNumber,
    String? $__typename,
  }) =>
      _res;

  brands(_fn) => _res;
}

const documentNodeQueryBrands = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Brands'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageCount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'brands'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageCount'),
            value: VariableNode(name: NameNode(value: 'pageCount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageNumber'),
            value: VariableNode(name: NameNode(value: 'pageNumber')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'brandsTotalNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Brands _parserFn$Query$Brands(Map<String, dynamic> data) =>
    Query$Brands.fromJson(data);
typedef OnQueryComplete$Query$Brands = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Brands?,
);

class Options$Query$Brands extends graphql.QueryOptions<Query$Brands> {
  Options$Query$Brands({
    String? operationName,
    Variables$Query$Brands? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Brands? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Brands? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Brands(data),
                  ),
          onError: onError,
          document: documentNodeQueryBrands,
          parserFn: _parserFn$Query$Brands,
        );

  final OnQueryComplete$Query$Brands? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Brands
    extends graphql.WatchQueryOptions<Query$Brands> {
  WatchOptions$Query$Brands({
    String? operationName,
    Variables$Query$Brands? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Brands? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryBrands,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Brands,
        );
}

class FetchMoreOptions$Query$Brands extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Brands({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Brands? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryBrands,
        );
}

extension ClientExtension$Query$Brands on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Brands>> query$Brands(
          [Options$Query$Brands? options]) async =>
      await this.query(options ?? Options$Query$Brands());
  graphql.ObservableQuery<Query$Brands> watchQuery$Brands(
          [WatchOptions$Query$Brands? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Brands());
  void writeQuery$Brands({
    required Query$Brands data,
    Variables$Query$Brands? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBrands),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Brands? readQuery$Brands({
    Variables$Query$Brands? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryBrands),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Brands.fromJson(result);
  }
}

class Query$Brands$brands {
  Query$Brands$brands({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$Brands$brands.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Brands$brands(
      id: (l$id as int?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Brands$brands || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Brands$brands on Query$Brands$brands {
  CopyWith$Query$Brands$brands<Query$Brands$brands> get copyWith =>
      CopyWith$Query$Brands$brands(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Brands$brands<TRes> {
  factory CopyWith$Query$Brands$brands(
    Query$Brands$brands instance,
    TRes Function(Query$Brands$brands) then,
  ) = _CopyWithImpl$Query$Brands$brands;

  factory CopyWith$Query$Brands$brands.stub(TRes res) =
      _CopyWithStubImpl$Query$Brands$brands;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Brands$brands<TRes>
    implements CopyWith$Query$Brands$brands<TRes> {
  _CopyWithImpl$Query$Brands$brands(
    this._instance,
    this._then,
  );

  final Query$Brands$brands _instance;

  final TRes Function(Query$Brands$brands) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Brands$brands(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Brands$brands<TRes>
    implements CopyWith$Query$Brands$brands<TRes> {
  _CopyWithStubImpl$Query$Brands$brands(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
