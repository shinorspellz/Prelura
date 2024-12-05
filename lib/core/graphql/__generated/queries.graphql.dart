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
    String? $__typename,
  });
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    String? $__typename,
  });
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
            name: NameNode(value: 'sizes'),
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
                name: NameNode(value: 'sizeValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sizeSystem'),
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
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'postagePrice'),
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
    this.sizes,
    this.condition,
    required this.price,
    this.postagePrice,
    required this.views,
    required this.likes,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'ProductType',
  });

  factory Query$Product$product.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$sizes = json['sizes'];
    final l$condition = json['condition'];
    final l$price = json['price'];
    final l$postagePrice = json['postagePrice'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
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
      sizes: (l$sizes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Product$product$sizes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      price: (l$price as String),
      postagePrice: (l$postagePrice as String?),
      views: (l$views as int),
      likes: (l$likes as int),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$Product$product$category? category;

  final Query$Product$product$subCategory? subCategory;

  final List<Query$Product$product$sizes?>? sizes;

  final Enum$ProductsProductConditionChoices? condition;

  final String price;

  final String? postagePrice;

  final int views;

  final int likes;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

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
    final l$sizes = sizes;
    _resultData['sizes'] = l$sizes?.map((e) => e?.toJson()).toList();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$postagePrice = postagePrice;
    _resultData['postagePrice'] = l$postagePrice;
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
    final l$sizes = sizes;
    final l$condition = condition;
    final l$price = price;
    final l$postagePrice = postagePrice;
    final l$views = views;
    final l$likes = likes;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$sizes == null ? null : Object.hashAll(l$sizes.map((v) => v)),
      l$condition,
      l$price,
      l$postagePrice,
      l$views,
      l$likes,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
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
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (l$sizes != null && lOther$sizes != null) {
      if (l$sizes.length != lOther$sizes.length) {
        return false;
      }
      for (int i = 0; i < l$sizes.length; i++) {
        final l$sizes$entry = l$sizes[i];
        final lOther$sizes$entry = lOther$sizes[i];
        if (l$sizes$entry != lOther$sizes$entry) {
          return false;
        }
      }
    } else if (l$sizes != lOther$sizes) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$postagePrice = postagePrice;
    final lOther$postagePrice = other.postagePrice;
    if (l$postagePrice != lOther$postagePrice) {
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
    List<Query$Product$product$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    String? price,
    String? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$Product$product$category<TRes> get category;
  CopyWith$Query$Product$product$subCategory<TRes> get subCategory;
  TRes sizes(
      Iterable<Query$Product$product$sizes?>? Function(
              Iterable<
                  CopyWith$Query$Product$product$sizes<
                      Query$Product$product$sizes>?>?)
          _fn);
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
    Object? sizes = _undefined,
    Object? condition = _undefined,
    Object? price = _undefined,
    Object? postagePrice = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
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
        sizes: sizes == _undefined
            ? _instance.sizes
            : (sizes as List<Query$Product$product$sizes?>?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        postagePrice: postagePrice == _undefined
            ? _instance.postagePrice
            : (postagePrice as String?),
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

  TRes sizes(
          Iterable<Query$Product$product$sizes?>? Function(
                  Iterable<
                      CopyWith$Query$Product$product$sizes<
                          Query$Product$product$sizes>?>?)
              _fn) =>
      call(
          sizes: _fn(_instance.sizes?.map((e) => e == null
              ? null
              : CopyWith$Query$Product$product$sizes(
                  e,
                  (i) => i,
                )))?.toList());
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
    List<Query$Product$product$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    String? price,
    String? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Product$product$category<TRes> get category =>
      CopyWith$Query$Product$product$category.stub(_res);

  CopyWith$Query$Product$product$subCategory<TRes> get subCategory =>
      CopyWith$Query$Product$product$subCategory.stub(_res);

  sizes(_fn) => _res;
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

class Query$Product$product$sizes {
  Query$Product$product$sizes({
    this.id,
    this.sizeValue,
    this.sizeSystem,
    this.$__typename = 'SizeType',
  });

  factory Query$Product$product$sizes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sizeValue = json['sizeValue'];
    final l$sizeSystem = json['sizeSystem'];
    final l$$__typename = json['__typename'];
    return Query$Product$product$sizes(
      id: (l$id as int?),
      sizeValue: (l$sizeValue as String?),
      sizeSystem: (l$sizeSystem as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? sizeValue;

  final String? sizeSystem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$sizeSystem = sizeSystem;
    _resultData['sizeSystem'] = l$sizeSystem;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sizeValue = sizeValue;
    final l$sizeSystem = sizeSystem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sizeValue,
      l$sizeSystem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product$sizes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$sizeSystem = sizeSystem;
    final lOther$sizeSystem = other.sizeSystem;
    if (l$sizeSystem != lOther$sizeSystem) {
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

extension UtilityExtension$Query$Product$product$sizes
    on Query$Product$product$sizes {
  CopyWith$Query$Product$product$sizes<Query$Product$product$sizes>
      get copyWith => CopyWith$Query$Product$product$sizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Product$product$sizes<TRes> {
  factory CopyWith$Query$Product$product$sizes(
    Query$Product$product$sizes instance,
    TRes Function(Query$Product$product$sizes) then,
  ) = _CopyWithImpl$Query$Product$product$sizes;

  factory CopyWith$Query$Product$product$sizes.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product$sizes;

  TRes call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product$sizes<TRes>
    implements CopyWith$Query$Product$product$sizes<TRes> {
  _CopyWithImpl$Query$Product$product$sizes(
    this._instance,
    this._then,
  );

  final Query$Product$product$sizes _instance;

  final TRes Function(Query$Product$product$sizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sizeValue = _undefined,
    Object? sizeSystem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product$sizes(
        id: id == _undefined ? _instance.id : (id as int?),
        sizeValue: sizeValue == _undefined
            ? _instance.sizeValue
            : (sizeValue as String?),
        sizeSystem: sizeSystem == _undefined
            ? _instance.sizeSystem
            : (sizeSystem as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Product$product$sizes<TRes>
    implements CopyWith$Query$Product$product$sizes<TRes> {
  _CopyWithStubImpl$Query$Product$product$sizes(this._res);

  TRes _res;

  call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
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
            name: NameNode(value: 'sizes'),
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
                name: NameNode(value: 'sizeValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sizeSystem'),
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
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'postagePrice'),
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
    this.sizes,
    this.condition,
    required this.price,
    this.postagePrice,
    required this.views,
    required this.likes,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'ProductType',
  });

  factory Query$UserProducts$userProducts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$sizes = json['sizes'];
    final l$condition = json['condition'];
    final l$price = json['price'];
    final l$postagePrice = json['postagePrice'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
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
      sizes: (l$sizes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserProducts$userProducts$sizes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      price: (l$price as String),
      postagePrice: (l$postagePrice as String?),
      views: (l$views as int),
      likes: (l$likes as int),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$UserProducts$userProducts$category? category;

  final Query$UserProducts$userProducts$subCategory? subCategory;

  final List<Query$UserProducts$userProducts$sizes?>? sizes;

  final Enum$ProductsProductConditionChoices? condition;

  final String price;

  final String? postagePrice;

  final int views;

  final int likes;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

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
    final l$sizes = sizes;
    _resultData['sizes'] = l$sizes?.map((e) => e?.toJson()).toList();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$postagePrice = postagePrice;
    _resultData['postagePrice'] = l$postagePrice;
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
    final l$sizes = sizes;
    final l$condition = condition;
    final l$price = price;
    final l$postagePrice = postagePrice;
    final l$views = views;
    final l$likes = likes;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$sizes == null ? null : Object.hashAll(l$sizes.map((v) => v)),
      l$condition,
      l$price,
      l$postagePrice,
      l$views,
      l$likes,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
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
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (l$sizes != null && lOther$sizes != null) {
      if (l$sizes.length != lOther$sizes.length) {
        return false;
      }
      for (int i = 0; i < l$sizes.length; i++) {
        final l$sizes$entry = l$sizes[i];
        final lOther$sizes$entry = lOther$sizes[i];
        if (l$sizes$entry != lOther$sizes$entry) {
          return false;
        }
      }
    } else if (l$sizes != lOther$sizes) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$postagePrice = postagePrice;
    final lOther$postagePrice = other.postagePrice;
    if (l$postagePrice != lOther$postagePrice) {
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
    List<Query$UserProducts$userProducts$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    String? price,
    String? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$UserProducts$userProducts$category<TRes> get category;
  CopyWith$Query$UserProducts$userProducts$subCategory<TRes> get subCategory;
  TRes sizes(
      Iterable<Query$UserProducts$userProducts$sizes?>? Function(
              Iterable<
                  CopyWith$Query$UserProducts$userProducts$sizes<
                      Query$UserProducts$userProducts$sizes>?>?)
          _fn);
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
    Object? sizes = _undefined,
    Object? condition = _undefined,
    Object? price = _undefined,
    Object? postagePrice = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
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
        sizes: sizes == _undefined
            ? _instance.sizes
            : (sizes as List<Query$UserProducts$userProducts$sizes?>?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        postagePrice: postagePrice == _undefined
            ? _instance.postagePrice
            : (postagePrice as String?),
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

  TRes sizes(
          Iterable<Query$UserProducts$userProducts$sizes?>? Function(
                  Iterable<
                      CopyWith$Query$UserProducts$userProducts$sizes<
                          Query$UserProducts$userProducts$sizes>?>?)
              _fn) =>
      call(
          sizes: _fn(_instance.sizes?.map((e) => e == null
              ? null
              : CopyWith$Query$UserProducts$userProducts$sizes(
                  e,
                  (i) => i,
                )))?.toList());
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
    List<Query$UserProducts$userProducts$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    String? price,
    String? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserProducts$userProducts$category<TRes> get category =>
      CopyWith$Query$UserProducts$userProducts$category.stub(_res);

  CopyWith$Query$UserProducts$userProducts$subCategory<TRes> get subCategory =>
      CopyWith$Query$UserProducts$userProducts$subCategory.stub(_res);

  sizes(_fn) => _res;
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

class Query$UserProducts$userProducts$sizes {
  Query$UserProducts$userProducts$sizes({
    this.id,
    this.sizeValue,
    this.sizeSystem,
    this.$__typename = 'SizeType',
  });

  factory Query$UserProducts$userProducts$sizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sizeValue = json['sizeValue'];
    final l$sizeSystem = json['sizeSystem'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts$sizes(
      id: (l$id as int?),
      sizeValue: (l$sizeValue as String?),
      sizeSystem: (l$sizeSystem as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? sizeValue;

  final String? sizeSystem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$sizeSystem = sizeSystem;
    _resultData['sizeSystem'] = l$sizeSystem;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sizeValue = sizeValue;
    final l$sizeSystem = sizeSystem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sizeValue,
      l$sizeSystem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserProducts$userProducts$sizes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$sizeSystem = sizeSystem;
    final lOther$sizeSystem = other.sizeSystem;
    if (l$sizeSystem != lOther$sizeSystem) {
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

extension UtilityExtension$Query$UserProducts$userProducts$sizes
    on Query$UserProducts$userProducts$sizes {
  CopyWith$Query$UserProducts$userProducts$sizes<
          Query$UserProducts$userProducts$sizes>
      get copyWith => CopyWith$Query$UserProducts$userProducts$sizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts$sizes<TRes> {
  factory CopyWith$Query$UserProducts$userProducts$sizes(
    Query$UserProducts$userProducts$sizes instance,
    TRes Function(Query$UserProducts$userProducts$sizes) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts$sizes;

  factory CopyWith$Query$UserProducts$userProducts$sizes.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts$sizes;

  TRes call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserProducts$userProducts$sizes<TRes>
    implements CopyWith$Query$UserProducts$userProducts$sizes<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts$sizes(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts$sizes _instance;

  final TRes Function(Query$UserProducts$userProducts$sizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sizeValue = _undefined,
    Object? sizeSystem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts$sizes(
        id: id == _undefined ? _instance.id : (id as int?),
        sizeValue: sizeValue == _undefined
            ? _instance.sizeValue
            : (sizeValue as String?),
        sizeSystem: sizeSystem == _undefined
            ? _instance.sizeSystem
            : (sizeSystem as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserProducts$userProducts$sizes<TRes>
    implements CopyWith$Query$UserProducts$userProducts$sizes<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts$sizes(this._res);

  TRes _res;

  call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
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
            name: NameNode(value: 'sizes'),
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
                name: NameNode(value: 'sizeValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sizeSystem'),
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
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'postagePrice'),
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
    this.sizes,
    this.condition,
    required this.price,
    this.postagePrice,
    required this.views,
    required this.likes,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'ProductType',
  });

  factory Query$AllProducts$allProducts.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$subCategory = json['subCategory'];
    final l$sizes = json['sizes'];
    final l$condition = json['condition'];
    final l$price = json['price'];
    final l$postagePrice = json['postagePrice'];
    final l$views = json['views'];
    final l$likes = json['likes'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
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
      sizes: (l$sizes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllProducts$allProducts$sizes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      price: (l$price as String),
      postagePrice: (l$postagePrice as String?),
      views: (l$views as int),
      likes: (l$likes as int),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$AllProducts$allProducts$category? category;

  final Query$AllProducts$allProducts$subCategory? subCategory;

  final List<Query$AllProducts$allProducts$sizes?>? sizes;

  final Enum$ProductsProductConditionChoices? condition;

  final String price;

  final String? postagePrice;

  final int views;

  final int likes;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

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
    final l$sizes = sizes;
    _resultData['sizes'] = l$sizes?.map((e) => e?.toJson()).toList();
    final l$condition = condition;
    _resultData['condition'] = l$condition == null
        ? null
        : toJson$Enum$ProductsProductConditionChoices(l$condition);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$postagePrice = postagePrice;
    _resultData['postagePrice'] = l$postagePrice;
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
    final l$sizes = sizes;
    final l$condition = condition;
    final l$price = price;
    final l$postagePrice = postagePrice;
    final l$views = views;
    final l$likes = likes;
    final l$imagesUrl = imagesUrl;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$category,
      l$subCategory,
      l$sizes == null ? null : Object.hashAll(l$sizes.map((v) => v)),
      l$condition,
      l$price,
      l$postagePrice,
      l$views,
      l$likes,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$createdAt,
      l$updatedAt,
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
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (l$sizes != null && lOther$sizes != null) {
      if (l$sizes.length != lOther$sizes.length) {
        return false;
      }
      for (int i = 0; i < l$sizes.length; i++) {
        final l$sizes$entry = l$sizes[i];
        final lOther$sizes$entry = lOther$sizes[i];
        if (l$sizes$entry != lOther$sizes$entry) {
          return false;
        }
      }
    } else if (l$sizes != lOther$sizes) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$postagePrice = postagePrice;
    final lOther$postagePrice = other.postagePrice;
    if (l$postagePrice != lOther$postagePrice) {
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
    List<Query$AllProducts$allProducts$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    String? price,
    String? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Query$AllProducts$allProducts$category<TRes> get category;
  CopyWith$Query$AllProducts$allProducts$subCategory<TRes> get subCategory;
  TRes sizes(
      Iterable<Query$AllProducts$allProducts$sizes?>? Function(
              Iterable<
                  CopyWith$Query$AllProducts$allProducts$sizes<
                      Query$AllProducts$allProducts$sizes>?>?)
          _fn);
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
    Object? sizes = _undefined,
    Object? condition = _undefined,
    Object? price = _undefined,
    Object? postagePrice = _undefined,
    Object? views = _undefined,
    Object? likes = _undefined,
    Object? imagesUrl = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
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
        sizes: sizes == _undefined
            ? _instance.sizes
            : (sizes as List<Query$AllProducts$allProducts$sizes?>?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as String),
        postagePrice: postagePrice == _undefined
            ? _instance.postagePrice
            : (postagePrice as String?),
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

  TRes sizes(
          Iterable<Query$AllProducts$allProducts$sizes?>? Function(
                  Iterable<
                      CopyWith$Query$AllProducts$allProducts$sizes<
                          Query$AllProducts$allProducts$sizes>?>?)
              _fn) =>
      call(
          sizes: _fn(_instance.sizes?.map((e) => e == null
              ? null
              : CopyWith$Query$AllProducts$allProducts$sizes(
                  e,
                  (i) => i,
                )))?.toList());
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
    List<Query$AllProducts$allProducts$sizes?>? sizes,
    Enum$ProductsProductConditionChoices? condition,
    String? price,
    String? postagePrice,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllProducts$allProducts$category<TRes> get category =>
      CopyWith$Query$AllProducts$allProducts$category.stub(_res);

  CopyWith$Query$AllProducts$allProducts$subCategory<TRes> get subCategory =>
      CopyWith$Query$AllProducts$allProducts$subCategory.stub(_res);

  sizes(_fn) => _res;
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

class Query$AllProducts$allProducts$sizes {
  Query$AllProducts$allProducts$sizes({
    this.id,
    this.sizeValue,
    this.sizeSystem,
    this.$__typename = 'SizeType',
  });

  factory Query$AllProducts$allProducts$sizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sizeValue = json['sizeValue'];
    final l$sizeSystem = json['sizeSystem'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$sizes(
      id: (l$id as int?),
      sizeValue: (l$sizeValue as String?),
      sizeSystem: (l$sizeSystem as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? sizeValue;

  final String? sizeSystem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$sizeSystem = sizeSystem;
    _resultData['sizeSystem'] = l$sizeSystem;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sizeValue = sizeValue;
    final l$sizeSystem = sizeSystem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sizeValue,
      l$sizeSystem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$allProducts$sizes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$sizeSystem = sizeSystem;
    final lOther$sizeSystem = other.sizeSystem;
    if (l$sizeSystem != lOther$sizeSystem) {
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

extension UtilityExtension$Query$AllProducts$allProducts$sizes
    on Query$AllProducts$allProducts$sizes {
  CopyWith$Query$AllProducts$allProducts$sizes<
          Query$AllProducts$allProducts$sizes>
      get copyWith => CopyWith$Query$AllProducts$allProducts$sizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts$sizes<TRes> {
  factory CopyWith$Query$AllProducts$allProducts$sizes(
    Query$AllProducts$allProducts$sizes instance,
    TRes Function(Query$AllProducts$allProducts$sizes) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts$sizes;

  factory CopyWith$Query$AllProducts$allProducts$sizes.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts$sizes;

  TRes call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$allProducts$sizes<TRes>
    implements CopyWith$Query$AllProducts$allProducts$sizes<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts$sizes(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts$sizes _instance;

  final TRes Function(Query$AllProducts$allProducts$sizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sizeValue = _undefined,
    Object? sizeSystem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$sizes(
        id: id == _undefined ? _instance.id : (id as int?),
        sizeValue: sizeValue == _undefined
            ? _instance.sizeValue
            : (sizeValue as String?),
        sizeSystem: sizeSystem == _undefined
            ? _instance.sizeSystem
            : (sizeSystem as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllProducts$allProducts$sizes<TRes>
    implements CopyWith$Query$AllProducts$allProducts$sizes<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$sizes(this._res);

  TRes _res;

  call({
    int? id,
    String? sizeValue,
    String? sizeSystem,
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

class Query$Sizes {
  Query$Sizes({
    this.sizes,
    this.$__typename = 'Query',
  });

  factory Query$Sizes.fromJson(Map<String, dynamic> json) {
    final l$sizes = json['sizes'];
    final l$$__typename = json['__typename'];
    return Query$Sizes(
      sizes: (l$sizes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Sizes$sizes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Sizes$sizes?>? sizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sizes = sizes;
    _resultData['sizes'] = l$sizes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sizes = sizes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sizes == null ? null : Object.hashAll(l$sizes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Sizes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (l$sizes != null && lOther$sizes != null) {
      if (l$sizes.length != lOther$sizes.length) {
        return false;
      }
      for (int i = 0; i < l$sizes.length; i++) {
        final l$sizes$entry = l$sizes[i];
        final lOther$sizes$entry = lOther$sizes[i];
        if (l$sizes$entry != lOther$sizes$entry) {
          return false;
        }
      }
    } else if (l$sizes != lOther$sizes) {
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

extension UtilityExtension$Query$Sizes on Query$Sizes {
  CopyWith$Query$Sizes<Query$Sizes> get copyWith => CopyWith$Query$Sizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Sizes<TRes> {
  factory CopyWith$Query$Sizes(
    Query$Sizes instance,
    TRes Function(Query$Sizes) then,
  ) = _CopyWithImpl$Query$Sizes;

  factory CopyWith$Query$Sizes.stub(TRes res) = _CopyWithStubImpl$Query$Sizes;

  TRes call({
    List<Query$Sizes$sizes?>? sizes,
    String? $__typename,
  });
  TRes sizes(
      Iterable<Query$Sizes$sizes?>? Function(
              Iterable<CopyWith$Query$Sizes$sizes<Query$Sizes$sizes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Sizes<TRes> implements CopyWith$Query$Sizes<TRes> {
  _CopyWithImpl$Query$Sizes(
    this._instance,
    this._then,
  );

  final Query$Sizes _instance;

  final TRes Function(Query$Sizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sizes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Sizes(
        sizes: sizes == _undefined
            ? _instance.sizes
            : (sizes as List<Query$Sizes$sizes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes sizes(
          Iterable<Query$Sizes$sizes?>? Function(
                  Iterable<CopyWith$Query$Sizes$sizes<Query$Sizes$sizes>?>?)
              _fn) =>
      call(
          sizes: _fn(_instance.sizes?.map((e) => e == null
              ? null
              : CopyWith$Query$Sizes$sizes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Sizes<TRes>
    implements CopyWith$Query$Sizes<TRes> {
  _CopyWithStubImpl$Query$Sizes(this._res);

  TRes _res;

  call({
    List<Query$Sizes$sizes?>? sizes,
    String? $__typename,
  }) =>
      _res;

  sizes(_fn) => _res;
}

const documentNodeQuerySizes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Sizes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sizes'),
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
            name: NameNode(value: 'sizeValue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sizeSystem'),
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
]);
Query$Sizes _parserFn$Query$Sizes(Map<String, dynamic> data) =>
    Query$Sizes.fromJson(data);
typedef OnQueryComplete$Query$Sizes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Sizes?,
);

class Options$Query$Sizes extends graphql.QueryOptions<Query$Sizes> {
  Options$Query$Sizes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Sizes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Sizes? onComplete,
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
                    data == null ? null : _parserFn$Query$Sizes(data),
                  ),
          onError: onError,
          document: documentNodeQuerySizes,
          parserFn: _parserFn$Query$Sizes,
        );

  final OnQueryComplete$Query$Sizes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Sizes extends graphql.WatchQueryOptions<Query$Sizes> {
  WatchOptions$Query$Sizes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Sizes? typedOptimisticResult,
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
          document: documentNodeQuerySizes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Sizes,
        );
}

class FetchMoreOptions$Query$Sizes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Sizes({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySizes,
        );
}

extension ClientExtension$Query$Sizes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Sizes>> query$Sizes(
          [Options$Query$Sizes? options]) async =>
      await this.query(options ?? Options$Query$Sizes());
  graphql.ObservableQuery<Query$Sizes> watchQuery$Sizes(
          [WatchOptions$Query$Sizes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Sizes());
  void writeQuery$Sizes({
    required Query$Sizes data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerySizes)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Sizes? readQuery$Sizes({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySizes)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Sizes.fromJson(result);
  }
}

class Query$Sizes$sizes {
  Query$Sizes$sizes({
    required this.id,
    required this.sizeValue,
    required this.sizeSystem,
    this.$__typename = 'SizesType',
  });

  factory Query$Sizes$sizes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sizeValue = json['sizeValue'];
    final l$sizeSystem = json['sizeSystem'];
    final l$$__typename = json['__typename'];
    return Query$Sizes$sizes(
      id: (l$id as String),
      sizeValue: (l$sizeValue as String),
      sizeSystem:
          fromJson$Enum$ProductsSizeSizeSystemChoices((l$sizeSystem as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String sizeValue;

  final Enum$ProductsSizeSizeSystemChoices sizeSystem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$sizeSystem = sizeSystem;
    _resultData['sizeSystem'] =
        toJson$Enum$ProductsSizeSizeSystemChoices(l$sizeSystem);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sizeValue = sizeValue;
    final l$sizeSystem = sizeSystem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sizeValue,
      l$sizeSystem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Sizes$sizes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$sizeSystem = sizeSystem;
    final lOther$sizeSystem = other.sizeSystem;
    if (l$sizeSystem != lOther$sizeSystem) {
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

extension UtilityExtension$Query$Sizes$sizes on Query$Sizes$sizes {
  CopyWith$Query$Sizes$sizes<Query$Sizes$sizes> get copyWith =>
      CopyWith$Query$Sizes$sizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Sizes$sizes<TRes> {
  factory CopyWith$Query$Sizes$sizes(
    Query$Sizes$sizes instance,
    TRes Function(Query$Sizes$sizes) then,
  ) = _CopyWithImpl$Query$Sizes$sizes;

  factory CopyWith$Query$Sizes$sizes.stub(TRes res) =
      _CopyWithStubImpl$Query$Sizes$sizes;

  TRes call({
    String? id,
    String? sizeValue,
    Enum$ProductsSizeSizeSystemChoices? sizeSystem,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Sizes$sizes<TRes>
    implements CopyWith$Query$Sizes$sizes<TRes> {
  _CopyWithImpl$Query$Sizes$sizes(
    this._instance,
    this._then,
  );

  final Query$Sizes$sizes _instance;

  final TRes Function(Query$Sizes$sizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sizeValue = _undefined,
    Object? sizeSystem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Sizes$sizes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sizeValue: sizeValue == _undefined || sizeValue == null
            ? _instance.sizeValue
            : (sizeValue as String),
        sizeSystem: sizeSystem == _undefined || sizeSystem == null
            ? _instance.sizeSystem
            : (sizeSystem as Enum$ProductsSizeSizeSystemChoices),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Sizes$sizes<TRes>
    implements CopyWith$Query$Sizes$sizes<TRes> {
  _CopyWithStubImpl$Query$Sizes$sizes(this._res);

  TRes _res;

  call({
    String? id,
    String? sizeValue,
    Enum$ProductsSizeSizeSystemChoices? sizeSystem,
    String? $__typename,
  }) =>
      _res;
}