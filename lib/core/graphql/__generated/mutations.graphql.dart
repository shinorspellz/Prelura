// ignore_for_file: type=lint
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:prelura_app/model/product/product_model.dart'
    as EnumImport$ConditionEnum;
import 'schema.graphql.dart';

class Variables$Mutation$Login {
  factory Variables$Mutation$Login({
    required String password,
    String? username,
  }) =>
      Variables$Mutation$Login._({
        r'password': password,
        if (username != null) r'username': username,
      });

  Variables$Mutation$Login._(this._$data);

  factory Variables$Mutation$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Variables$Mutation$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);

  String? get username => (_$data['username'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$Login<Variables$Mutation$Login> get copyWith =>
      CopyWith$Variables$Mutation$Login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Login ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$password,
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Login<TRes> {
  factory CopyWith$Variables$Mutation$Login(
    Variables$Mutation$Login instance,
    TRes Function(Variables$Mutation$Login) then,
  ) = _CopyWithImpl$Variables$Mutation$Login;

  factory CopyWith$Variables$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Login;

  TRes call({
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithImpl$Variables$Mutation$Login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Login _instance;

  final TRes Function(Variables$Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$Login._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Login(this._res);

  TRes _res;

  call({
    String? password,
    String? username,
  }) =>
      _res;
}

class Mutation$Login {
  Mutation$Login({
    this.login,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$Login(
      login: l$login == null
          ? null
          : Mutation$Login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Login$login? login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Mutation$Login on Mutation$Login {
  CopyWith$Mutation$Login<Mutation$Login> get copyWith =>
      CopyWith$Mutation$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login<TRes> {
  factory CopyWith$Mutation$Login(
    Mutation$Login instance,
    TRes Function(Mutation$Login) then,
  ) = _CopyWithImpl$Mutation$Login;

  factory CopyWith$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login;

  TRes call({
    Mutation$Login$login? login,
    String? $__typename,
  });
  CopyWith$Mutation$Login$login<TRes> get login;
}

class _CopyWithImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithImpl$Mutation$Login(
    this._instance,
    this._then,
  );

  final Mutation$Login _instance;

  final TRes Function(Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login(
        login: login == _undefined
            ? _instance.login
            : (login as Mutation$Login$login?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$login<TRes> get login {
    final local$login = _instance.login;
    return local$login == null
        ? CopyWith$Mutation$Login$login.stub(_then(_instance))
        : CopyWith$Mutation$Login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithStubImpl$Mutation$Login(this._res);

  TRes _res;

  call({
    Mutation$Login$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$login<TRes> get login =>
      CopyWith$Mutation$Login$login.stub(_res);
}

const documentNodeMutationLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'restToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
Mutation$Login _parserFn$Mutation$Login(Map<String, dynamic> data) =>
    Mutation$Login.fromJson(data);
typedef OnMutationCompleted$Mutation$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Login?,
);

class Options$Mutation$Login extends graphql.MutationOptions<Mutation$Login> {
  Options$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Login
    extends graphql.WatchQueryOptions<Mutation$Login> {
  WatchOptions$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
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
          document: documentNodeMutationLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Login,
        );
}

extension ClientExtension$Mutation$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Login>> mutate$Login(
          Options$Mutation$Login options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Login> watchMutation$Login(
          WatchOptions$Mutation$Login options) =>
      this.watchMutation(options);
}

class Mutation$Login$login {
  Mutation$Login$login({
    this.restToken,
    this.token,
    this.user,
    this.$__typename = 'LoginMutation',
  });

  factory Mutation$Login$login.fromJson(Map<String, dynamic> json) {
    final l$restToken = json['restToken'];
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$login(
      restToken: (l$restToken as String?),
      token: (l$token as String?),
      user: l$user == null
          ? null
          : Mutation$Login$login$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? restToken;

  final String? token;

  final Mutation$Login$login$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restToken = restToken;
    _resultData['restToken'] = l$restToken;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restToken = restToken;
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$restToken,
      l$token,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Login$login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$restToken = restToken;
    final lOther$restToken = other.restToken;
    if (l$restToken != lOther$restToken) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$Login$login on Mutation$Login$login {
  CopyWith$Mutation$Login$login<Mutation$Login$login> get copyWith =>
      CopyWith$Mutation$Login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$login<TRes> {
  factory CopyWith$Mutation$Login$login(
    Mutation$Login$login instance,
    TRes Function(Mutation$Login$login) then,
  ) = _CopyWithImpl$Mutation$Login$login;

  factory CopyWith$Mutation$Login$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$login;

  TRes call({
    String? restToken,
    String? token,
    Mutation$Login$login$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$Login$login$user<TRes> get user;
}

class _CopyWithImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithImpl$Mutation$Login$login(
    this._instance,
    this._then,
  );

  final Mutation$Login$login _instance;

  final TRes Function(Mutation$Login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? restToken = _undefined,
    Object? token = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$login(
        restToken: restToken == _undefined
            ? _instance.restToken
            : (restToken as String?),
        token: token == _undefined ? _instance.token : (token as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Mutation$Login$login$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$login$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$Login$login$user.stub(_then(_instance))
        : CopyWith$Mutation$Login$login$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithStubImpl$Mutation$Login$login(this._res);

  TRes _res;

  call({
    String? restToken,
    String? token,
    Mutation$Login$login$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$login$user<TRes> get user =>
      CopyWith$Mutation$Login$login$user.stub(_res);
}

class Mutation$Login$login$user {
  Mutation$Login$login$user({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Mutation$Login$login$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$login$user(
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
    if (other is! Mutation$Login$login$user ||
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

extension UtilityExtension$Mutation$Login$login$user
    on Mutation$Login$login$user {
  CopyWith$Mutation$Login$login$user<Mutation$Login$login$user> get copyWith =>
      CopyWith$Mutation$Login$login$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$login$user<TRes> {
  factory CopyWith$Mutation$Login$login$user(
    Mutation$Login$login$user instance,
    TRes Function(Mutation$Login$login$user) then,
  ) = _CopyWithImpl$Mutation$Login$login$user;

  factory CopyWith$Mutation$Login$login$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$login$user;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Login$login$user<TRes>
    implements CopyWith$Mutation$Login$login$user<TRes> {
  _CopyWithImpl$Mutation$Login$login$user(
    this._instance,
    this._then,
  );

  final Mutation$Login$login$user _instance;

  final TRes Function(Mutation$Login$login$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$login$user(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Login$login$user<TRes>
    implements CopyWith$Mutation$Login$login$user<TRes> {
  _CopyWithStubImpl$Mutation$Login$login$user(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Register {
  factory Variables$Mutation$Register({
    String? displayName,
    DateTime? dob,
    required String email,
    required String firstName,
    required String lastName,
    required String password1,
    required String password2,
    required String username,
  }) =>
      Variables$Mutation$Register._({
        if (displayName != null) r'displayName': displayName,
        if (dob != null) r'dob': dob,
        r'email': email,
        r'firstName': firstName,
        r'lastName': lastName,
        r'password1': password1,
        r'password2': password2,
        r'username': username,
      });

  Variables$Mutation$Register._(this._$data);

  factory Variables$Mutation$Register.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('displayName')) {
      final l$displayName = data['displayName'];
      result$data['displayName'] = (l$displayName as String?);
    }
    if (data.containsKey('dob')) {
      final l$dob = data['dob'];
      result$data['dob'] =
          l$dob == null ? null : DateTime.parse((l$dob as String));
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$password1 = data['password1'];
    result$data['password1'] = (l$password1 as String);
    final l$password2 = data['password2'];
    result$data['password2'] = (l$password2 as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Mutation$Register._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get displayName => (_$data['displayName'] as String?);

  DateTime? get dob => (_$data['dob'] as DateTime?);

  String get email => (_$data['email'] as String);

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String get password1 => (_$data['password1'] as String);

  String get password2 => (_$data['password2'] as String);

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('displayName')) {
      final l$displayName = displayName;
      result$data['displayName'] = l$displayName;
    }
    if (_$data.containsKey('dob')) {
      final l$dob = dob;
      result$data['dob'] = l$dob?.toIso8601String();
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$password1 = password1;
    result$data['password1'] = l$password1;
    final l$password2 = password2;
    result$data['password2'] = l$password2;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Mutation$Register<Variables$Mutation$Register>
      get copyWith => CopyWith$Variables$Mutation$Register(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Register ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (_$data.containsKey('displayName') !=
        other._$data.containsKey('displayName')) {
      return false;
    }
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (_$data.containsKey('dob') != other._$data.containsKey('dob')) {
      return false;
    }
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$password1 = password1;
    final lOther$password1 = other.password1;
    if (l$password1 != lOther$password1) {
      return false;
    }
    final l$password2 = password2;
    final lOther$password2 = other.password2;
    if (l$password2 != lOther$password2) {
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
    final l$displayName = displayName;
    final l$dob = dob;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$password1 = password1;
    final l$password2 = password2;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('displayName') ? l$displayName : const {},
      _$data.containsKey('dob') ? l$dob : const {},
      l$email,
      l$firstName,
      l$lastName,
      l$password1,
      l$password2,
      l$username,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Register<TRes> {
  factory CopyWith$Variables$Mutation$Register(
    Variables$Mutation$Register instance,
    TRes Function(Variables$Mutation$Register) then,
  ) = _CopyWithImpl$Variables$Mutation$Register;

  factory CopyWith$Variables$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Register;

  TRes call({
    String? displayName,
    DateTime? dob,
    String? email,
    String? firstName,
    String? lastName,
    String? password1,
    String? password2,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithImpl$Variables$Mutation$Register(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Register _instance;

  final TRes Function(Variables$Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayName = _undefined,
    Object? dob = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? password1 = _undefined,
    Object? password2 = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$Register._({
        ..._instance._$data,
        if (displayName != _undefined) 'displayName': (displayName as String?),
        if (dob != _undefined) 'dob': (dob as DateTime?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (password1 != _undefined && password1 != null)
          'password1': (password1 as String),
        if (password2 != _undefined && password2 != null)
          'password2': (password2 as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Register(this._res);

  TRes _res;

  call({
    String? displayName,
    DateTime? dob,
    String? email,
    String? firstName,
    String? lastName,
    String? password1,
    String? password2,
    String? username,
  }) =>
      _res;
}

class Mutation$Register {
  Mutation$Register({
    this.register,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Register.fromJson(Map<String, dynamic> json) {
    final l$register = json['register'];
    final l$$__typename = json['__typename'];
    return Mutation$Register(
      register: l$register == null
          ? null
          : Mutation$Register$register.fromJson(
              (l$register as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Register$register? register;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$register = register;
    _resultData['register'] = l$register?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$register = register;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$register,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Register || runtimeType != other.runtimeType) {
      return false;
    }
    final l$register = register;
    final lOther$register = other.register;
    if (l$register != lOther$register) {
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

extension UtilityExtension$Mutation$Register on Mutation$Register {
  CopyWith$Mutation$Register<Mutation$Register> get copyWith =>
      CopyWith$Mutation$Register(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Register<TRes> {
  factory CopyWith$Mutation$Register(
    Mutation$Register instance,
    TRes Function(Mutation$Register) then,
  ) = _CopyWithImpl$Mutation$Register;

  factory CopyWith$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register;

  TRes call({
    Mutation$Register$register? register,
    String? $__typename,
  });
  CopyWith$Mutation$Register$register<TRes> get register;
}

class _CopyWithImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithImpl$Mutation$Register(
    this._instance,
    this._then,
  );

  final Mutation$Register _instance;

  final TRes Function(Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? register = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register(
        register: register == _undefined
            ? _instance.register
            : (register as Mutation$Register$register?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Register$register<TRes> get register {
    final local$register = _instance.register;
    return local$register == null
        ? CopyWith$Mutation$Register$register.stub(_then(_instance))
        : CopyWith$Mutation$Register$register(
            local$register, (e) => call(register: e));
  }
}

class _CopyWithStubImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithStubImpl$Mutation$Register(this._res);

  TRes _res;

  call({
    Mutation$Register$register? register,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Register$register<TRes> get register =>
      CopyWith$Mutation$Register$register.stub(_res);
}

const documentNodeMutationRegister = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Register'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'displayName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dob')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password1')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password2')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'register'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'displayName'),
            value: VariableNode(name: NameNode(value: 'displayName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'dob'),
            value: VariableNode(name: NameNode(value: 'dob')),
          ),
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'firstName'),
            value: VariableNode(name: NameNode(value: 'firstName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'lastName'),
            value: VariableNode(name: NameNode(value: 'lastName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password1'),
            value: VariableNode(name: NameNode(value: 'password1')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password2'),
            value: VariableNode(name: NameNode(value: 'password2')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
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
Mutation$Register _parserFn$Mutation$Register(Map<String, dynamic> data) =>
    Mutation$Register.fromJson(data);
typedef OnMutationCompleted$Mutation$Register = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Register?,
);

class Options$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  Options$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Register? onCompleted,
    graphql.OnMutationUpdate<Mutation$Register>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Register(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegister,
          parserFn: _parserFn$Mutation$Register,
        );

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Register
    extends graphql.WatchQueryOptions<Mutation$Register> {
  WatchOptions$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
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
          document: documentNodeMutationRegister,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Register,
        );
}

extension ClientExtension$Mutation$Register on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Register>> mutate$Register(
          Options$Mutation$Register options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Register> watchMutation$Register(
          WatchOptions$Mutation$Register options) =>
      this.watchMutation(options);
}

class Mutation$Register$register {
  Mutation$Register$register({
    this.success,
    this.errors,
    this.$__typename = 'NewRegister',
  });

  factory Mutation$Register$register.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$Register$register(
      success: (l$success as bool?),
      errors: (l$errors as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final Map<String, dynamic>? errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$errors = errors;
    _resultData['errors'] = l$errors;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$errors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Register$register ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors != lOther$errors) {
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

extension UtilityExtension$Mutation$Register$register
    on Mutation$Register$register {
  CopyWith$Mutation$Register$register<Mutation$Register$register>
      get copyWith => CopyWith$Mutation$Register$register(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Register$register<TRes> {
  factory CopyWith$Mutation$Register$register(
    Mutation$Register$register instance,
    TRes Function(Mutation$Register$register) then,
  ) = _CopyWithImpl$Mutation$Register$register;

  factory CopyWith$Mutation$Register$register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register$register;

  TRes call({
    bool? success,
    Map<String, dynamic>? errors,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Register$register<TRes>
    implements CopyWith$Mutation$Register$register<TRes> {
  _CopyWithImpl$Mutation$Register$register(
    this._instance,
    this._then,
  );

  final Mutation$Register$register _instance;

  final TRes Function(Mutation$Register$register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register$register(
        success: success == _undefined ? _instance.success : (success as bool?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Register$register<TRes>
    implements CopyWith$Mutation$Register$register<TRes> {
  _CopyWithStubImpl$Mutation$Register$register(this._res);

  TRes _res;

  call({
    bool? success,
    Map<String, dynamic>? errors,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$Logout {
  Mutation$Logout({
    this.logout,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Logout.fromJson(Map<String, dynamic> json) {
    final l$logout = json['logout'];
    final l$$__typename = json['__typename'];
    return Mutation$Logout(
      logout: l$logout == null
          ? null
          : Mutation$Logout$logout.fromJson((l$logout as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Logout$logout? logout;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logout = logout;
    _resultData['logout'] = l$logout?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logout = logout;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logout,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Logout || runtimeType != other.runtimeType) {
      return false;
    }
    final l$logout = logout;
    final lOther$logout = other.logout;
    if (l$logout != lOther$logout) {
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

extension UtilityExtension$Mutation$Logout on Mutation$Logout {
  CopyWith$Mutation$Logout<Mutation$Logout> get copyWith =>
      CopyWith$Mutation$Logout(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Logout<TRes> {
  factory CopyWith$Mutation$Logout(
    Mutation$Logout instance,
    TRes Function(Mutation$Logout) then,
  ) = _CopyWithImpl$Mutation$Logout;

  factory CopyWith$Mutation$Logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout;

  TRes call({
    Mutation$Logout$logout? logout,
    String? $__typename,
  });
  CopyWith$Mutation$Logout$logout<TRes> get logout;
}

class _CopyWithImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithImpl$Mutation$Logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout _instance;

  final TRes Function(Mutation$Logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logout = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Logout(
        logout: logout == _undefined
            ? _instance.logout
            : (logout as Mutation$Logout$logout?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Logout$logout<TRes> get logout {
    final local$logout = _instance.logout;
    return local$logout == null
        ? CopyWith$Mutation$Logout$logout.stub(_then(_instance))
        : CopyWith$Mutation$Logout$logout(local$logout, (e) => call(logout: e));
  }
}

class _CopyWithStubImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout(this._res);

  TRes _res;

  call({
    Mutation$Logout$logout? logout,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Logout$logout<TRes> get logout =>
      CopyWith$Mutation$Logout$logout.stub(_res);
}

const documentNodeMutationLogout = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Logout'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'logout'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$Logout _parserFn$Mutation$Logout(Map<String, dynamic> data) =>
    Mutation$Logout.fromJson(data);
typedef OnMutationCompleted$Mutation$Logout = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Logout?,
);

class Options$Mutation$Logout extends graphql.MutationOptions<Mutation$Logout> {
  Options$Mutation$Logout({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Logout? onCompleted,
    graphql.OnMutationUpdate<Mutation$Logout>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Logout(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogout,
          parserFn: _parserFn$Mutation$Logout,
        );

  final OnMutationCompleted$Mutation$Logout? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Logout
    extends graphql.WatchQueryOptions<Mutation$Logout> {
  WatchOptions$Mutation$Logout({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
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
          document: documentNodeMutationLogout,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Logout,
        );
}

extension ClientExtension$Mutation$Logout on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Logout>> mutate$Logout(
          [Options$Mutation$Logout? options]) async =>
      await this.mutate(options ?? Options$Mutation$Logout());
  graphql.ObservableQuery<Mutation$Logout> watchMutation$Logout(
          [WatchOptions$Mutation$Logout? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$Logout());
}

class Mutation$Logout$logout {
  Mutation$Logout$logout({
    this.message,
    this.$__typename = 'LogoutMutation',
  });

  factory Mutation$Logout$logout.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$Logout$logout(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Logout$logout || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$Logout$logout on Mutation$Logout$logout {
  CopyWith$Mutation$Logout$logout<Mutation$Logout$logout> get copyWith =>
      CopyWith$Mutation$Logout$logout(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Logout$logout<TRes> {
  factory CopyWith$Mutation$Logout$logout(
    Mutation$Logout$logout instance,
    TRes Function(Mutation$Logout$logout) then,
  ) = _CopyWithImpl$Mutation$Logout$logout;

  factory CopyWith$Mutation$Logout$logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout$logout;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Logout$logout<TRes>
    implements CopyWith$Mutation$Logout$logout<TRes> {
  _CopyWithImpl$Mutation$Logout$logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout$logout _instance;

  final TRes Function(Mutation$Logout$logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Logout$logout(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Logout$logout<TRes>
    implements CopyWith$Mutation$Logout$logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout$logout(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$TokenAuth {
  factory Variables$Mutation$TokenAuth({
    String? email,
    required String password,
    required String username,
  }) =>
      Variables$Mutation$TokenAuth._({
        if (email != null) r'email': email,
        r'password': password,
        r'username': username,
      });

  Variables$Mutation$TokenAuth._(this._$data);

  factory Variables$Mutation$TokenAuth.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Mutation$TokenAuth._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String get password => (_$data['password'] as String);

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$password = password;
    result$data['password'] = l$password;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Mutation$TokenAuth<Variables$Mutation$TokenAuth>
      get copyWith => CopyWith$Variables$Mutation$TokenAuth(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TokenAuth ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
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
    final l$email = email;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      l$password,
      l$username,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$TokenAuth<TRes> {
  factory CopyWith$Variables$Mutation$TokenAuth(
    Variables$Mutation$TokenAuth instance,
    TRes Function(Variables$Mutation$TokenAuth) then,
  ) = _CopyWithImpl$Variables$Mutation$TokenAuth;

  factory CopyWith$Variables$Mutation$TokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TokenAuth;

  TRes call({
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$TokenAuth<TRes>
    implements CopyWith$Variables$Mutation$TokenAuth<TRes> {
  _CopyWithImpl$Variables$Mutation$TokenAuth(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TokenAuth _instance;

  final TRes Function(Variables$Mutation$TokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$TokenAuth._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TokenAuth<TRes>
    implements CopyWith$Variables$Mutation$TokenAuth<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TokenAuth(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Mutation$TokenAuth {
  Mutation$TokenAuth({
    this.tokenAuth,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TokenAuth.fromJson(Map<String, dynamic> json) {
    final l$tokenAuth = json['tokenAuth'];
    final l$$__typename = json['__typename'];
    return Mutation$TokenAuth(
      tokenAuth: l$tokenAuth == null
          ? null
          : Mutation$TokenAuth$tokenAuth.fromJson(
              (l$tokenAuth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TokenAuth$tokenAuth? tokenAuth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tokenAuth = tokenAuth;
    _resultData['tokenAuth'] = l$tokenAuth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tokenAuth = tokenAuth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tokenAuth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TokenAuth || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tokenAuth = tokenAuth;
    final lOther$tokenAuth = other.tokenAuth;
    if (l$tokenAuth != lOther$tokenAuth) {
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

extension UtilityExtension$Mutation$TokenAuth on Mutation$TokenAuth {
  CopyWith$Mutation$TokenAuth<Mutation$TokenAuth> get copyWith =>
      CopyWith$Mutation$TokenAuth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TokenAuth<TRes> {
  factory CopyWith$Mutation$TokenAuth(
    Mutation$TokenAuth instance,
    TRes Function(Mutation$TokenAuth) then,
  ) = _CopyWithImpl$Mutation$TokenAuth;

  factory CopyWith$Mutation$TokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TokenAuth;

  TRes call({
    Mutation$TokenAuth$tokenAuth? tokenAuth,
    String? $__typename,
  });
  CopyWith$Mutation$TokenAuth$tokenAuth<TRes> get tokenAuth;
}

class _CopyWithImpl$Mutation$TokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth<TRes> {
  _CopyWithImpl$Mutation$TokenAuth(
    this._instance,
    this._then,
  );

  final Mutation$TokenAuth _instance;

  final TRes Function(Mutation$TokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tokenAuth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TokenAuth(
        tokenAuth: tokenAuth == _undefined
            ? _instance.tokenAuth
            : (tokenAuth as Mutation$TokenAuth$tokenAuth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$TokenAuth$tokenAuth<TRes> get tokenAuth {
    final local$tokenAuth = _instance.tokenAuth;
    return local$tokenAuth == null
        ? CopyWith$Mutation$TokenAuth$tokenAuth.stub(_then(_instance))
        : CopyWith$Mutation$TokenAuth$tokenAuth(
            local$tokenAuth, (e) => call(tokenAuth: e));
  }
}

class _CopyWithStubImpl$Mutation$TokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth<TRes> {
  _CopyWithStubImpl$Mutation$TokenAuth(this._res);

  TRes _res;

  call({
    Mutation$TokenAuth$tokenAuth? tokenAuth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$TokenAuth$tokenAuth<TRes> get tokenAuth =>
      CopyWith$Mutation$TokenAuth$tokenAuth.stub(_res);
}

const documentNodeMutationTokenAuth = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TokenAuth'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tokenAuth'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'payload'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshExpiresIn'),
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
Mutation$TokenAuth _parserFn$Mutation$TokenAuth(Map<String, dynamic> data) =>
    Mutation$TokenAuth.fromJson(data);
typedef OnMutationCompleted$Mutation$TokenAuth = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$TokenAuth?,
);

class Options$Mutation$TokenAuth
    extends graphql.MutationOptions<Mutation$TokenAuth> {
  Options$Mutation$TokenAuth({
    String? operationName,
    required Variables$Mutation$TokenAuth variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TokenAuth? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TokenAuth? onCompleted,
    graphql.OnMutationUpdate<Mutation$TokenAuth>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$TokenAuth(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTokenAuth,
          parserFn: _parserFn$Mutation$TokenAuth,
        );

  final OnMutationCompleted$Mutation$TokenAuth? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TokenAuth
    extends graphql.WatchQueryOptions<Mutation$TokenAuth> {
  WatchOptions$Mutation$TokenAuth({
    String? operationName,
    required Variables$Mutation$TokenAuth variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TokenAuth? typedOptimisticResult,
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
          document: documentNodeMutationTokenAuth,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TokenAuth,
        );
}

extension ClientExtension$Mutation$TokenAuth on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TokenAuth>> mutate$TokenAuth(
          Options$Mutation$TokenAuth options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TokenAuth> watchMutation$TokenAuth(
          WatchOptions$Mutation$TokenAuth options) =>
      this.watchMutation(options);
}

class Mutation$TokenAuth$tokenAuth {
  Mutation$TokenAuth$tokenAuth({
    required this.token,
    this.payload,
    this.refreshExpiresIn,
    this.$__typename = 'NewObtainJSONWebToken',
  });

  factory Mutation$TokenAuth$tokenAuth.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$payload = json['payload'];
    final l$refreshExpiresIn = json['refreshExpiresIn'];
    final l$$__typename = json['__typename'];
    return Mutation$TokenAuth$tokenAuth(
      token: (l$token as String),
      payload: (l$payload as dynamic),
      refreshExpiresIn: (l$refreshExpiresIn as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final dynamic payload;

  final int? refreshExpiresIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$payload = payload;
    _resultData['payload'] = l$payload;
    final l$refreshExpiresIn = refreshExpiresIn;
    _resultData['refreshExpiresIn'] = l$refreshExpiresIn;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$payload = payload;
    final l$refreshExpiresIn = refreshExpiresIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$payload,
      l$refreshExpiresIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TokenAuth$tokenAuth ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$payload = payload;
    final lOther$payload = other.payload;
    if (l$payload != lOther$payload) {
      return false;
    }
    final l$refreshExpiresIn = refreshExpiresIn;
    final lOther$refreshExpiresIn = other.refreshExpiresIn;
    if (l$refreshExpiresIn != lOther$refreshExpiresIn) {
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

extension UtilityExtension$Mutation$TokenAuth$tokenAuth
    on Mutation$TokenAuth$tokenAuth {
  CopyWith$Mutation$TokenAuth$tokenAuth<Mutation$TokenAuth$tokenAuth>
      get copyWith => CopyWith$Mutation$TokenAuth$tokenAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TokenAuth$tokenAuth<TRes> {
  factory CopyWith$Mutation$TokenAuth$tokenAuth(
    Mutation$TokenAuth$tokenAuth instance,
    TRes Function(Mutation$TokenAuth$tokenAuth) then,
  ) = _CopyWithImpl$Mutation$TokenAuth$tokenAuth;

  factory CopyWith$Mutation$TokenAuth$tokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TokenAuth$tokenAuth;

  TRes call({
    String? token,
    dynamic payload,
    int? refreshExpiresIn,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TokenAuth$tokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth$tokenAuth<TRes> {
  _CopyWithImpl$Mutation$TokenAuth$tokenAuth(
    this._instance,
    this._then,
  );

  final Mutation$TokenAuth$tokenAuth _instance;

  final TRes Function(Mutation$TokenAuth$tokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? payload = _undefined,
    Object? refreshExpiresIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TokenAuth$tokenAuth(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        payload:
            payload == _undefined ? _instance.payload : (payload as dynamic),
        refreshExpiresIn: refreshExpiresIn == _undefined
            ? _instance.refreshExpiresIn
            : (refreshExpiresIn as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$TokenAuth$tokenAuth<TRes>
    implements CopyWith$Mutation$TokenAuth$tokenAuth<TRes> {
  _CopyWithStubImpl$Mutation$TokenAuth$tokenAuth(this._res);

  TRes _res;

  call({
    String? token,
    dynamic payload,
    int? refreshExpiresIn,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateProduct {
  factory Variables$Mutation$CreateProduct({
    required int category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    required String description,
    required List<Input$ImagesInputType?> imageUrl,
    required double price,
    int? size,
    required String name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool? isFeatured,
  }) =>
      Variables$Mutation$CreateProduct._({
        r'category': category,
        if (condition != null) r'condition': condition,
        r'description': description,
        r'imageUrl': imageUrl,
        r'price': price,
        if (size != null) r'size': size,
        r'name': name,
        if (parcelSize != null) r'parcelSize': parcelSize,
        if (discount != null) r'discount': discount,
        if (color != null) r'color': color,
        if (brand != null) r'brand': brand,
        if (materials != null) r'materials': materials,
        if (style != null) r'style': style,
        if (customBrand != null) r'customBrand': customBrand,
        if (isFeatured != null) r'isFeatured': isFeatured,
      });

  Variables$Mutation$CreateProduct._(this._$data);

  factory Variables$Mutation$CreateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$category = data['category'];
    result$data['category'] = (l$category as int);
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionByApiValue(
              (l$condition as String));
    }
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$imageUrl = data['imageUrl'];
    result$data['imageUrl'] = (l$imageUrl as List<dynamic>)
        .map((e) => e == null
            ? null
            : Input$ImagesInputType.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('parcelSize')) {
      final l$parcelSize = data['parcelSize'];
      result$data['parcelSize'] = l$parcelSize == null
          ? null
          : fromJson$Enum$ParcelSizeEnum((l$parcelSize as String));
    }
    if (data.containsKey('discount')) {
      final l$discount = data['discount'];
      result$data['discount'] = (l$discount as num?)?.toDouble();
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          (l$color as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as int?);
    }
    if (data.containsKey('materials')) {
      final l$materials = data['materials'];
      result$data['materials'] =
          (l$materials as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('style')) {
      final l$style = data['style'];
      result$data['style'] =
          l$style == null ? null : fromJson$Enum$StyleEnum((l$style as String));
    }
    if (data.containsKey('customBrand')) {
      final l$customBrand = data['customBrand'];
      result$data['customBrand'] = (l$customBrand as String?);
    }
    if (data.containsKey('isFeatured')) {
      final l$isFeatured = data['isFeatured'];
      result$data['isFeatured'] = (l$isFeatured as bool?);
    }
    return Variables$Mutation$CreateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int get category => (_$data['category'] as int);

  EnumImport$ConditionEnum.ConditionsEnum? get condition =>
      (_$data['condition'] as EnumImport$ConditionEnum.ConditionsEnum?);

  String get description => (_$data['description'] as String);

  List<Input$ImagesInputType?> get imageUrl =>
      (_$data['imageUrl'] as List<Input$ImagesInputType?>);

  double get price => (_$data['price'] as double);

  int? get size => (_$data['size'] as int?);

  String get name => (_$data['name'] as String);

  Enum$ParcelSizeEnum? get parcelSize =>
      (_$data['parcelSize'] as Enum$ParcelSizeEnum?);

  double? get discount => (_$data['discount'] as double?);

  List<String?>? get color => (_$data['color'] as List<String?>?);

  int? get brand => (_$data['brand'] as int?);

  List<int?>? get materials => (_$data['materials'] as List<int?>?);

  Enum$StyleEnum? get style => (_$data['style'] as Enum$StyleEnum?);

  String? get customBrand => (_$data['customBrand'] as String?);

  bool? get isFeatured => (_$data['isFeatured'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$category = category;
    result$data['category'] = l$category;
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionToApiValue(
              l$condition);
    }
    final l$description = description;
    result$data['description'] = l$description;
    final l$imageUrl = imageUrl;
    result$data['imageUrl'] = l$imageUrl.map((e) => e?.toJson()).toList();
    final l$price = price;
    result$data['price'] = l$price;
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size;
    }
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('parcelSize')) {
      final l$parcelSize = parcelSize;
      result$data['parcelSize'] = l$parcelSize == null
          ? null
          : toJson$Enum$ParcelSizeEnum(l$parcelSize);
    }
    if (_$data.containsKey('discount')) {
      final l$discount = discount;
      result$data['discount'] = l$discount;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.map((e) => e).toList();
    }
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    if (_$data.containsKey('materials')) {
      final l$materials = materials;
      result$data['materials'] = l$materials?.map((e) => e).toList();
    }
    if (_$data.containsKey('style')) {
      final l$style = style;
      result$data['style'] =
          l$style == null ? null : toJson$Enum$StyleEnum(l$style);
    }
    if (_$data.containsKey('customBrand')) {
      final l$customBrand = customBrand;
      result$data['customBrand'] = l$customBrand;
    }
    if (_$data.containsKey('isFeatured')) {
      final l$isFeatured = isFeatured;
      result$data['isFeatured'] = l$isFeatured;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateProduct<Variables$Mutation$CreateProduct>
      get copyWith => CopyWith$Variables$Mutation$CreateProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl.length != lOther$imageUrl.length) {
      return false;
    }
    for (int i = 0; i < l$imageUrl.length; i++) {
      final l$imageUrl$entry = l$imageUrl[i];
      final lOther$imageUrl$entry = lOther$imageUrl[i];
      if (l$imageUrl$entry != lOther$imageUrl$entry) {
        return false;
      }
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (_$data.containsKey('parcelSize') !=
        other._$data.containsKey('parcelSize')) {
      return false;
    }
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$discount = discount;
    final lOther$discount = other.discount;
    if (_$data.containsKey('discount') !=
        other._$data.containsKey('discount')) {
      return false;
    }
    if (l$discount != lOther$discount) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != null && lOther$color != null) {
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
    } else if (l$color != lOther$color) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
    if (_$data.containsKey('materials') !=
        other._$data.containsKey('materials')) {
      return false;
    }
    if (l$materials != null && lOther$materials != null) {
      if (l$materials.length != lOther$materials.length) {
        return false;
      }
      for (int i = 0; i < l$materials.length; i++) {
        final l$materials$entry = l$materials[i];
        final lOther$materials$entry = lOther$materials[i];
        if (l$materials$entry != lOther$materials$entry) {
          return false;
        }
      }
    } else if (l$materials != lOther$materials) {
      return false;
    }
    final l$style = style;
    final lOther$style = other.style;
    if (_$data.containsKey('style') != other._$data.containsKey('style')) {
      return false;
    }
    if (l$style != lOther$style) {
      return false;
    }
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (_$data.containsKey('customBrand') !=
        other._$data.containsKey('customBrand')) {
      return false;
    }
    if (l$customBrand != lOther$customBrand) {
      return false;
    }
    final l$isFeatured = isFeatured;
    final lOther$isFeatured = other.isFeatured;
    if (_$data.containsKey('isFeatured') !=
        other._$data.containsKey('isFeatured')) {
      return false;
    }
    if (l$isFeatured != lOther$isFeatured) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$condition = condition;
    final l$description = description;
    final l$imageUrl = imageUrl;
    final l$price = price;
    final l$size = size;
    final l$name = name;
    final l$parcelSize = parcelSize;
    final l$discount = discount;
    final l$color = color;
    final l$brand = brand;
    final l$materials = materials;
    final l$style = style;
    final l$customBrand = customBrand;
    final l$isFeatured = isFeatured;
    return Object.hashAll([
      l$category,
      _$data.containsKey('condition') ? l$condition : const {},
      l$description,
      Object.hashAll(l$imageUrl.map((v) => v)),
      l$price,
      _$data.containsKey('size') ? l$size : const {},
      l$name,
      _$data.containsKey('parcelSize') ? l$parcelSize : const {},
      _$data.containsKey('discount') ? l$discount : const {},
      _$data.containsKey('color')
          ? l$color == null
              ? null
              : Object.hashAll(l$color.map((v) => v))
          : const {},
      _$data.containsKey('brand') ? l$brand : const {},
      _$data.containsKey('materials')
          ? l$materials == null
              ? null
              : Object.hashAll(l$materials.map((v) => v))
          : const {},
      _$data.containsKey('style') ? l$style : const {},
      _$data.containsKey('customBrand') ? l$customBrand : const {},
      _$data.containsKey('isFeatured') ? l$isFeatured : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateProduct<TRes> {
  factory CopyWith$Variables$Mutation$CreateProduct(
    Variables$Mutation$CreateProduct instance,
    TRes Function(Variables$Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateProduct;

  factory CopyWith$Variables$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateProduct;

  TRes call({
    int? category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    List<Input$ImagesInputType?>? imageUrl,
    double? price,
    int? size,
    String? name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool? isFeatured,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateProduct _instance;

  final TRes Function(Variables$Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? condition = _undefined,
    Object? description = _undefined,
    Object? imageUrl = _undefined,
    Object? price = _undefined,
    Object? size = _undefined,
    Object? name = _undefined,
    Object? parcelSize = _undefined,
    Object? discount = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? materials = _undefined,
    Object? style = _undefined,
    Object? customBrand = _undefined,
    Object? isFeatured = _undefined,
  }) =>
      _then(Variables$Mutation$CreateProduct._({
        ..._instance._$data,
        if (category != _undefined && category != null)
          'category': (category as int),
        if (condition != _undefined)
          'condition': (condition as EnumImport$ConditionEnum.ConditionsEnum?),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (imageUrl != _undefined && imageUrl != null)
          'imageUrl': (imageUrl as List<Input$ImagesInputType?>),
        if (price != _undefined && price != null) 'price': (price as double),
        if (size != _undefined) 'size': (size as int?),
        if (name != _undefined && name != null) 'name': (name as String),
        if (parcelSize != _undefined)
          'parcelSize': (parcelSize as Enum$ParcelSizeEnum?),
        if (discount != _undefined) 'discount': (discount as double?),
        if (color != _undefined) 'color': (color as List<String?>?),
        if (brand != _undefined) 'brand': (brand as int?),
        if (materials != _undefined) 'materials': (materials as List<int?>?),
        if (style != _undefined) 'style': (style as Enum$StyleEnum?),
        if (customBrand != _undefined) 'customBrand': (customBrand as String?),
        if (isFeatured != _undefined) 'isFeatured': (isFeatured as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    int? category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    List<Input$ImagesInputType?>? imageUrl,
    double? price,
    int? size,
    String? name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool? isFeatured,
  }) =>
      _res;
}

class Mutation$CreateProduct {
  Mutation$CreateProduct({
    this.createProduct,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateProduct.fromJson(Map<String, dynamic> json) {
    final l$createProduct = json['createProduct'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct(
      createProduct: l$createProduct == null
          ? null
          : Mutation$CreateProduct$createProduct.fromJson(
              (l$createProduct as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateProduct$createProduct? createProduct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createProduct = createProduct;
    _resultData['createProduct'] = l$createProduct?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createProduct = createProduct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createProduct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createProduct = createProduct;
    final lOther$createProduct = other.createProduct;
    if (l$createProduct != lOther$createProduct) {
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

extension UtilityExtension$Mutation$CreateProduct on Mutation$CreateProduct {
  CopyWith$Mutation$CreateProduct<Mutation$CreateProduct> get copyWith =>
      CopyWith$Mutation$CreateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProduct<TRes> {
  factory CopyWith$Mutation$CreateProduct(
    Mutation$CreateProduct instance,
    TRes Function(Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Mutation$CreateProduct;

  factory CopyWith$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct;

  TRes call({
    Mutation$CreateProduct$createProduct? createProduct,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProduct$createProduct<TRes> get createProduct;
}

class _CopyWithImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct _instance;

  final TRes Function(Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createProduct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct(
        createProduct: createProduct == _undefined
            ? _instance.createProduct
            : (createProduct as Mutation$CreateProduct$createProduct?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateProduct$createProduct<TRes> get createProduct {
    final local$createProduct = _instance.createProduct;
    return local$createProduct == null
        ? CopyWith$Mutation$CreateProduct$createProduct.stub(_then(_instance))
        : CopyWith$Mutation$CreateProduct$createProduct(
            local$createProduct, (e) => call(createProduct: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    Mutation$CreateProduct$createProduct? createProduct,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateProduct$createProduct<TRes> get createProduct =>
      CopyWith$Mutation$CreateProduct$createProduct.stub(_res);
}

const documentNodeMutationCreateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'category')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'condition')),
        type: NamedTypeNode(
          name: NameNode(value: 'ConditionEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'imageUrl')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ImagesInputType'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parcelSize')),
        type: NamedTypeNode(
          name: NameNode(value: 'ParcelSizeEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'discount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'color')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'brand')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'materials')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'style')),
        type: NamedTypeNode(
          name: NameNode(value: 'StyleEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customBrand')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isFeatured')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createProduct'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'category'),
            value: VariableNode(name: NameNode(value: 'category')),
          ),
          ArgumentNode(
            name: NameNode(value: 'condition'),
            value: VariableNode(name: NameNode(value: 'condition')),
          ),
          ArgumentNode(
            name: NameNode(value: 'description'),
            value: VariableNode(name: NameNode(value: 'description')),
          ),
          ArgumentNode(
            name: NameNode(value: 'imagesUrl'),
            value: VariableNode(name: NameNode(value: 'imageUrl')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price'),
            value: VariableNode(name: NameNode(value: 'price')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'parcelSize'),
            value: VariableNode(name: NameNode(value: 'parcelSize')),
          ),
          ArgumentNode(
            name: NameNode(value: 'discount'),
            value: VariableNode(name: NameNode(value: 'discount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'color'),
            value: VariableNode(name: NameNode(value: 'color')),
          ),
          ArgumentNode(
            name: NameNode(value: 'brand'),
            value: VariableNode(name: NameNode(value: 'brand')),
          ),
          ArgumentNode(
            name: NameNode(value: 'materials'),
            value: VariableNode(name: NameNode(value: 'materials')),
          ),
          ArgumentNode(
            name: NameNode(value: 'style'),
            value: VariableNode(name: NameNode(value: 'style')),
          ),
          ArgumentNode(
            name: NameNode(value: 'customBrand'),
            value: VariableNode(name: NameNode(value: 'customBrand')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isFeatured'),
            value: VariableNode(name: NameNode(value: 'isFeatured')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$CreateProduct _parserFn$Mutation$CreateProduct(
        Map<String, dynamic> data) =>
    Mutation$CreateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateProduct?,
);

class Options$Mutation$CreateProduct
    extends graphql.MutationOptions<Mutation$CreateProduct> {
  Options$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateProduct,
          parserFn: _parserFn$Mutation$CreateProduct,
        );

  final OnMutationCompleted$Mutation$CreateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateProduct
    extends graphql.WatchQueryOptions<Mutation$CreateProduct> {
  WatchOptions$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
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
          document: documentNodeMutationCreateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateProduct,
        );
}

extension ClientExtension$Mutation$CreateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateProduct>> mutate$CreateProduct(
          Options$Mutation$CreateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateProduct> watchMutation$CreateProduct(
          WatchOptions$Mutation$CreateProduct options) =>
      this.watchMutation(options);
}

class Mutation$CreateProduct$createProduct {
  Mutation$CreateProduct$createProduct({
    this.success,
    this.message,
    this.$__typename = 'CreateProduct',
  });

  factory Mutation$CreateProduct$createProduct.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$createProduct(
      success: (l$success as bool?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct$createProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$CreateProduct$createProduct
    on Mutation$CreateProduct$createProduct {
  CopyWith$Mutation$CreateProduct$createProduct<
          Mutation$CreateProduct$createProduct>
      get copyWith => CopyWith$Mutation$CreateProduct$createProduct(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  factory CopyWith$Mutation$CreateProduct$createProduct(
    Mutation$CreateProduct$createProduct instance,
    TRes Function(Mutation$CreateProduct$createProduct) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$createProduct;

  factory CopyWith$Mutation$CreateProduct$createProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$createProduct;

  TRes call({
    bool? success,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateProduct$createProduct<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$createProduct(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$createProduct _instance;

  final TRes Function(Mutation$CreateProduct$createProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$createProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateProduct$createProduct<TRes>
    implements CopyWith$Mutation$CreateProduct$createProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$createProduct(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$likeProduct {
  factory Variables$Mutation$likeProduct({required int productId}) =>
      Variables$Mutation$likeProduct._({
        r'productId': productId,
      });

  Variables$Mutation$likeProduct._(this._$data);

  factory Variables$Mutation$likeProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as int);
    return Variables$Mutation$likeProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int get productId => (_$data['productId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$productId = productId;
    result$data['productId'] = l$productId;
    return result$data;
  }

  CopyWith$Variables$Mutation$likeProduct<Variables$Mutation$likeProduct>
      get copyWith => CopyWith$Variables$Mutation$likeProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$likeProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    return Object.hashAll([l$productId]);
  }
}

abstract class CopyWith$Variables$Mutation$likeProduct<TRes> {
  factory CopyWith$Variables$Mutation$likeProduct(
    Variables$Mutation$likeProduct instance,
    TRes Function(Variables$Mutation$likeProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$likeProduct;

  factory CopyWith$Variables$Mutation$likeProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$likeProduct;

  TRes call({int? productId});
}

class _CopyWithImpl$Variables$Mutation$likeProduct<TRes>
    implements CopyWith$Variables$Mutation$likeProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$likeProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$likeProduct _instance;

  final TRes Function(Variables$Mutation$likeProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? productId = _undefined}) =>
      _then(Variables$Mutation$likeProduct._({
        ..._instance._$data,
        if (productId != _undefined && productId != null)
          'productId': (productId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$likeProduct<TRes>
    implements CopyWith$Variables$Mutation$likeProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$likeProduct(this._res);

  TRes _res;

  call({int? productId}) => _res;
}

class Mutation$likeProduct {
  Mutation$likeProduct({
    this.likeProduct,
    this.$__typename = 'Mutation',
  });

  factory Mutation$likeProduct.fromJson(Map<String, dynamic> json) {
    final l$likeProduct = json['likeProduct'];
    final l$$__typename = json['__typename'];
    return Mutation$likeProduct(
      likeProduct: l$likeProduct == null
          ? null
          : Mutation$likeProduct$likeProduct.fromJson(
              (l$likeProduct as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$likeProduct$likeProduct? likeProduct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likeProduct = likeProduct;
    _resultData['likeProduct'] = l$likeProduct?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likeProduct = likeProduct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$likeProduct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$likeProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$likeProduct = likeProduct;
    final lOther$likeProduct = other.likeProduct;
    if (l$likeProduct != lOther$likeProduct) {
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

extension UtilityExtension$Mutation$likeProduct on Mutation$likeProduct {
  CopyWith$Mutation$likeProduct<Mutation$likeProduct> get copyWith =>
      CopyWith$Mutation$likeProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$likeProduct<TRes> {
  factory CopyWith$Mutation$likeProduct(
    Mutation$likeProduct instance,
    TRes Function(Mutation$likeProduct) then,
  ) = _CopyWithImpl$Mutation$likeProduct;

  factory CopyWith$Mutation$likeProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$likeProduct;

  TRes call({
    Mutation$likeProduct$likeProduct? likeProduct,
    String? $__typename,
  });
  CopyWith$Mutation$likeProduct$likeProduct<TRes> get likeProduct;
}

class _CopyWithImpl$Mutation$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct<TRes> {
  _CopyWithImpl$Mutation$likeProduct(
    this._instance,
    this._then,
  );

  final Mutation$likeProduct _instance;

  final TRes Function(Mutation$likeProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? likeProduct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$likeProduct(
        likeProduct: likeProduct == _undefined
            ? _instance.likeProduct
            : (likeProduct as Mutation$likeProduct$likeProduct?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$likeProduct$likeProduct<TRes> get likeProduct {
    final local$likeProduct = _instance.likeProduct;
    return local$likeProduct == null
        ? CopyWith$Mutation$likeProduct$likeProduct.stub(_then(_instance))
        : CopyWith$Mutation$likeProduct$likeProduct(
            local$likeProduct, (e) => call(likeProduct: e));
  }
}

class _CopyWithStubImpl$Mutation$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct<TRes> {
  _CopyWithStubImpl$Mutation$likeProduct(this._res);

  TRes _res;

  call({
    Mutation$likeProduct$likeProduct? likeProduct,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$likeProduct$likeProduct<TRes> get likeProduct =>
      CopyWith$Mutation$likeProduct$likeProduct.stub(_res);
}

const documentNodeMutationlikeProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'likeProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productId')),
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
        name: NameNode(value: 'likeProduct'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$likeProduct _parserFn$Mutation$likeProduct(
        Map<String, dynamic> data) =>
    Mutation$likeProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$likeProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$likeProduct?,
);

class Options$Mutation$likeProduct
    extends graphql.MutationOptions<Mutation$likeProduct> {
  Options$Mutation$likeProduct({
    String? operationName,
    required Variables$Mutation$likeProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$likeProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$likeProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$likeProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$likeProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationlikeProduct,
          parserFn: _parserFn$Mutation$likeProduct,
        );

  final OnMutationCompleted$Mutation$likeProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$likeProduct
    extends graphql.WatchQueryOptions<Mutation$likeProduct> {
  WatchOptions$Mutation$likeProduct({
    String? operationName,
    required Variables$Mutation$likeProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$likeProduct? typedOptimisticResult,
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
          document: documentNodeMutationlikeProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$likeProduct,
        );
}

extension ClientExtension$Mutation$likeProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$likeProduct>> mutate$likeProduct(
          Options$Mutation$likeProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$likeProduct> watchMutation$likeProduct(
          WatchOptions$Mutation$likeProduct options) =>
      this.watchMutation(options);
}

class Mutation$likeProduct$likeProduct {
  Mutation$likeProduct$likeProduct({
    this.success,
    this.$__typename = 'LikeProduct',
  });

  factory Mutation$likeProduct$likeProduct.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$likeProduct$likeProduct(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$likeProduct$likeProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$likeProduct$likeProduct
    on Mutation$likeProduct$likeProduct {
  CopyWith$Mutation$likeProduct$likeProduct<Mutation$likeProduct$likeProduct>
      get copyWith => CopyWith$Mutation$likeProduct$likeProduct(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$likeProduct$likeProduct<TRes> {
  factory CopyWith$Mutation$likeProduct$likeProduct(
    Mutation$likeProduct$likeProduct instance,
    TRes Function(Mutation$likeProduct$likeProduct) then,
  ) = _CopyWithImpl$Mutation$likeProduct$likeProduct;

  factory CopyWith$Mutation$likeProduct$likeProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$likeProduct$likeProduct;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$likeProduct$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct$likeProduct<TRes> {
  _CopyWithImpl$Mutation$likeProduct$likeProduct(
    this._instance,
    this._then,
  );

  final Mutation$likeProduct$likeProduct _instance;

  final TRes Function(Mutation$likeProduct$likeProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$likeProduct$likeProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$likeProduct$likeProduct<TRes>
    implements CopyWith$Mutation$likeProduct$likeProduct<TRes> {
  _CopyWithStubImpl$Mutation$likeProduct$likeProduct(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateProduct {
  factory Variables$Mutation$UpdateProduct({
    int? category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    double? discount,
    String? name,
    Input$ImageUpdateInputType? imageUrl,
    Enum$ParcelSizeEnum? parcelSize,
    double? price,
    required int productId,
    int? size,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool? isFeatured,
  }) =>
      Variables$Mutation$UpdateProduct._({
        if (category != null) r'category': category,
        if (condition != null) r'condition': condition,
        if (description != null) r'description': description,
        if (discount != null) r'discount': discount,
        if (name != null) r'name': name,
        if (imageUrl != null) r'imageUrl': imageUrl,
        if (parcelSize != null) r'parcelSize': parcelSize,
        if (price != null) r'price': price,
        r'productId': productId,
        if (size != null) r'size': size,
        if (color != null) r'color': color,
        if (brand != null) r'brand': brand,
        if (materials != null) r'materials': materials,
        if (style != null) r'style': style,
        if (customBrand != null) r'customBrand': customBrand,
        if (isFeatured != null) r'isFeatured': isFeatured,
      });

  Variables$Mutation$UpdateProduct._(this._$data);

  factory Variables$Mutation$UpdateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as int?);
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionByApiValue(
              (l$condition as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('discount')) {
      final l$discount = data['discount'];
      result$data['discount'] = (l$discount as num?)?.toDouble();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('imageUrl')) {
      final l$imageUrl = data['imageUrl'];
      result$data['imageUrl'] = l$imageUrl == null
          ? null
          : Input$ImageUpdateInputType.fromJson(
              (l$imageUrl as Map<String, dynamic>));
    }
    if (data.containsKey('parcelSize')) {
      final l$parcelSize = data['parcelSize'];
      result$data['parcelSize'] = l$parcelSize == null
          ? null
          : fromJson$Enum$ParcelSizeEnum((l$parcelSize as String));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = (l$price as num?)?.toDouble();
    }
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as int);
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = (l$size as int?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          (l$color as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as int?);
    }
    if (data.containsKey('materials')) {
      final l$materials = data['materials'];
      result$data['materials'] =
          (l$materials as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('style')) {
      final l$style = data['style'];
      result$data['style'] =
          l$style == null ? null : fromJson$Enum$StyleEnum((l$style as String));
    }
    if (data.containsKey('customBrand')) {
      final l$customBrand = data['customBrand'];
      result$data['customBrand'] = (l$customBrand as String?);
    }
    if (data.containsKey('isFeatured')) {
      final l$isFeatured = data['isFeatured'];
      result$data['isFeatured'] = (l$isFeatured as bool?);
    }
    return Variables$Mutation$UpdateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get category => (_$data['category'] as int?);

  EnumImport$ConditionEnum.ConditionsEnum? get condition =>
      (_$data['condition'] as EnumImport$ConditionEnum.ConditionsEnum?);

  String? get description => (_$data['description'] as String?);

  double? get discount => (_$data['discount'] as double?);

  String? get name => (_$data['name'] as String?);

  Input$ImageUpdateInputType? get imageUrl =>
      (_$data['imageUrl'] as Input$ImageUpdateInputType?);

  Enum$ParcelSizeEnum? get parcelSize =>
      (_$data['parcelSize'] as Enum$ParcelSizeEnum?);

  double? get price => (_$data['price'] as double?);

  int get productId => (_$data['productId'] as int);

  int? get size => (_$data['size'] as int?);

  List<String?>? get color => (_$data['color'] as List<String?>?);

  int? get brand => (_$data['brand'] as int?);

  List<int?>? get materials => (_$data['materials'] as List<int?>?);

  Enum$StyleEnum? get style => (_$data['style'] as Enum$StyleEnum?);

  String? get customBrand => (_$data['customBrand'] as String?);

  bool? get isFeatured => (_$data['isFeatured'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition == null
          ? null
          : EnumImport$ConditionEnum.ConditionsEnum.conditionToApiValue(
              l$condition);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('discount')) {
      final l$discount = discount;
      result$data['discount'] = l$discount;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('imageUrl')) {
      final l$imageUrl = imageUrl;
      result$data['imageUrl'] = l$imageUrl?.toJson();
    }
    if (_$data.containsKey('parcelSize')) {
      final l$parcelSize = parcelSize;
      result$data['parcelSize'] = l$parcelSize == null
          ? null
          : toJson$Enum$ParcelSizeEnum(l$parcelSize);
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price;
    }
    final l$productId = productId;
    result$data['productId'] = l$productId;
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.map((e) => e).toList();
    }
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    if (_$data.containsKey('materials')) {
      final l$materials = materials;
      result$data['materials'] = l$materials?.map((e) => e).toList();
    }
    if (_$data.containsKey('style')) {
      final l$style = style;
      result$data['style'] =
          l$style == null ? null : toJson$Enum$StyleEnum(l$style);
    }
    if (_$data.containsKey('customBrand')) {
      final l$customBrand = customBrand;
      result$data['customBrand'] = l$customBrand;
    }
    if (_$data.containsKey('isFeatured')) {
      final l$isFeatured = isFeatured;
      result$data['isFeatured'] = l$isFeatured;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProduct<Variables$Mutation$UpdateProduct>
      get copyWith => CopyWith$Variables$Mutation$UpdateProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$discount = discount;
    final lOther$discount = other.discount;
    if (_$data.containsKey('discount') !=
        other._$data.containsKey('discount')) {
      return false;
    }
    if (l$discount != lOther$discount) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (_$data.containsKey('imageUrl') !=
        other._$data.containsKey('imageUrl')) {
      return false;
    }
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$parcelSize = parcelSize;
    final lOther$parcelSize = other.parcelSize;
    if (_$data.containsKey('parcelSize') !=
        other._$data.containsKey('parcelSize')) {
      return false;
    }
    if (l$parcelSize != lOther$parcelSize) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != null && lOther$color != null) {
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
    } else if (l$color != lOther$color) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
    if (_$data.containsKey('materials') !=
        other._$data.containsKey('materials')) {
      return false;
    }
    if (l$materials != null && lOther$materials != null) {
      if (l$materials.length != lOther$materials.length) {
        return false;
      }
      for (int i = 0; i < l$materials.length; i++) {
        final l$materials$entry = l$materials[i];
        final lOther$materials$entry = lOther$materials[i];
        if (l$materials$entry != lOther$materials$entry) {
          return false;
        }
      }
    } else if (l$materials != lOther$materials) {
      return false;
    }
    final l$style = style;
    final lOther$style = other.style;
    if (_$data.containsKey('style') != other._$data.containsKey('style')) {
      return false;
    }
    if (l$style != lOther$style) {
      return false;
    }
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (_$data.containsKey('customBrand') !=
        other._$data.containsKey('customBrand')) {
      return false;
    }
    if (l$customBrand != lOther$customBrand) {
      return false;
    }
    final l$isFeatured = isFeatured;
    final lOther$isFeatured = other.isFeatured;
    if (_$data.containsKey('isFeatured') !=
        other._$data.containsKey('isFeatured')) {
      return false;
    }
    if (l$isFeatured != lOther$isFeatured) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$condition = condition;
    final l$description = description;
    final l$discount = discount;
    final l$name = name;
    final l$imageUrl = imageUrl;
    final l$parcelSize = parcelSize;
    final l$price = price;
    final l$productId = productId;
    final l$size = size;
    final l$color = color;
    final l$brand = brand;
    final l$materials = materials;
    final l$style = style;
    final l$customBrand = customBrand;
    final l$isFeatured = isFeatured;
    return Object.hashAll([
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('discount') ? l$discount : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('imageUrl') ? l$imageUrl : const {},
      _$data.containsKey('parcelSize') ? l$parcelSize : const {},
      _$data.containsKey('price') ? l$price : const {},
      l$productId,
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('color')
          ? l$color == null
              ? null
              : Object.hashAll(l$color.map((v) => v))
          : const {},
      _$data.containsKey('brand') ? l$brand : const {},
      _$data.containsKey('materials')
          ? l$materials == null
              ? null
              : Object.hashAll(l$materials.map((v) => v))
          : const {},
      _$data.containsKey('style') ? l$style : const {},
      _$data.containsKey('customBrand') ? l$customBrand : const {},
      _$data.containsKey('isFeatured') ? l$isFeatured : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProduct(
    Variables$Mutation$UpdateProduct instance,
    TRes Function(Variables$Mutation$UpdateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProduct;

  factory CopyWith$Variables$Mutation$UpdateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProduct;

  TRes call({
    int? category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    double? discount,
    String? name,
    Input$ImageUpdateInputType? imageUrl,
    Enum$ParcelSizeEnum? parcelSize,
    double? price,
    int? productId,
    int? size,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool? isFeatured,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProduct<TRes>
    implements CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProduct _instance;

  final TRes Function(Variables$Mutation$UpdateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? condition = _undefined,
    Object? description = _undefined,
    Object? discount = _undefined,
    Object? name = _undefined,
    Object? imageUrl = _undefined,
    Object? parcelSize = _undefined,
    Object? price = _undefined,
    Object? productId = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? materials = _undefined,
    Object? style = _undefined,
    Object? customBrand = _undefined,
    Object? isFeatured = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProduct._({
        ..._instance._$data,
        if (category != _undefined) 'category': (category as int?),
        if (condition != _undefined)
          'condition': (condition as EnumImport$ConditionEnum.ConditionsEnum?),
        if (description != _undefined) 'description': (description as String?),
        if (discount != _undefined) 'discount': (discount as double?),
        if (name != _undefined) 'name': (name as String?),
        if (imageUrl != _undefined)
          'imageUrl': (imageUrl as Input$ImageUpdateInputType?),
        if (parcelSize != _undefined)
          'parcelSize': (parcelSize as Enum$ParcelSizeEnum?),
        if (price != _undefined) 'price': (price as double?),
        if (productId != _undefined && productId != null)
          'productId': (productId as int),
        if (size != _undefined) 'size': (size as int?),
        if (color != _undefined) 'color': (color as List<String?>?),
        if (brand != _undefined) 'brand': (brand as int?),
        if (materials != _undefined) 'materials': (materials as List<int?>?),
        if (style != _undefined) 'style': (style as Enum$StyleEnum?),
        if (customBrand != _undefined) 'customBrand': (customBrand as String?),
        if (isFeatured != _undefined) 'isFeatured': (isFeatured as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProduct<TRes>
    implements CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProduct(this._res);

  TRes _res;

  call({
    int? category,
    EnumImport$ConditionEnum.ConditionsEnum? condition,
    String? description,
    double? discount,
    String? name,
    Input$ImageUpdateInputType? imageUrl,
    Enum$ParcelSizeEnum? parcelSize,
    double? price,
    int? productId,
    int? size,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
    Enum$StyleEnum? style,
    String? customBrand,
    bool? isFeatured,
  }) =>
      _res;
}

class Mutation$UpdateProduct {
  Mutation$UpdateProduct({
    this.updateProduct,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProduct.fromJson(Map<String, dynamic> json) {
    final l$updateProduct = json['updateProduct'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProduct(
      updateProduct: l$updateProduct == null
          ? null
          : Mutation$UpdateProduct$updateProduct.fromJson(
              (l$updateProduct as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProduct$updateProduct? updateProduct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateProduct = updateProduct;
    _resultData['updateProduct'] = l$updateProduct?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateProduct = updateProduct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateProduct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateProduct = updateProduct;
    final lOther$updateProduct = other.updateProduct;
    if (l$updateProduct != lOther$updateProduct) {
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

extension UtilityExtension$Mutation$UpdateProduct on Mutation$UpdateProduct {
  CopyWith$Mutation$UpdateProduct<Mutation$UpdateProduct> get copyWith =>
      CopyWith$Mutation$UpdateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProduct<TRes> {
  factory CopyWith$Mutation$UpdateProduct(
    Mutation$UpdateProduct instance,
    TRes Function(Mutation$UpdateProduct) then,
  ) = _CopyWithImpl$Mutation$UpdateProduct;

  factory CopyWith$Mutation$UpdateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProduct;

  TRes call({
    Mutation$UpdateProduct$updateProduct? updateProduct,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProduct$updateProduct<TRes> get updateProduct;
}

class _CopyWithImpl$Mutation$UpdateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct<TRes> {
  _CopyWithImpl$Mutation$UpdateProduct(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProduct _instance;

  final TRes Function(Mutation$UpdateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateProduct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProduct(
        updateProduct: updateProduct == _undefined
            ? _instance.updateProduct
            : (updateProduct as Mutation$UpdateProduct$updateProduct?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateProduct$updateProduct<TRes> get updateProduct {
    final local$updateProduct = _instance.updateProduct;
    return local$updateProduct == null
        ? CopyWith$Mutation$UpdateProduct$updateProduct.stub(_then(_instance))
        : CopyWith$Mutation$UpdateProduct$updateProduct(
            local$updateProduct, (e) => call(updateProduct: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProduct(this._res);

  TRes _res;

  call({
    Mutation$UpdateProduct$updateProduct? updateProduct,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateProduct$updateProduct<TRes> get updateProduct =>
      CopyWith$Mutation$UpdateProduct$updateProduct.stub(_res);
}

const documentNodeMutationUpdateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'category')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'condition')),
        type: NamedTypeNode(
          name: NameNode(value: 'ConditionEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'discount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'imageUrl')),
        type: NamedTypeNode(
          name: NameNode(value: 'ImageUpdateInputType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parcelSize')),
        type: NamedTypeNode(
          name: NameNode(value: 'ParcelSizeEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'color')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'brand')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'materials')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'style')),
        type: NamedTypeNode(
          name: NameNode(value: 'StyleEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customBrand')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isFeatured')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateProduct'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'category'),
            value: VariableNode(name: NameNode(value: 'category')),
          ),
          ArgumentNode(
            name: NameNode(value: 'condition'),
            value: VariableNode(name: NameNode(value: 'condition')),
          ),
          ArgumentNode(
            name: NameNode(value: 'description'),
            value: VariableNode(name: NameNode(value: 'description')),
          ),
          ArgumentNode(
            name: NameNode(value: 'discountPrice'),
            value: VariableNode(name: NameNode(value: 'discount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'parcelSize'),
            value: VariableNode(name: NameNode(value: 'parcelSize')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price'),
            value: VariableNode(name: NameNode(value: 'price')),
          ),
          ArgumentNode(
            name: NameNode(value: 'imagesUrl'),
            value: VariableNode(name: NameNode(value: 'imageUrl')),
          ),
          ArgumentNode(
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
          ArgumentNode(
            name: NameNode(value: 'color'),
            value: VariableNode(name: NameNode(value: 'color')),
          ),
          ArgumentNode(
            name: NameNode(value: 'brand'),
            value: VariableNode(name: NameNode(value: 'brand')),
          ),
          ArgumentNode(
            name: NameNode(value: 'materials'),
            value: VariableNode(name: NameNode(value: 'materials')),
          ),
          ArgumentNode(
            name: NameNode(value: 'style'),
            value: VariableNode(name: NameNode(value: 'style')),
          ),
          ArgumentNode(
            name: NameNode(value: 'customBrand'),
            value: VariableNode(name: NameNode(value: 'customBrand')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isFeatured'),
            value: VariableNode(name: NameNode(value: 'isFeatured')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$UpdateProduct _parserFn$Mutation$UpdateProduct(
        Map<String, dynamic> data) =>
    Mutation$UpdateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateProduct?,
);

class Options$Mutation$UpdateProduct
    extends graphql.MutationOptions<Mutation$UpdateProduct> {
  Options$Mutation$UpdateProduct({
    String? operationName,
    required Variables$Mutation$UpdateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProduct,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );

  final OnMutationCompleted$Mutation$UpdateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProduct
    extends graphql.WatchQueryOptions<Mutation$UpdateProduct> {
  WatchOptions$Mutation$UpdateProduct({
    String? operationName,
    required Variables$Mutation$UpdateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );
}

extension ClientExtension$Mutation$UpdateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProduct>> mutate$UpdateProduct(
          Options$Mutation$UpdateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProduct> watchMutation$UpdateProduct(
          WatchOptions$Mutation$UpdateProduct options) =>
      this.watchMutation(options);
}

class Mutation$UpdateProduct$updateProduct {
  Mutation$UpdateProduct$updateProduct({
    this.success,
    this.message,
    this.$__typename = 'UpdateProduct',
  });

  factory Mutation$UpdateProduct$updateProduct.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProduct$updateProduct(
      success: (l$success as bool?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateProduct$updateProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$UpdateProduct$updateProduct
    on Mutation$UpdateProduct$updateProduct {
  CopyWith$Mutation$UpdateProduct$updateProduct<
          Mutation$UpdateProduct$updateProduct>
      get copyWith => CopyWith$Mutation$UpdateProduct$updateProduct(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProduct$updateProduct<TRes> {
  factory CopyWith$Mutation$UpdateProduct$updateProduct(
    Mutation$UpdateProduct$updateProduct instance,
    TRes Function(Mutation$UpdateProduct$updateProduct) then,
  ) = _CopyWithImpl$Mutation$UpdateProduct$updateProduct;

  factory CopyWith$Mutation$UpdateProduct$updateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProduct$updateProduct;

  TRes call({
    bool? success,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateProduct$updateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct$updateProduct<TRes> {
  _CopyWithImpl$Mutation$UpdateProduct$updateProduct(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProduct$updateProduct _instance;

  final TRes Function(Mutation$UpdateProduct$updateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProduct$updateProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProduct$updateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct$updateProduct<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProduct$updateProduct(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteProduct {
  factory Variables$Mutation$DeleteProduct({required int productId}) =>
      Variables$Mutation$DeleteProduct._({
        r'productId': productId,
      });

  Variables$Mutation$DeleteProduct._(this._$data);

  factory Variables$Mutation$DeleteProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as int);
    return Variables$Mutation$DeleteProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int get productId => (_$data['productId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$productId = productId;
    result$data['productId'] = l$productId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteProduct<Variables$Mutation$DeleteProduct>
      get copyWith => CopyWith$Variables$Mutation$DeleteProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    return Object.hashAll([l$productId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  factory CopyWith$Variables$Mutation$DeleteProduct(
    Variables$Mutation$DeleteProduct instance,
    TRes Function(Variables$Mutation$DeleteProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteProduct;

  factory CopyWith$Variables$Mutation$DeleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteProduct;

  TRes call({int? productId});
}

class _CopyWithImpl$Variables$Mutation$DeleteProduct<TRes>
    implements CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteProduct _instance;

  final TRes Function(Variables$Mutation$DeleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? productId = _undefined}) =>
      _then(Variables$Mutation$DeleteProduct._({
        ..._instance._$data,
        if (productId != _undefined && productId != null)
          'productId': (productId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteProduct<TRes>
    implements CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteProduct(this._res);

  TRes _res;

  call({int? productId}) => _res;
}

class Mutation$DeleteProduct {
  Mutation$DeleteProduct({
    this.deleteProduct,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteProduct.fromJson(Map<String, dynamic> json) {
    final l$deleteProduct = json['deleteProduct'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteProduct(
      deleteProduct: l$deleteProduct == null
          ? null
          : Mutation$DeleteProduct$deleteProduct.fromJson(
              (l$deleteProduct as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteProduct$deleteProduct? deleteProduct;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteProduct = deleteProduct;
    _resultData['deleteProduct'] = l$deleteProduct?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteProduct = deleteProduct;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteProduct,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteProduct = deleteProduct;
    final lOther$deleteProduct = other.deleteProduct;
    if (l$deleteProduct != lOther$deleteProduct) {
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

extension UtilityExtension$Mutation$DeleteProduct on Mutation$DeleteProduct {
  CopyWith$Mutation$DeleteProduct<Mutation$DeleteProduct> get copyWith =>
      CopyWith$Mutation$DeleteProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteProduct<TRes> {
  factory CopyWith$Mutation$DeleteProduct(
    Mutation$DeleteProduct instance,
    TRes Function(Mutation$DeleteProduct) then,
  ) = _CopyWithImpl$Mutation$DeleteProduct;

  factory CopyWith$Mutation$DeleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProduct;

  TRes call({
    Mutation$DeleteProduct$deleteProduct? deleteProduct,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteProduct$deleteProduct<TRes> get deleteProduct;
}

class _CopyWithImpl$Mutation$DeleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct<TRes> {
  _CopyWithImpl$Mutation$DeleteProduct(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProduct _instance;

  final TRes Function(Mutation$DeleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteProduct = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteProduct(
        deleteProduct: deleteProduct == _undefined
            ? _instance.deleteProduct
            : (deleteProduct as Mutation$DeleteProduct$deleteProduct?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteProduct$deleteProduct<TRes> get deleteProduct {
    final local$deleteProduct = _instance.deleteProduct;
    return local$deleteProduct == null
        ? CopyWith$Mutation$DeleteProduct$deleteProduct.stub(_then(_instance))
        : CopyWith$Mutation$DeleteProduct$deleteProduct(
            local$deleteProduct, (e) => call(deleteProduct: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProduct(this._res);

  TRes _res;

  call({
    Mutation$DeleteProduct$deleteProduct? deleteProduct,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteProduct$deleteProduct<TRes> get deleteProduct =>
      CopyWith$Mutation$DeleteProduct$deleteProduct.stub(_res);
}

const documentNodeMutationDeleteProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productId')),
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
        name: NameNode(value: 'deleteProduct'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$DeleteProduct _parserFn$Mutation$DeleteProduct(
        Map<String, dynamic> data) =>
    Mutation$DeleteProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteProduct?,
);

class Options$Mutation$DeleteProduct
    extends graphql.MutationOptions<Mutation$DeleteProduct> {
  Options$Mutation$DeleteProduct({
    String? operationName,
    required Variables$Mutation$DeleteProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteProduct>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteProduct,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );

  final OnMutationCompleted$Mutation$DeleteProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteProduct
    extends graphql.WatchQueryOptions<Mutation$DeleteProduct> {
  WatchOptions$Mutation$DeleteProduct({
    String? operationName,
    required Variables$Mutation$DeleteProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
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
          document: documentNodeMutationDeleteProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );
}

extension ClientExtension$Mutation$DeleteProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteProduct>> mutate$DeleteProduct(
          Options$Mutation$DeleteProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteProduct> watchMutation$DeleteProduct(
          WatchOptions$Mutation$DeleteProduct options) =>
      this.watchMutation(options);
}

class Mutation$DeleteProduct$deleteProduct {
  Mutation$DeleteProduct$deleteProduct({
    this.success,
    this.message,
    this.$__typename = 'DeleteProduct',
  });

  factory Mutation$DeleteProduct$deleteProduct.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteProduct$deleteProduct(
      success: (l$success as bool?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteProduct$deleteProduct ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DeleteProduct$deleteProduct
    on Mutation$DeleteProduct$deleteProduct {
  CopyWith$Mutation$DeleteProduct$deleteProduct<
          Mutation$DeleteProduct$deleteProduct>
      get copyWith => CopyWith$Mutation$DeleteProduct$deleteProduct(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteProduct$deleteProduct<TRes> {
  factory CopyWith$Mutation$DeleteProduct$deleteProduct(
    Mutation$DeleteProduct$deleteProduct instance,
    TRes Function(Mutation$DeleteProduct$deleteProduct) then,
  ) = _CopyWithImpl$Mutation$DeleteProduct$deleteProduct;

  factory CopyWith$Mutation$DeleteProduct$deleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProduct$deleteProduct;

  TRes call({
    bool? success,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteProduct$deleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct$deleteProduct<TRes> {
  _CopyWithImpl$Mutation$DeleteProduct$deleteProduct(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProduct$deleteProduct _instance;

  final TRes Function(Mutation$DeleteProduct$deleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteProduct$deleteProduct(
        success: success == _undefined ? _instance.success : (success as bool?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteProduct$deleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct$deleteProduct<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProduct$deleteProduct(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateProfile {
  factory Variables$Mutation$UpdateProfile({
    String? bio,
    String? country,
    String? displayName,
    String? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    Input$ProfilePictureInputType? profilePicture,
    bool? use2fa,
    String? username,
    Input$LocationInputType? location,
    String? fcmToken,
    bool? isVacationMode,
  }) =>
      Variables$Mutation$UpdateProfile._({
        if (bio != null) r'bio': bio,
        if (country != null) r'country': country,
        if (displayName != null) r'displayName': displayName,
        if (dob != null) r'dob': dob,
        if (firstName != null) r'firstName': firstName,
        if (gender != null) r'gender': gender,
        if (lastName != null) r'lastName': lastName,
        if (otp != null) r'otp': otp,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (postCode != null) r'postCode': postCode,
        if (profilePicture != null) r'profilePicture': profilePicture,
        if (use2fa != null) r'use2fa': use2fa,
        if (username != null) r'username': username,
        if (location != null) r'location': location,
        if (fcmToken != null) r'fcmToken': fcmToken,
        if (isVacationMode != null) r'isVacationMode': isVacationMode,
      });

  Variables$Mutation$UpdateProfile._(this._$data);

  factory Variables$Mutation$UpdateProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bio')) {
      final l$bio = data['bio'];
      result$data['bio'] = (l$bio as String?);
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('displayName')) {
      final l$displayName = data['displayName'];
      result$data['displayName'] = (l$displayName as String?);
    }
    if (data.containsKey('dob')) {
      final l$dob = data['dob'];
      result$data['dob'] = (l$dob as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('otp')) {
      final l$otp = data['otp'];
      result$data['otp'] = (l$otp as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = l$phoneNumber == null
          ? null
          : Input$PhoneInputType.fromJson(
              (l$phoneNumber as Map<String, dynamic>));
    }
    if (data.containsKey('postCode')) {
      final l$postCode = data['postCode'];
      result$data['postCode'] = (l$postCode as String?);
    }
    if (data.containsKey('profilePicture')) {
      final l$profilePicture = data['profilePicture'];
      result$data['profilePicture'] = l$profilePicture == null
          ? null
          : Input$ProfilePictureInputType.fromJson(
              (l$profilePicture as Map<String, dynamic>));
    }
    if (data.containsKey('use2fa')) {
      final l$use2fa = data['use2fa'];
      result$data['use2fa'] = (l$use2fa as bool?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$LocationInputType.fromJson(
              (l$location as Map<String, dynamic>));
    }
    if (data.containsKey('fcmToken')) {
      final l$fcmToken = data['fcmToken'];
      result$data['fcmToken'] = (l$fcmToken as String?);
    }
    if (data.containsKey('isVacationMode')) {
      final l$isVacationMode = data['isVacationMode'];
      result$data['isVacationMode'] = (l$isVacationMode as bool?);
    }
    return Variables$Mutation$UpdateProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bio => (_$data['bio'] as String?);

  String? get country => (_$data['country'] as String?);

  String? get displayName => (_$data['displayName'] as String?);

  String? get dob => (_$data['dob'] as String?);

  String? get firstName => (_$data['firstName'] as String?);

  String? get gender => (_$data['gender'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get otp => (_$data['otp'] as String?);

  Input$PhoneInputType? get phoneNumber =>
      (_$data['phoneNumber'] as Input$PhoneInputType?);

  String? get postCode => (_$data['postCode'] as String?);

  Input$ProfilePictureInputType? get profilePicture =>
      (_$data['profilePicture'] as Input$ProfilePictureInputType?);

  bool? get use2fa => (_$data['use2fa'] as bool?);

  String? get username => (_$data['username'] as String?);

  Input$LocationInputType? get location =>
      (_$data['location'] as Input$LocationInputType?);

  String? get fcmToken => (_$data['fcmToken'] as String?);

  bool? get isVacationMode => (_$data['isVacationMode'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bio')) {
      final l$bio = bio;
      result$data['bio'] = l$bio;
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('displayName')) {
      final l$displayName = displayName;
      result$data['displayName'] = l$displayName;
    }
    if (_$data.containsKey('dob')) {
      final l$dob = dob;
      result$data['dob'] = l$dob;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('otp')) {
      final l$otp = otp;
      result$data['otp'] = l$otp;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber?.toJson();
    }
    if (_$data.containsKey('postCode')) {
      final l$postCode = postCode;
      result$data['postCode'] = l$postCode;
    }
    if (_$data.containsKey('profilePicture')) {
      final l$profilePicture = profilePicture;
      result$data['profilePicture'] = l$profilePicture?.toJson();
    }
    if (_$data.containsKey('use2fa')) {
      final l$use2fa = use2fa;
      result$data['use2fa'] = l$use2fa;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    if (_$data.containsKey('fcmToken')) {
      final l$fcmToken = fcmToken;
      result$data['fcmToken'] = l$fcmToken;
    }
    if (_$data.containsKey('isVacationMode')) {
      final l$isVacationMode = isVacationMode;
      result$data['isVacationMode'] = l$isVacationMode;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfile<Variables$Mutation$UpdateProfile>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfile(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (_$data.containsKey('bio') != other._$data.containsKey('bio')) {
      return false;
    }
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (_$data.containsKey('displayName') !=
        other._$data.containsKey('displayName')) {
      return false;
    }
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (_$data.containsKey('dob') != other._$data.containsKey('dob')) {
      return false;
    }
    if (l$dob != lOther$dob) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$otp = otp;
    final lOther$otp = other.otp;
    if (_$data.containsKey('otp') != other._$data.containsKey('otp')) {
      return false;
    }
    if (l$otp != lOther$otp) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (_$data.containsKey('postCode') !=
        other._$data.containsKey('postCode')) {
      return false;
    }
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$profilePicture = profilePicture;
    final lOther$profilePicture = other.profilePicture;
    if (_$data.containsKey('profilePicture') !=
        other._$data.containsKey('profilePicture')) {
      return false;
    }
    if (l$profilePicture != lOther$profilePicture) {
      return false;
    }
    final l$use2fa = use2fa;
    final lOther$use2fa = other.use2fa;
    if (_$data.containsKey('use2fa') != other._$data.containsKey('use2fa')) {
      return false;
    }
    if (l$use2fa != lOther$use2fa) {
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
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$fcmToken = fcmToken;
    final lOther$fcmToken = other.fcmToken;
    if (_$data.containsKey('fcmToken') !=
        other._$data.containsKey('fcmToken')) {
      return false;
    }
    if (l$fcmToken != lOther$fcmToken) {
      return false;
    }
    final l$isVacationMode = isVacationMode;
    final lOther$isVacationMode = other.isVacationMode;
    if (_$data.containsKey('isVacationMode') !=
        other._$data.containsKey('isVacationMode')) {
      return false;
    }
    if (l$isVacationMode != lOther$isVacationMode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bio = bio;
    final l$country = country;
    final l$displayName = displayName;
    final l$dob = dob;
    final l$firstName = firstName;
    final l$gender = gender;
    final l$lastName = lastName;
    final l$otp = otp;
    final l$phoneNumber = phoneNumber;
    final l$postCode = postCode;
    final l$profilePicture = profilePicture;
    final l$use2fa = use2fa;
    final l$username = username;
    final l$location = location;
    final l$fcmToken = fcmToken;
    final l$isVacationMode = isVacationMode;
    return Object.hashAll([
      _$data.containsKey('bio') ? l$bio : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('displayName') ? l$displayName : const {},
      _$data.containsKey('dob') ? l$dob : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('otp') ? l$otp : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('postCode') ? l$postCode : const {},
      _$data.containsKey('profilePicture') ? l$profilePicture : const {},
      _$data.containsKey('use2fa') ? l$use2fa : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('fcmToken') ? l$fcmToken : const {},
      _$data.containsKey('isVacationMode') ? l$isVacationMode : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfile(
    Variables$Mutation$UpdateProfile instance,
    TRes Function(Variables$Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfile;

  factory CopyWith$Variables$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfile;

  TRes call({
    String? bio,
    String? country,
    String? displayName,
    String? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    Input$ProfilePictureInputType? profilePicture,
    bool? use2fa,
    String? username,
    Input$LocationInputType? location,
    String? fcmToken,
    bool? isVacationMode,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfile _instance;

  final TRes Function(Variables$Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bio = _undefined,
    Object? country = _undefined,
    Object? displayName = _undefined,
    Object? dob = _undefined,
    Object? firstName = _undefined,
    Object? gender = _undefined,
    Object? lastName = _undefined,
    Object? otp = _undefined,
    Object? phoneNumber = _undefined,
    Object? postCode = _undefined,
    Object? profilePicture = _undefined,
    Object? use2fa = _undefined,
    Object? username = _undefined,
    Object? location = _undefined,
    Object? fcmToken = _undefined,
    Object? isVacationMode = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProfile._({
        ..._instance._$data,
        if (bio != _undefined) 'bio': (bio as String?),
        if (country != _undefined) 'country': (country as String?),
        if (displayName != _undefined) 'displayName': (displayName as String?),
        if (dob != _undefined) 'dob': (dob as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (gender != _undefined) 'gender': (gender as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (otp != _undefined) 'otp': (otp as String?),
        if (phoneNumber != _undefined)
          'phoneNumber': (phoneNumber as Input$PhoneInputType?),
        if (postCode != _undefined) 'postCode': (postCode as String?),
        if (profilePicture != _undefined)
          'profilePicture': (profilePicture as Input$ProfilePictureInputType?),
        if (use2fa != _undefined) 'use2fa': (use2fa as bool?),
        if (username != _undefined) 'username': (username as String?),
        if (location != _undefined)
          'location': (location as Input$LocationInputType?),
        if (fcmToken != _undefined) 'fcmToken': (fcmToken as String?),
        if (isVacationMode != _undefined)
          'isVacationMode': (isVacationMode as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({
    String? bio,
    String? country,
    String? displayName,
    String? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    Input$ProfilePictureInputType? profilePicture,
    bool? use2fa,
    String? username,
    Input$LocationInputType? location,
    String? fcmToken,
    bool? isVacationMode,
  }) =>
      _res;
}

class Mutation$UpdateProfile {
  Mutation$UpdateProfile({
    this.updateProfile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProfile.fromJson(Map<String, dynamic> json) {
    final l$updateProfile = json['updateProfile'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile(
      updateProfile: l$updateProfile == null
          ? null
          : Mutation$UpdateProfile$updateProfile.fromJson(
              (l$updateProfile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProfile$updateProfile? updateProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateProfile = updateProfile;
    _resultData['updateProfile'] = l$updateProfile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateProfile = updateProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateProfile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateProfile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateProfile = updateProfile;
    final lOther$updateProfile = other.updateProfile;
    if (l$updateProfile != lOther$updateProfile) {
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

extension UtilityExtension$Mutation$UpdateProfile on Mutation$UpdateProfile {
  CopyWith$Mutation$UpdateProfile<Mutation$UpdateProfile> get copyWith =>
      CopyWith$Mutation$UpdateProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Mutation$UpdateProfile(
    Mutation$UpdateProfile instance,
    TRes Function(Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile;

  factory CopyWith$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile;

  TRes call({
    Mutation$UpdateProfile$updateProfile? updateProfile,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProfile$updateProfile<TRes> get updateProfile;
}

class _CopyWithImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile _instance;

  final TRes Function(Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateProfile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfile(
        updateProfile: updateProfile == _undefined
            ? _instance.updateProfile
            : (updateProfile as Mutation$UpdateProfile$updateProfile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateProfile$updateProfile<TRes> get updateProfile {
    final local$updateProfile = _instance.updateProfile;
    return local$updateProfile == null
        ? CopyWith$Mutation$UpdateProfile$updateProfile.stub(_then(_instance))
        : CopyWith$Mutation$UpdateProfile$updateProfile(
            local$updateProfile, (e) => call(updateProfile: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({
    Mutation$UpdateProfile$updateProfile? updateProfile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateProfile$updateProfile<TRes> get updateProfile =>
      CopyWith$Mutation$UpdateProfile$updateProfile.stub(_res);
}

const documentNodeMutationUpdateProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bio')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'country')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'displayName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dob')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'otp')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phoneNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'PhoneInputType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'profilePicture')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProfilePictureInputType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'use2fa')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
        variable: VariableNode(name: NameNode(value: 'location')),
        type: NamedTypeNode(
          name: NameNode(value: 'LocationInputType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmToken')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isVacationMode')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateProfile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'bio'),
            value: VariableNode(name: NameNode(value: 'bio')),
          ),
          ArgumentNode(
            name: NameNode(value: 'country'),
            value: VariableNode(name: NameNode(value: 'country')),
          ),
          ArgumentNode(
            name: NameNode(value: 'displayName'),
            value: VariableNode(name: NameNode(value: 'displayName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'dob'),
            value: VariableNode(name: NameNode(value: 'dob')),
          ),
          ArgumentNode(
            name: NameNode(value: 'firstName'),
            value: VariableNode(name: NameNode(value: 'firstName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'gender'),
            value: VariableNode(name: NameNode(value: 'gender')),
          ),
          ArgumentNode(
            name: NameNode(value: 'lastName'),
            value: VariableNode(name: NameNode(value: 'lastName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'otp'),
            value: VariableNode(name: NameNode(value: 'otp')),
          ),
          ArgumentNode(
            name: NameNode(value: 'phoneNumber'),
            value: VariableNode(name: NameNode(value: 'phoneNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'postcode'),
            value: VariableNode(name: NameNode(value: 'postCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'profilePicture'),
            value: VariableNode(name: NameNode(value: 'profilePicture')),
          ),
          ArgumentNode(
            name: NameNode(value: 'use2fa'),
            value: VariableNode(name: NameNode(value: 'use2fa')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
          ArgumentNode(
            name: NameNode(value: 'location'),
            value: VariableNode(name: NameNode(value: 'location')),
          ),
          ArgumentNode(
            name: NameNode(value: 'fcmToken'),
            value: VariableNode(name: NameNode(value: 'fcmToken')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isVacationMode'),
            value: VariableNode(name: NameNode(value: 'isVacationMode')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$UpdateProfile _parserFn$Mutation$UpdateProfile(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfile.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfile?,
);

class Options$Mutation$UpdateProfile
    extends graphql.MutationOptions<Mutation$UpdateProfile> {
  Options$Mutation$UpdateProfile({
    String? operationName,
    Variables$Mutation$UpdateProfile? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfile>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProfile(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfile,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );

  final OnMutationCompleted$Mutation$UpdateProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfile
    extends graphql.WatchQueryOptions<Mutation$UpdateProfile> {
  WatchOptions$Mutation$UpdateProfile({
    String? operationName,
    Variables$Mutation$UpdateProfile? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );
}

extension ClientExtension$Mutation$UpdateProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfile>> mutate$UpdateProfile(
          [Options$Mutation$UpdateProfile? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateProfile());
  graphql.ObservableQuery<Mutation$UpdateProfile> watchMutation$UpdateProfile(
          [WatchOptions$Mutation$UpdateProfile? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateProfile());
}

class Mutation$UpdateProfile$updateProfile {
  Mutation$UpdateProfile$updateProfile({
    this.message,
    this.$__typename = 'UpdateUserMutation',
  });

  factory Mutation$UpdateProfile$updateProfile.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile$updateProfile(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateProfile$updateProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$UpdateProfile$updateProfile
    on Mutation$UpdateProfile$updateProfile {
  CopyWith$Mutation$UpdateProfile$updateProfile<
          Mutation$UpdateProfile$updateProfile>
      get copyWith => CopyWith$Mutation$UpdateProfile$updateProfile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$updateProfile<TRes> {
  factory CopyWith$Mutation$UpdateProfile$updateProfile(
    Mutation$UpdateProfile$updateProfile instance,
    TRes Function(Mutation$UpdateProfile$updateProfile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$updateProfile;

  factory CopyWith$Mutation$UpdateProfile$updateProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$updateProfile;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateProfile$updateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile$updateProfile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$updateProfile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$updateProfile _instance;

  final TRes Function(Mutation$UpdateProfile$updateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfile$updateProfile(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$updateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile$updateProfile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$updateProfile(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$followUser {
  factory Variables$Mutation$followUser({required int followedId}) =>
      Variables$Mutation$followUser._({
        r'followedId': followedId,
      });

  Variables$Mutation$followUser._(this._$data);

  factory Variables$Mutation$followUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$followedId = data['followedId'];
    result$data['followedId'] = (l$followedId as int);
    return Variables$Mutation$followUser._(result$data);
  }

  Map<String, dynamic> _$data;

  int get followedId => (_$data['followedId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$followedId = followedId;
    result$data['followedId'] = l$followedId;
    return result$data;
  }

  CopyWith$Variables$Mutation$followUser<Variables$Mutation$followUser>
      get copyWith => CopyWith$Variables$Mutation$followUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$followUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$followedId = followedId;
    final lOther$followedId = other.followedId;
    if (l$followedId != lOther$followedId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$followedId = followedId;
    return Object.hashAll([l$followedId]);
  }
}

abstract class CopyWith$Variables$Mutation$followUser<TRes> {
  factory CopyWith$Variables$Mutation$followUser(
    Variables$Mutation$followUser instance,
    TRes Function(Variables$Mutation$followUser) then,
  ) = _CopyWithImpl$Variables$Mutation$followUser;

  factory CopyWith$Variables$Mutation$followUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$followUser;

  TRes call({int? followedId});
}

class _CopyWithImpl$Variables$Mutation$followUser<TRes>
    implements CopyWith$Variables$Mutation$followUser<TRes> {
  _CopyWithImpl$Variables$Mutation$followUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$followUser _instance;

  final TRes Function(Variables$Mutation$followUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? followedId = _undefined}) =>
      _then(Variables$Mutation$followUser._({
        ..._instance._$data,
        if (followedId != _undefined && followedId != null)
          'followedId': (followedId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$followUser<TRes>
    implements CopyWith$Variables$Mutation$followUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$followUser(this._res);

  TRes _res;

  call({int? followedId}) => _res;
}

class Mutation$followUser {
  Mutation$followUser({
    this.followUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$followUser.fromJson(Map<String, dynamic> json) {
    final l$followUser = json['followUser'];
    final l$$__typename = json['__typename'];
    return Mutation$followUser(
      followUser: l$followUser == null
          ? null
          : Mutation$followUser$followUser.fromJson(
              (l$followUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$followUser$followUser? followUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followUser = followUser;
    _resultData['followUser'] = l$followUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followUser = followUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$followUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$followUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$followUser = followUser;
    final lOther$followUser = other.followUser;
    if (l$followUser != lOther$followUser) {
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

extension UtilityExtension$Mutation$followUser on Mutation$followUser {
  CopyWith$Mutation$followUser<Mutation$followUser> get copyWith =>
      CopyWith$Mutation$followUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$followUser<TRes> {
  factory CopyWith$Mutation$followUser(
    Mutation$followUser instance,
    TRes Function(Mutation$followUser) then,
  ) = _CopyWithImpl$Mutation$followUser;

  factory CopyWith$Mutation$followUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$followUser;

  TRes call({
    Mutation$followUser$followUser? followUser,
    String? $__typename,
  });
  CopyWith$Mutation$followUser$followUser<TRes> get followUser;
}

class _CopyWithImpl$Mutation$followUser<TRes>
    implements CopyWith$Mutation$followUser<TRes> {
  _CopyWithImpl$Mutation$followUser(
    this._instance,
    this._then,
  );

  final Mutation$followUser _instance;

  final TRes Function(Mutation$followUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$followUser(
        followUser: followUser == _undefined
            ? _instance.followUser
            : (followUser as Mutation$followUser$followUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$followUser$followUser<TRes> get followUser {
    final local$followUser = _instance.followUser;
    return local$followUser == null
        ? CopyWith$Mutation$followUser$followUser.stub(_then(_instance))
        : CopyWith$Mutation$followUser$followUser(
            local$followUser, (e) => call(followUser: e));
  }
}

class _CopyWithStubImpl$Mutation$followUser<TRes>
    implements CopyWith$Mutation$followUser<TRes> {
  _CopyWithStubImpl$Mutation$followUser(this._res);

  TRes _res;

  call({
    Mutation$followUser$followUser? followUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$followUser$followUser<TRes> get followUser =>
      CopyWith$Mutation$followUser$followUser.stub(_res);
}

const documentNodeMutationfollowUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'followUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'followedId')),
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
        name: NameNode(value: 'followUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'followedId'),
            value: VariableNode(name: NameNode(value: 'followedId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$followUser _parserFn$Mutation$followUser(Map<String, dynamic> data) =>
    Mutation$followUser.fromJson(data);
typedef OnMutationCompleted$Mutation$followUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$followUser?,
);

class Options$Mutation$followUser
    extends graphql.MutationOptions<Mutation$followUser> {
  Options$Mutation$followUser({
    String? operationName,
    required Variables$Mutation$followUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$followUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$followUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$followUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$followUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationfollowUser,
          parserFn: _parserFn$Mutation$followUser,
        );

  final OnMutationCompleted$Mutation$followUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$followUser
    extends graphql.WatchQueryOptions<Mutation$followUser> {
  WatchOptions$Mutation$followUser({
    String? operationName,
    required Variables$Mutation$followUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$followUser? typedOptimisticResult,
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
          document: documentNodeMutationfollowUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$followUser,
        );
}

extension ClientExtension$Mutation$followUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$followUser>> mutate$followUser(
          Options$Mutation$followUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$followUser> watchMutation$followUser(
          WatchOptions$Mutation$followUser options) =>
      this.watchMutation(options);
}

class Mutation$followUser$followUser {
  Mutation$followUser$followUser({
    this.success,
    this.$__typename = 'FollowUser',
  });

  factory Mutation$followUser$followUser.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$followUser$followUser(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$followUser$followUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$followUser$followUser
    on Mutation$followUser$followUser {
  CopyWith$Mutation$followUser$followUser<Mutation$followUser$followUser>
      get copyWith => CopyWith$Mutation$followUser$followUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$followUser$followUser<TRes> {
  factory CopyWith$Mutation$followUser$followUser(
    Mutation$followUser$followUser instance,
    TRes Function(Mutation$followUser$followUser) then,
  ) = _CopyWithImpl$Mutation$followUser$followUser;

  factory CopyWith$Mutation$followUser$followUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$followUser$followUser;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$followUser$followUser<TRes>
    implements CopyWith$Mutation$followUser$followUser<TRes> {
  _CopyWithImpl$Mutation$followUser$followUser(
    this._instance,
    this._then,
  );

  final Mutation$followUser$followUser _instance;

  final TRes Function(Mutation$followUser$followUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$followUser$followUser(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$followUser$followUser<TRes>
    implements CopyWith$Mutation$followUser$followUser<TRes> {
  _CopyWithStubImpl$Mutation$followUser$followUser(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$unfollowUser {
  factory Variables$Mutation$unfollowUser({required int followedId}) =>
      Variables$Mutation$unfollowUser._({
        r'followedId': followedId,
      });

  Variables$Mutation$unfollowUser._(this._$data);

  factory Variables$Mutation$unfollowUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$followedId = data['followedId'];
    result$data['followedId'] = (l$followedId as int);
    return Variables$Mutation$unfollowUser._(result$data);
  }

  Map<String, dynamic> _$data;

  int get followedId => (_$data['followedId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$followedId = followedId;
    result$data['followedId'] = l$followedId;
    return result$data;
  }

  CopyWith$Variables$Mutation$unfollowUser<Variables$Mutation$unfollowUser>
      get copyWith => CopyWith$Variables$Mutation$unfollowUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$unfollowUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$followedId = followedId;
    final lOther$followedId = other.followedId;
    if (l$followedId != lOther$followedId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$followedId = followedId;
    return Object.hashAll([l$followedId]);
  }
}

abstract class CopyWith$Variables$Mutation$unfollowUser<TRes> {
  factory CopyWith$Variables$Mutation$unfollowUser(
    Variables$Mutation$unfollowUser instance,
    TRes Function(Variables$Mutation$unfollowUser) then,
  ) = _CopyWithImpl$Variables$Mutation$unfollowUser;

  factory CopyWith$Variables$Mutation$unfollowUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$unfollowUser;

  TRes call({int? followedId});
}

class _CopyWithImpl$Variables$Mutation$unfollowUser<TRes>
    implements CopyWith$Variables$Mutation$unfollowUser<TRes> {
  _CopyWithImpl$Variables$Mutation$unfollowUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$unfollowUser _instance;

  final TRes Function(Variables$Mutation$unfollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? followedId = _undefined}) =>
      _then(Variables$Mutation$unfollowUser._({
        ..._instance._$data,
        if (followedId != _undefined && followedId != null)
          'followedId': (followedId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$unfollowUser<TRes>
    implements CopyWith$Variables$Mutation$unfollowUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$unfollowUser(this._res);

  TRes _res;

  call({int? followedId}) => _res;
}

class Mutation$unfollowUser {
  Mutation$unfollowUser({
    this.unfollowUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$unfollowUser.fromJson(Map<String, dynamic> json) {
    final l$unfollowUser = json['unfollowUser'];
    final l$$__typename = json['__typename'];
    return Mutation$unfollowUser(
      unfollowUser: l$unfollowUser == null
          ? null
          : Mutation$unfollowUser$unfollowUser.fromJson(
              (l$unfollowUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$unfollowUser$unfollowUser? unfollowUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unfollowUser = unfollowUser;
    _resultData['unfollowUser'] = l$unfollowUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unfollowUser = unfollowUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unfollowUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$unfollowUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$unfollowUser = unfollowUser;
    final lOther$unfollowUser = other.unfollowUser;
    if (l$unfollowUser != lOther$unfollowUser) {
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

extension UtilityExtension$Mutation$unfollowUser on Mutation$unfollowUser {
  CopyWith$Mutation$unfollowUser<Mutation$unfollowUser> get copyWith =>
      CopyWith$Mutation$unfollowUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$unfollowUser<TRes> {
  factory CopyWith$Mutation$unfollowUser(
    Mutation$unfollowUser instance,
    TRes Function(Mutation$unfollowUser) then,
  ) = _CopyWithImpl$Mutation$unfollowUser;

  factory CopyWith$Mutation$unfollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$unfollowUser;

  TRes call({
    Mutation$unfollowUser$unfollowUser? unfollowUser,
    String? $__typename,
  });
  CopyWith$Mutation$unfollowUser$unfollowUser<TRes> get unfollowUser;
}

class _CopyWithImpl$Mutation$unfollowUser<TRes>
    implements CopyWith$Mutation$unfollowUser<TRes> {
  _CopyWithImpl$Mutation$unfollowUser(
    this._instance,
    this._then,
  );

  final Mutation$unfollowUser _instance;

  final TRes Function(Mutation$unfollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unfollowUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$unfollowUser(
        unfollowUser: unfollowUser == _undefined
            ? _instance.unfollowUser
            : (unfollowUser as Mutation$unfollowUser$unfollowUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$unfollowUser$unfollowUser<TRes> get unfollowUser {
    final local$unfollowUser = _instance.unfollowUser;
    return local$unfollowUser == null
        ? CopyWith$Mutation$unfollowUser$unfollowUser.stub(_then(_instance))
        : CopyWith$Mutation$unfollowUser$unfollowUser(
            local$unfollowUser, (e) => call(unfollowUser: e));
  }
}

class _CopyWithStubImpl$Mutation$unfollowUser<TRes>
    implements CopyWith$Mutation$unfollowUser<TRes> {
  _CopyWithStubImpl$Mutation$unfollowUser(this._res);

  TRes _res;

  call({
    Mutation$unfollowUser$unfollowUser? unfollowUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$unfollowUser$unfollowUser<TRes> get unfollowUser =>
      CopyWith$Mutation$unfollowUser$unfollowUser.stub(_res);
}

const documentNodeMutationunfollowUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'unfollowUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'followedId')),
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
        name: NameNode(value: 'unfollowUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'followedId'),
            value: VariableNode(name: NameNode(value: 'followedId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$unfollowUser _parserFn$Mutation$unfollowUser(
        Map<String, dynamic> data) =>
    Mutation$unfollowUser.fromJson(data);
typedef OnMutationCompleted$Mutation$unfollowUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$unfollowUser?,
);

class Options$Mutation$unfollowUser
    extends graphql.MutationOptions<Mutation$unfollowUser> {
  Options$Mutation$unfollowUser({
    String? operationName,
    required Variables$Mutation$unfollowUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$unfollowUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$unfollowUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$unfollowUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$unfollowUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationunfollowUser,
          parserFn: _parserFn$Mutation$unfollowUser,
        );

  final OnMutationCompleted$Mutation$unfollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$unfollowUser
    extends graphql.WatchQueryOptions<Mutation$unfollowUser> {
  WatchOptions$Mutation$unfollowUser({
    String? operationName,
    required Variables$Mutation$unfollowUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$unfollowUser? typedOptimisticResult,
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
          document: documentNodeMutationunfollowUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$unfollowUser,
        );
}

extension ClientExtension$Mutation$unfollowUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$unfollowUser>> mutate$unfollowUser(
          Options$Mutation$unfollowUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$unfollowUser> watchMutation$unfollowUser(
          WatchOptions$Mutation$unfollowUser options) =>
      this.watchMutation(options);
}

class Mutation$unfollowUser$unfollowUser {
  Mutation$unfollowUser$unfollowUser({
    this.success,
    this.$__typename = 'UnfollowUser',
  });

  factory Mutation$unfollowUser$unfollowUser.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$unfollowUser$unfollowUser(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$unfollowUser$unfollowUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$unfollowUser$unfollowUser
    on Mutation$unfollowUser$unfollowUser {
  CopyWith$Mutation$unfollowUser$unfollowUser<
          Mutation$unfollowUser$unfollowUser>
      get copyWith => CopyWith$Mutation$unfollowUser$unfollowUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$unfollowUser$unfollowUser<TRes> {
  factory CopyWith$Mutation$unfollowUser$unfollowUser(
    Mutation$unfollowUser$unfollowUser instance,
    TRes Function(Mutation$unfollowUser$unfollowUser) then,
  ) = _CopyWithImpl$Mutation$unfollowUser$unfollowUser;

  factory CopyWith$Mutation$unfollowUser$unfollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$unfollowUser$unfollowUser;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$unfollowUser$unfollowUser<TRes>
    implements CopyWith$Mutation$unfollowUser$unfollowUser<TRes> {
  _CopyWithImpl$Mutation$unfollowUser$unfollowUser(
    this._instance,
    this._then,
  );

  final Mutation$unfollowUser$unfollowUser _instance;

  final TRes Function(Mutation$unfollowUser$unfollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$unfollowUser$unfollowUser(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$unfollowUser$unfollowUser<TRes>
    implements CopyWith$Mutation$unfollowUser$unfollowUser<TRes> {
  _CopyWithStubImpl$Mutation$unfollowUser$unfollowUser(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UploadFile {
  factory Variables$Mutation$UploadFile({
    required List<MultipartFile?> files,
    required Enum$FileTypeEnum fileType,
  }) =>
      Variables$Mutation$UploadFile._({
        r'files': files,
        r'fileType': fileType,
      });

  Variables$Mutation$UploadFile._(this._$data);

  factory Variables$Mutation$UploadFile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$files = data['files'];
    result$data['files'] =
        (l$files as List<dynamic>).map((e) => (e as MultipartFile?)).toList();
    final l$fileType = data['fileType'];
    result$data['fileType'] =
        fromJson$Enum$FileTypeEnum((l$fileType as String));
    return Variables$Mutation$UploadFile._(result$data);
  }

  Map<String, dynamic> _$data;

  List<MultipartFile?> get files => (_$data['files'] as List<MultipartFile?>);

  Enum$FileTypeEnum get fileType => (_$data['fileType'] as Enum$FileTypeEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$files = files;
    result$data['files'] = l$files.map((e) => e).toList();
    final l$fileType = fileType;
    result$data['fileType'] = toJson$Enum$FileTypeEnum(l$fileType);
    return result$data;
  }

  CopyWith$Variables$Mutation$UploadFile<Variables$Mutation$UploadFile>
      get copyWith => CopyWith$Variables$Mutation$UploadFile(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UploadFile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (l$files.length != lOther$files.length) {
      return false;
    }
    for (int i = 0; i < l$files.length; i++) {
      final l$files$entry = l$files[i];
      final lOther$files$entry = lOther$files[i];
      if (l$files$entry != lOther$files$entry) {
        return false;
      }
    }
    final l$fileType = fileType;
    final lOther$fileType = other.fileType;
    if (l$fileType != lOther$fileType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$files = files;
    final l$fileType = fileType;
    return Object.hashAll([
      Object.hashAll(l$files.map((v) => v)),
      l$fileType,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UploadFile<TRes> {
  factory CopyWith$Variables$Mutation$UploadFile(
    Variables$Mutation$UploadFile instance,
    TRes Function(Variables$Mutation$UploadFile) then,
  ) = _CopyWithImpl$Variables$Mutation$UploadFile;

  factory CopyWith$Variables$Mutation$UploadFile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UploadFile;

  TRes call({
    List<MultipartFile?>? files,
    Enum$FileTypeEnum? fileType,
  });
}

class _CopyWithImpl$Variables$Mutation$UploadFile<TRes>
    implements CopyWith$Variables$Mutation$UploadFile<TRes> {
  _CopyWithImpl$Variables$Mutation$UploadFile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UploadFile _instance;

  final TRes Function(Variables$Mutation$UploadFile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? files = _undefined,
    Object? fileType = _undefined,
  }) =>
      _then(Variables$Mutation$UploadFile._({
        ..._instance._$data,
        if (files != _undefined && files != null)
          'files': (files as List<MultipartFile?>),
        if (fileType != _undefined && fileType != null)
          'fileType': (fileType as Enum$FileTypeEnum),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UploadFile<TRes>
    implements CopyWith$Variables$Mutation$UploadFile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UploadFile(this._res);

  TRes _res;

  call({
    List<MultipartFile?>? files,
    Enum$FileTypeEnum? fileType,
  }) =>
      _res;
}

class Mutation$UploadFile {
  Mutation$UploadFile({
    this.upload,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UploadFile.fromJson(Map<String, dynamic> json) {
    final l$upload = json['upload'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFile(
      upload: l$upload == null
          ? null
          : Mutation$UploadFile$upload.fromJson(
              (l$upload as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UploadFile$upload? upload;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upload = upload;
    _resultData['upload'] = l$upload?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upload = upload;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$upload,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$upload = upload;
    final lOther$upload = other.upload;
    if (l$upload != lOther$upload) {
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

extension UtilityExtension$Mutation$UploadFile on Mutation$UploadFile {
  CopyWith$Mutation$UploadFile<Mutation$UploadFile> get copyWith =>
      CopyWith$Mutation$UploadFile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UploadFile<TRes> {
  factory CopyWith$Mutation$UploadFile(
    Mutation$UploadFile instance,
    TRes Function(Mutation$UploadFile) then,
  ) = _CopyWithImpl$Mutation$UploadFile;

  factory CopyWith$Mutation$UploadFile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFile;

  TRes call({
    Mutation$UploadFile$upload? upload,
    String? $__typename,
  });
  CopyWith$Mutation$UploadFile$upload<TRes> get upload;
}

class _CopyWithImpl$Mutation$UploadFile<TRes>
    implements CopyWith$Mutation$UploadFile<TRes> {
  _CopyWithImpl$Mutation$UploadFile(
    this._instance,
    this._then,
  );

  final Mutation$UploadFile _instance;

  final TRes Function(Mutation$UploadFile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upload = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadFile(
        upload: upload == _undefined
            ? _instance.upload
            : (upload as Mutation$UploadFile$upload?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UploadFile$upload<TRes> get upload {
    final local$upload = _instance.upload;
    return local$upload == null
        ? CopyWith$Mutation$UploadFile$upload.stub(_then(_instance))
        : CopyWith$Mutation$UploadFile$upload(
            local$upload, (e) => call(upload: e));
  }
}

class _CopyWithStubImpl$Mutation$UploadFile<TRes>
    implements CopyWith$Mutation$UploadFile<TRes> {
  _CopyWithStubImpl$Mutation$UploadFile(this._res);

  TRes _res;

  call({
    Mutation$UploadFile$upload? upload,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UploadFile$upload<TRes> get upload =>
      CopyWith$Mutation$UploadFile$upload.stub(_res);
}

const documentNodeMutationUploadFile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UploadFile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'files')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Upload'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fileType')),
        type: NamedTypeNode(
          name: NameNode(value: 'FileTypeEnum'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'upload'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'files'),
            value: VariableNode(name: NameNode(value: 'files')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filetype'),
            value: VariableNode(name: NameNode(value: 'fileType')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'baseUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'data'),
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
Mutation$UploadFile _parserFn$Mutation$UploadFile(Map<String, dynamic> data) =>
    Mutation$UploadFile.fromJson(data);
typedef OnMutationCompleted$Mutation$UploadFile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UploadFile?,
);

class Options$Mutation$UploadFile
    extends graphql.MutationOptions<Mutation$UploadFile> {
  Options$Mutation$UploadFile({
    String? operationName,
    required Variables$Mutation$UploadFile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UploadFile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UploadFile>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UploadFile(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUploadFile,
          parserFn: _parserFn$Mutation$UploadFile,
        );

  final OnMutationCompleted$Mutation$UploadFile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UploadFile
    extends graphql.WatchQueryOptions<Mutation$UploadFile> {
  WatchOptions$Mutation$UploadFile({
    String? operationName,
    required Variables$Mutation$UploadFile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UploadFile? typedOptimisticResult,
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
          document: documentNodeMutationUploadFile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UploadFile,
        );
}

extension ClientExtension$Mutation$UploadFile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UploadFile>> mutate$UploadFile(
          Options$Mutation$UploadFile options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UploadFile> watchMutation$UploadFile(
          WatchOptions$Mutation$UploadFile options) =>
      this.watchMutation(options);
}

class Mutation$UploadFile$upload {
  Mutation$UploadFile$upload({
    this.baseUrl,
    this.data,
    this.$__typename = 'UploadPictures',
  });

  factory Mutation$UploadFile$upload.fromJson(Map<String, dynamic> json) {
    final l$baseUrl = json['baseUrl'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFile$upload(
      baseUrl: (l$baseUrl as String?),
      data: (l$data as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? baseUrl;

  final List<String?>? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$baseUrl = baseUrl;
    _resultData['baseUrl'] = l$baseUrl;
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$baseUrl = baseUrl;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$baseUrl,
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFile$upload ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$baseUrl = baseUrl;
    final lOther$baseUrl = other.baseUrl;
    if (l$baseUrl != lOther$baseUrl) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$UploadFile$upload
    on Mutation$UploadFile$upload {
  CopyWith$Mutation$UploadFile$upload<Mutation$UploadFile$upload>
      get copyWith => CopyWith$Mutation$UploadFile$upload(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UploadFile$upload<TRes> {
  factory CopyWith$Mutation$UploadFile$upload(
    Mutation$UploadFile$upload instance,
    TRes Function(Mutation$UploadFile$upload) then,
  ) = _CopyWithImpl$Mutation$UploadFile$upload;

  factory CopyWith$Mutation$UploadFile$upload.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFile$upload;

  TRes call({
    String? baseUrl,
    List<String?>? data,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UploadFile$upload<TRes>
    implements CopyWith$Mutation$UploadFile$upload<TRes> {
  _CopyWithImpl$Mutation$UploadFile$upload(
    this._instance,
    this._then,
  );

  final Mutation$UploadFile$upload _instance;

  final TRes Function(Mutation$UploadFile$upload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? baseUrl = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadFile$upload(
        baseUrl:
            baseUrl == _undefined ? _instance.baseUrl : (baseUrl as String?),
        data: data == _undefined ? _instance.data : (data as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UploadFile$upload<TRes>
    implements CopyWith$Mutation$UploadFile$upload<TRes> {
  _CopyWithStubImpl$Mutation$UploadFile$upload(this._res);

  TRes _res;

  call({
    String? baseUrl,
    List<String?>? data,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateChat {
  factory Variables$Mutation$CreateChat({required String recipient}) =>
      Variables$Mutation$CreateChat._({
        r'recipient': recipient,
      });

  Variables$Mutation$CreateChat._(this._$data);

  factory Variables$Mutation$CreateChat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recipient = data['recipient'];
    result$data['recipient'] = (l$recipient as String);
    return Variables$Mutation$CreateChat._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recipient => (_$data['recipient'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recipient = recipient;
    result$data['recipient'] = l$recipient;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateChat<Variables$Mutation$CreateChat>
      get copyWith => CopyWith$Variables$Mutation$CreateChat(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateChat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recipient = recipient;
    return Object.hashAll([l$recipient]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateChat<TRes> {
  factory CopyWith$Variables$Mutation$CreateChat(
    Variables$Mutation$CreateChat instance,
    TRes Function(Variables$Mutation$CreateChat) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateChat;

  factory CopyWith$Variables$Mutation$CreateChat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateChat;

  TRes call({String? recipient});
}

class _CopyWithImpl$Variables$Mutation$CreateChat<TRes>
    implements CopyWith$Variables$Mutation$CreateChat<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateChat(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateChat _instance;

  final TRes Function(Variables$Mutation$CreateChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? recipient = _undefined}) =>
      _then(Variables$Mutation$CreateChat._({
        ..._instance._$data,
        if (recipient != _undefined && recipient != null)
          'recipient': (recipient as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateChat<TRes>
    implements CopyWith$Variables$Mutation$CreateChat<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateChat(this._res);

  TRes _res;

  call({String? recipient}) => _res;
}

class Mutation$CreateChat {
  Mutation$CreateChat({
    this.createChat,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateChat.fromJson(Map<String, dynamic> json) {
    final l$createChat = json['createChat'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChat(
      createChat: l$createChat == null
          ? null
          : Mutation$CreateChat$createChat.fromJson(
              (l$createChat as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateChat$createChat? createChat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createChat = createChat;
    _resultData['createChat'] = l$createChat?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createChat = createChat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createChat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateChat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createChat = createChat;
    final lOther$createChat = other.createChat;
    if (l$createChat != lOther$createChat) {
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

extension UtilityExtension$Mutation$CreateChat on Mutation$CreateChat {
  CopyWith$Mutation$CreateChat<Mutation$CreateChat> get copyWith =>
      CopyWith$Mutation$CreateChat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateChat<TRes> {
  factory CopyWith$Mutation$CreateChat(
    Mutation$CreateChat instance,
    TRes Function(Mutation$CreateChat) then,
  ) = _CopyWithImpl$Mutation$CreateChat;

  factory CopyWith$Mutation$CreateChat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChat;

  TRes call({
    Mutation$CreateChat$createChat? createChat,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChat$createChat<TRes> get createChat;
}

class _CopyWithImpl$Mutation$CreateChat<TRes>
    implements CopyWith$Mutation$CreateChat<TRes> {
  _CopyWithImpl$Mutation$CreateChat(
    this._instance,
    this._then,
  );

  final Mutation$CreateChat _instance;

  final TRes Function(Mutation$CreateChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createChat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChat(
        createChat: createChat == _undefined
            ? _instance.createChat
            : (createChat as Mutation$CreateChat$createChat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateChat$createChat<TRes> get createChat {
    final local$createChat = _instance.createChat;
    return local$createChat == null
        ? CopyWith$Mutation$CreateChat$createChat.stub(_then(_instance))
        : CopyWith$Mutation$CreateChat$createChat(
            local$createChat, (e) => call(createChat: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChat<TRes>
    implements CopyWith$Mutation$CreateChat<TRes> {
  _CopyWithStubImpl$Mutation$CreateChat(this._res);

  TRes _res;

  call({
    Mutation$CreateChat$createChat? createChat,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateChat$createChat<TRes> get createChat =>
      CopyWith$Mutation$CreateChat$createChat.stub(_res);
}

const documentNodeMutationCreateChat = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateChat'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipient')),
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
        name: NameNode(value: 'createChat'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'recipient'),
            value: VariableNode(name: NameNode(value: 'recipient')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'chat'),
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
                name: NameNode(value: 'disableResponse'),
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
                name: NameNode(value: 'lastModified'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'participant1Deleted'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'participant2Deleted'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'unreadMessagesCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'recipient'),
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
                    name: NameNode(value: 'displayName'),
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
                    name: NameNode(value: 'thumbnailUrl'),
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
                name: NameNode(value: 'lastMessage'),
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
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'attachment'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'attachmentType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sender'),
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
                        name: NameNode(value: 'thumbnailUrl'),
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
Mutation$CreateChat _parserFn$Mutation$CreateChat(Map<String, dynamic> data) =>
    Mutation$CreateChat.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateChat = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateChat?,
);

class Options$Mutation$CreateChat
    extends graphql.MutationOptions<Mutation$CreateChat> {
  Options$Mutation$CreateChat({
    String? operationName,
    required Variables$Mutation$CreateChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateChat? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateChat? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateChat>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateChat(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateChat,
          parserFn: _parserFn$Mutation$CreateChat,
        );

  final OnMutationCompleted$Mutation$CreateChat? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateChat
    extends graphql.WatchQueryOptions<Mutation$CreateChat> {
  WatchOptions$Mutation$CreateChat({
    String? operationName,
    required Variables$Mutation$CreateChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateChat? typedOptimisticResult,
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
          document: documentNodeMutationCreateChat,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateChat,
        );
}

extension ClientExtension$Mutation$CreateChat on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateChat>> mutate$CreateChat(
          Options$Mutation$CreateChat options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateChat> watchMutation$CreateChat(
          WatchOptions$Mutation$CreateChat options) =>
      this.watchMutation(options);
}

class Mutation$CreateChat$createChat {
  Mutation$CreateChat$createChat({
    this.chat,
    this.$__typename = 'CreateChat',
  });

  factory Mutation$CreateChat$createChat.fromJson(Map<String, dynamic> json) {
    final l$chat = json['chat'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChat$createChat(
      chat: l$chat == null
          ? null
          : Mutation$CreateChat$createChat$chat.fromJson(
              (l$chat as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateChat$createChat$chat? chat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$chat = chat;
    _resultData['chat'] = l$chat?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$chat = chat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$chat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateChat$createChat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$chat = chat;
    final lOther$chat = other.chat;
    if (l$chat != lOther$chat) {
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

extension UtilityExtension$Mutation$CreateChat$createChat
    on Mutation$CreateChat$createChat {
  CopyWith$Mutation$CreateChat$createChat<Mutation$CreateChat$createChat>
      get copyWith => CopyWith$Mutation$CreateChat$createChat(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChat$createChat<TRes> {
  factory CopyWith$Mutation$CreateChat$createChat(
    Mutation$CreateChat$createChat instance,
    TRes Function(Mutation$CreateChat$createChat) then,
  ) = _CopyWithImpl$Mutation$CreateChat$createChat;

  factory CopyWith$Mutation$CreateChat$createChat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChat$createChat;

  TRes call({
    Mutation$CreateChat$createChat$chat? chat,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChat$createChat$chat<TRes> get chat;
}

class _CopyWithImpl$Mutation$CreateChat$createChat<TRes>
    implements CopyWith$Mutation$CreateChat$createChat<TRes> {
  _CopyWithImpl$Mutation$CreateChat$createChat(
    this._instance,
    this._then,
  );

  final Mutation$CreateChat$createChat _instance;

  final TRes Function(Mutation$CreateChat$createChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChat$createChat(
        chat: chat == _undefined
            ? _instance.chat
            : (chat as Mutation$CreateChat$createChat$chat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateChat$createChat$chat<TRes> get chat {
    final local$chat = _instance.chat;
    return local$chat == null
        ? CopyWith$Mutation$CreateChat$createChat$chat.stub(_then(_instance))
        : CopyWith$Mutation$CreateChat$createChat$chat(
            local$chat, (e) => call(chat: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChat$createChat<TRes>
    implements CopyWith$Mutation$CreateChat$createChat<TRes> {
  _CopyWithStubImpl$Mutation$CreateChat$createChat(this._res);

  TRes _res;

  call({
    Mutation$CreateChat$createChat$chat? chat,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateChat$createChat$chat<TRes> get chat =>
      CopyWith$Mutation$CreateChat$createChat$chat.stub(_res);
}

class Mutation$CreateChat$createChat$chat {
  Mutation$CreateChat$createChat$chat({
    required this.id,
    required this.name,
    required this.disableResponse,
    required this.createdAt,
    required this.lastModified,
    required this.participant1Deleted,
    required this.participant2Deleted,
    this.unreadMessagesCount,
    this.recipient,
    this.lastMessage,
    this.$__typename = 'ConversationType',
  });

  factory Mutation$CreateChat$createChat$chat.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$disableResponse = json['disableResponse'];
    final l$createdAt = json['createdAt'];
    final l$lastModified = json['lastModified'];
    final l$participant1Deleted = json['participant1Deleted'];
    final l$participant2Deleted = json['participant2Deleted'];
    final l$unreadMessagesCount = json['unreadMessagesCount'];
    final l$recipient = json['recipient'];
    final l$lastMessage = json['lastMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChat$createChat$chat(
      id: (l$id as String),
      name: (l$name as String),
      disableResponse: (l$disableResponse as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      lastModified: DateTime.parse((l$lastModified as String)),
      participant1Deleted: (l$participant1Deleted as bool),
      participant2Deleted: (l$participant2Deleted as bool),
      unreadMessagesCount: (l$unreadMessagesCount as int?),
      recipient: l$recipient == null
          ? null
          : Mutation$CreateChat$createChat$chat$recipient.fromJson(
              (l$recipient as Map<String, dynamic>)),
      lastMessage: l$lastMessage == null
          ? null
          : Mutation$CreateChat$createChat$chat$lastMessage.fromJson(
              (l$lastMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool disableResponse;

  final DateTime createdAt;

  final DateTime lastModified;

  final bool participant1Deleted;

  final bool participant2Deleted;

  final int? unreadMessagesCount;

  final Mutation$CreateChat$createChat$chat$recipient? recipient;

  final Mutation$CreateChat$createChat$chat$lastMessage? lastMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$disableResponse = disableResponse;
    _resultData['disableResponse'] = l$disableResponse;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$lastModified = lastModified;
    _resultData['lastModified'] = l$lastModified.toIso8601String();
    final l$participant1Deleted = participant1Deleted;
    _resultData['participant1Deleted'] = l$participant1Deleted;
    final l$participant2Deleted = participant2Deleted;
    _resultData['participant2Deleted'] = l$participant2Deleted;
    final l$unreadMessagesCount = unreadMessagesCount;
    _resultData['unreadMessagesCount'] = l$unreadMessagesCount;
    final l$recipient = recipient;
    _resultData['recipient'] = l$recipient?.toJson();
    final l$lastMessage = lastMessage;
    _resultData['lastMessage'] = l$lastMessage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$disableResponse = disableResponse;
    final l$createdAt = createdAt;
    final l$lastModified = lastModified;
    final l$participant1Deleted = participant1Deleted;
    final l$participant2Deleted = participant2Deleted;
    final l$unreadMessagesCount = unreadMessagesCount;
    final l$recipient = recipient;
    final l$lastMessage = lastMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$disableResponse,
      l$createdAt,
      l$lastModified,
      l$participant1Deleted,
      l$participant2Deleted,
      l$unreadMessagesCount,
      l$recipient,
      l$lastMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateChat$createChat$chat ||
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
    final l$disableResponse = disableResponse;
    final lOther$disableResponse = other.disableResponse;
    if (l$disableResponse != lOther$disableResponse) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$lastModified = lastModified;
    final lOther$lastModified = other.lastModified;
    if (l$lastModified != lOther$lastModified) {
      return false;
    }
    final l$participant1Deleted = participant1Deleted;
    final lOther$participant1Deleted = other.participant1Deleted;
    if (l$participant1Deleted != lOther$participant1Deleted) {
      return false;
    }
    final l$participant2Deleted = participant2Deleted;
    final lOther$participant2Deleted = other.participant2Deleted;
    if (l$participant2Deleted != lOther$participant2Deleted) {
      return false;
    }
    final l$unreadMessagesCount = unreadMessagesCount;
    final lOther$unreadMessagesCount = other.unreadMessagesCount;
    if (l$unreadMessagesCount != lOther$unreadMessagesCount) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
      return false;
    }
    final l$lastMessage = lastMessage;
    final lOther$lastMessage = other.lastMessage;
    if (l$lastMessage != lOther$lastMessage) {
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

extension UtilityExtension$Mutation$CreateChat$createChat$chat
    on Mutation$CreateChat$createChat$chat {
  CopyWith$Mutation$CreateChat$createChat$chat<
          Mutation$CreateChat$createChat$chat>
      get copyWith => CopyWith$Mutation$CreateChat$createChat$chat(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChat$createChat$chat<TRes> {
  factory CopyWith$Mutation$CreateChat$createChat$chat(
    Mutation$CreateChat$createChat$chat instance,
    TRes Function(Mutation$CreateChat$createChat$chat) then,
  ) = _CopyWithImpl$Mutation$CreateChat$createChat$chat;

  factory CopyWith$Mutation$CreateChat$createChat$chat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChat$createChat$chat;

  TRes call({
    String? id,
    String? name,
    bool? disableResponse,
    DateTime? createdAt,
    DateTime? lastModified,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    Mutation$CreateChat$createChat$chat$recipient? recipient,
    Mutation$CreateChat$createChat$chat$lastMessage? lastMessage,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChat$createChat$chat$recipient<TRes> get recipient;
  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<TRes>
      get lastMessage;
}

class _CopyWithImpl$Mutation$CreateChat$createChat$chat<TRes>
    implements CopyWith$Mutation$CreateChat$createChat$chat<TRes> {
  _CopyWithImpl$Mutation$CreateChat$createChat$chat(
    this._instance,
    this._then,
  );

  final Mutation$CreateChat$createChat$chat _instance;

  final TRes Function(Mutation$CreateChat$createChat$chat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? disableResponse = _undefined,
    Object? createdAt = _undefined,
    Object? lastModified = _undefined,
    Object? participant1Deleted = _undefined,
    Object? participant2Deleted = _undefined,
    Object? unreadMessagesCount = _undefined,
    Object? recipient = _undefined,
    Object? lastMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChat$createChat$chat(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        disableResponse:
            disableResponse == _undefined || disableResponse == null
                ? _instance.disableResponse
                : (disableResponse as bool),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        lastModified: lastModified == _undefined || lastModified == null
            ? _instance.lastModified
            : (lastModified as DateTime),
        participant1Deleted:
            participant1Deleted == _undefined || participant1Deleted == null
                ? _instance.participant1Deleted
                : (participant1Deleted as bool),
        participant2Deleted:
            participant2Deleted == _undefined || participant2Deleted == null
                ? _instance.participant2Deleted
                : (participant2Deleted as bool),
        unreadMessagesCount: unreadMessagesCount == _undefined
            ? _instance.unreadMessagesCount
            : (unreadMessagesCount as int?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient as Mutation$CreateChat$createChat$chat$recipient?),
        lastMessage: lastMessage == _undefined
            ? _instance.lastMessage
            : (lastMessage as Mutation$CreateChat$createChat$chat$lastMessage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateChat$createChat$chat$recipient<TRes> get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Mutation$CreateChat$createChat$chat$recipient.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateChat$createChat$chat$recipient(
            local$recipient, (e) => call(recipient: e));
  }

  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<TRes>
      get lastMessage {
    final local$lastMessage = _instance.lastMessage;
    return local$lastMessage == null
        ? CopyWith$Mutation$CreateChat$createChat$chat$lastMessage.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateChat$createChat$chat$lastMessage(
            local$lastMessage, (e) => call(lastMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChat$createChat$chat<TRes>
    implements CopyWith$Mutation$CreateChat$createChat$chat<TRes> {
  _CopyWithStubImpl$Mutation$CreateChat$createChat$chat(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? disableResponse,
    DateTime? createdAt,
    DateTime? lastModified,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    Mutation$CreateChat$createChat$chat$recipient? recipient,
    Mutation$CreateChat$createChat$chat$lastMessage? lastMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateChat$createChat$chat$recipient<TRes> get recipient =>
      CopyWith$Mutation$CreateChat$createChat$chat$recipient.stub(_res);

  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<TRes>
      get lastMessage =>
          CopyWith$Mutation$CreateChat$createChat$chat$lastMessage.stub(_res);
}

class Mutation$CreateChat$createChat$chat$recipient {
  Mutation$CreateChat$createChat$chat$recipient({
    this.id,
    this.username,
    this.displayName,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.$__typename = 'UserType',
  });

  factory Mutation$CreateChat$createChat$chat$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$displayName = json['displayName'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChat$createChat$chat$recipient(
      id: (l$id as int?),
      username: (l$username as String?),
      displayName: (l$displayName as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String? displayName;

  final String? profilePictureUrl;

  final String? thumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$displayName = displayName;
    final l$profilePictureUrl = profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$displayName,
      l$profilePictureUrl,
      l$thumbnailUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateChat$createChat$chat$recipient ||
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
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
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

extension UtilityExtension$Mutation$CreateChat$createChat$chat$recipient
    on Mutation$CreateChat$createChat$chat$recipient {
  CopyWith$Mutation$CreateChat$createChat$chat$recipient<
          Mutation$CreateChat$createChat$chat$recipient>
      get copyWith => CopyWith$Mutation$CreateChat$createChat$chat$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChat$createChat$chat$recipient<TRes> {
  factory CopyWith$Mutation$CreateChat$createChat$chat$recipient(
    Mutation$CreateChat$createChat$chat$recipient instance,
    TRes Function(Mutation$CreateChat$createChat$chat$recipient) then,
  ) = _CopyWithImpl$Mutation$CreateChat$createChat$chat$recipient;

  factory CopyWith$Mutation$CreateChat$createChat$chat$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$recipient;

  TRes call({
    int? id,
    String? username,
    String? displayName,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateChat$createChat$chat$recipient<TRes>
    implements CopyWith$Mutation$CreateChat$createChat$chat$recipient<TRes> {
  _CopyWithImpl$Mutation$CreateChat$createChat$chat$recipient(
    this._instance,
    this._then,
  );

  final Mutation$CreateChat$createChat$chat$recipient _instance;

  final TRes Function(Mutation$CreateChat$createChat$chat$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? displayName = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChat$createChat$chat$recipient(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$recipient<TRes>
    implements CopyWith$Mutation$CreateChat$createChat$chat$recipient<TRes> {
  _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$recipient(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? displayName,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateChat$createChat$chat$lastMessage {
  Mutation$CreateChat$createChat$chat$lastMessage({
    required this.id,
    required this.text,
    this.attachment,
    this.attachmentType,
    this.sender,
    this.$__typename = 'MessageType',
  });

  factory Mutation$CreateChat$createChat$chat$lastMessage.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$attachment = json['attachment'];
    final l$attachmentType = json['attachmentType'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChat$createChat$chat$lastMessage(
      id: (l$id as String),
      text: (l$text as String),
      attachment: (l$attachment as String?),
      attachmentType: l$attachmentType == null
          ? null
          : fromJson$Enum$ChatsMessageAttachmentTypeChoices(
              (l$attachmentType as String)),
      sender: l$sender == null
          ? null
          : Mutation$CreateChat$createChat$chat$lastMessage$sender.fromJson(
              (l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String? attachment;

  final Enum$ChatsMessageAttachmentTypeChoices? attachmentType;

  final Mutation$CreateChat$createChat$chat$lastMessage$sender? sender;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$attachment = attachment;
    _resultData['attachment'] = l$attachment;
    final l$attachmentType = attachmentType;
    _resultData['attachmentType'] = l$attachmentType == null
        ? null
        : toJson$Enum$ChatsMessageAttachmentTypeChoices(l$attachmentType);
    final l$sender = sender;
    _resultData['sender'] = l$sender?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$attachment = attachment;
    final l$attachmentType = attachmentType;
    final l$sender = sender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$attachment,
      l$attachmentType,
      l$sender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateChat$createChat$chat$lastMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$attachment = attachment;
    final lOther$attachment = other.attachment;
    if (l$attachment != lOther$attachment) {
      return false;
    }
    final l$attachmentType = attachmentType;
    final lOther$attachmentType = other.attachmentType;
    if (l$attachmentType != lOther$attachmentType) {
      return false;
    }
    final l$sender = sender;
    final lOther$sender = other.sender;
    if (l$sender != lOther$sender) {
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

extension UtilityExtension$Mutation$CreateChat$createChat$chat$lastMessage
    on Mutation$CreateChat$createChat$chat$lastMessage {
  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<
          Mutation$CreateChat$createChat$chat$lastMessage>
      get copyWith => CopyWith$Mutation$CreateChat$createChat$chat$lastMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<TRes> {
  factory CopyWith$Mutation$CreateChat$createChat$chat$lastMessage(
    Mutation$CreateChat$createChat$chat$lastMessage instance,
    TRes Function(Mutation$CreateChat$createChat$chat$lastMessage) then,
  ) = _CopyWithImpl$Mutation$CreateChat$createChat$chat$lastMessage;

  factory CopyWith$Mutation$CreateChat$createChat$chat$lastMessage.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$lastMessage;

  TRes call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    Mutation$CreateChat$createChat$chat$lastMessage$sender? sender,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<TRes>
      get sender;
}

class _CopyWithImpl$Mutation$CreateChat$createChat$chat$lastMessage<TRes>
    implements CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<TRes> {
  _CopyWithImpl$Mutation$CreateChat$createChat$chat$lastMessage(
    this._instance,
    this._then,
  );

  final Mutation$CreateChat$createChat$chat$lastMessage _instance;

  final TRes Function(Mutation$CreateChat$createChat$chat$lastMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? attachment = _undefined,
    Object? attachmentType = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChat$createChat$chat$lastMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        attachment: attachment == _undefined
            ? _instance.attachment
            : (attachment as String?),
        attachmentType: attachmentType == _undefined
            ? _instance.attachmentType
            : (attachmentType as Enum$ChatsMessageAttachmentTypeChoices?),
        sender: sender == _undefined
            ? _instance.sender
            : (sender
                as Mutation$CreateChat$createChat$chat$lastMessage$sender?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<TRes>
      get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender(
            local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$lastMessage<TRes>
    implements CopyWith$Mutation$CreateChat$createChat$chat$lastMessage<TRes> {
  _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$lastMessage(this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    Mutation$CreateChat$createChat$chat$lastMessage$sender? sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<TRes>
      get sender =>
          CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender.stub(
              _res);
}

class Mutation$CreateChat$createChat$chat$lastMessage$sender {
  Mutation$CreateChat$createChat$chat$lastMessage$sender({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.$__typename = 'UserType',
  });

  factory Mutation$CreateChat$createChat$chat$lastMessage$sender.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChat$createChat$chat$lastMessage$sender(
      id: (l$id as int?),
      username: (l$username as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      displayName: (l$displayName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String? profilePictureUrl;

  final String? thumbnailUrl;

  final String? displayName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$profilePictureUrl = profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    final l$displayName = displayName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$profilePictureUrl,
      l$thumbnailUrl,
      l$displayName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateChat$createChat$chat$lastMessage$sender ||
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
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
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

extension UtilityExtension$Mutation$CreateChat$createChat$chat$lastMessage$sender
    on Mutation$CreateChat$createChat$chat$lastMessage$sender {
  CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<
          Mutation$CreateChat$createChat$chat$lastMessage$sender>
      get copyWith =>
          CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<
    TRes> {
  factory CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender(
    Mutation$CreateChat$createChat$chat$lastMessage$sender instance,
    TRes Function(Mutation$CreateChat$createChat$chat$lastMessage$sender) then,
  ) = _CopyWithImpl$Mutation$CreateChat$createChat$chat$lastMessage$sender;

  factory CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$lastMessage$sender;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? displayName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateChat$createChat$chat$lastMessage$sender<TRes>
    implements
        CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<TRes> {
  _CopyWithImpl$Mutation$CreateChat$createChat$chat$lastMessage$sender(
    this._instance,
    this._then,
  );

  final Mutation$CreateChat$createChat$chat$lastMessage$sender _instance;

  final TRes Function(Mutation$CreateChat$createChat$chat$lastMessage$sender)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChat$createChat$chat$lastMessage$sender(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$lastMessage$sender<
        TRes>
    implements
        CopyWith$Mutation$CreateChat$createChat$chat$lastMessage$sender<TRes> {
  _CopyWithStubImpl$Mutation$CreateChat$createChat$chat$lastMessage$sender(
      this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? displayName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteMessage {
  factory Variables$Mutation$DeleteMessage({required int messageId}) =>
      Variables$Mutation$DeleteMessage._({
        r'messageId': messageId,
      });

  Variables$Mutation$DeleteMessage._(this._$data);

  factory Variables$Mutation$DeleteMessage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$messageId = data['messageId'];
    result$data['messageId'] = (l$messageId as int);
    return Variables$Mutation$DeleteMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  int get messageId => (_$data['messageId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$messageId = messageId;
    result$data['messageId'] = l$messageId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteMessage<Variables$Mutation$DeleteMessage>
      get copyWith => CopyWith$Variables$Mutation$DeleteMessage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$messageId = messageId;
    final lOther$messageId = other.messageId;
    if (l$messageId != lOther$messageId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$messageId = messageId;
    return Object.hashAll([l$messageId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteMessage<TRes> {
  factory CopyWith$Variables$Mutation$DeleteMessage(
    Variables$Mutation$DeleteMessage instance,
    TRes Function(Variables$Mutation$DeleteMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteMessage;

  factory CopyWith$Variables$Mutation$DeleteMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteMessage;

  TRes call({int? messageId});
}

class _CopyWithImpl$Variables$Mutation$DeleteMessage<TRes>
    implements CopyWith$Variables$Mutation$DeleteMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteMessage _instance;

  final TRes Function(Variables$Mutation$DeleteMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? messageId = _undefined}) =>
      _then(Variables$Mutation$DeleteMessage._({
        ..._instance._$data,
        if (messageId != _undefined && messageId != null)
          'messageId': (messageId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteMessage<TRes>
    implements CopyWith$Variables$Mutation$DeleteMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteMessage(this._res);

  TRes _res;

  call({int? messageId}) => _res;
}

class Mutation$DeleteMessage {
  Mutation$DeleteMessage({
    this.deleteMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteMessage.fromJson(Map<String, dynamic> json) {
    final l$deleteMessage = json['deleteMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteMessage(
      deleteMessage: l$deleteMessage == null
          ? null
          : Mutation$DeleteMessage$deleteMessage.fromJson(
              (l$deleteMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteMessage$deleteMessage? deleteMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteMessage = deleteMessage;
    _resultData['deleteMessage'] = l$deleteMessage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteMessage = deleteMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteMessage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteMessage = deleteMessage;
    final lOther$deleteMessage = other.deleteMessage;
    if (l$deleteMessage != lOther$deleteMessage) {
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

extension UtilityExtension$Mutation$DeleteMessage on Mutation$DeleteMessage {
  CopyWith$Mutation$DeleteMessage<Mutation$DeleteMessage> get copyWith =>
      CopyWith$Mutation$DeleteMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteMessage<TRes> {
  factory CopyWith$Mutation$DeleteMessage(
    Mutation$DeleteMessage instance,
    TRes Function(Mutation$DeleteMessage) then,
  ) = _CopyWithImpl$Mutation$DeleteMessage;

  factory CopyWith$Mutation$DeleteMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteMessage;

  TRes call({
    Mutation$DeleteMessage$deleteMessage? deleteMessage,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteMessage$deleteMessage<TRes> get deleteMessage;
}

class _CopyWithImpl$Mutation$DeleteMessage<TRes>
    implements CopyWith$Mutation$DeleteMessage<TRes> {
  _CopyWithImpl$Mutation$DeleteMessage(
    this._instance,
    this._then,
  );

  final Mutation$DeleteMessage _instance;

  final TRes Function(Mutation$DeleteMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteMessage(
        deleteMessage: deleteMessage == _undefined
            ? _instance.deleteMessage
            : (deleteMessage as Mutation$DeleteMessage$deleteMessage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteMessage$deleteMessage<TRes> get deleteMessage {
    final local$deleteMessage = _instance.deleteMessage;
    return local$deleteMessage == null
        ? CopyWith$Mutation$DeleteMessage$deleteMessage.stub(_then(_instance))
        : CopyWith$Mutation$DeleteMessage$deleteMessage(
            local$deleteMessage, (e) => call(deleteMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteMessage<TRes>
    implements CopyWith$Mutation$DeleteMessage<TRes> {
  _CopyWithStubImpl$Mutation$DeleteMessage(this._res);

  TRes _res;

  call({
    Mutation$DeleteMessage$deleteMessage? deleteMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteMessage$deleteMessage<TRes> get deleteMessage =>
      CopyWith$Mutation$DeleteMessage$deleteMessage.stub(_res);
}

const documentNodeMutationDeleteMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'messageId')),
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
        name: NameNode(value: 'deleteMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'messageId'),
            value: VariableNode(name: NameNode(value: 'messageId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$DeleteMessage _parserFn$Mutation$DeleteMessage(
        Map<String, dynamic> data) =>
    Mutation$DeleteMessage.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteMessage = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteMessage?,
);

class Options$Mutation$DeleteMessage
    extends graphql.MutationOptions<Mutation$DeleteMessage> {
  Options$Mutation$DeleteMessage({
    String? operationName,
    required Variables$Mutation$DeleteMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteMessage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteMessage? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteMessage>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteMessage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteMessage,
          parserFn: _parserFn$Mutation$DeleteMessage,
        );

  final OnMutationCompleted$Mutation$DeleteMessage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteMessage
    extends graphql.WatchQueryOptions<Mutation$DeleteMessage> {
  WatchOptions$Mutation$DeleteMessage({
    String? operationName,
    required Variables$Mutation$DeleteMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteMessage? typedOptimisticResult,
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
          document: documentNodeMutationDeleteMessage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteMessage,
        );
}

extension ClientExtension$Mutation$DeleteMessage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteMessage>> mutate$DeleteMessage(
          Options$Mutation$DeleteMessage options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteMessage> watchMutation$DeleteMessage(
          WatchOptions$Mutation$DeleteMessage options) =>
      this.watchMutation(options);
}

class Mutation$DeleteMessage$deleteMessage {
  Mutation$DeleteMessage$deleteMessage({
    this.message,
    this.$__typename = 'DeleteMessage',
  });

  factory Mutation$DeleteMessage$deleteMessage.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteMessage$deleteMessage(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteMessage$deleteMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DeleteMessage$deleteMessage
    on Mutation$DeleteMessage$deleteMessage {
  CopyWith$Mutation$DeleteMessage$deleteMessage<
          Mutation$DeleteMessage$deleteMessage>
      get copyWith => CopyWith$Mutation$DeleteMessage$deleteMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteMessage$deleteMessage<TRes> {
  factory CopyWith$Mutation$DeleteMessage$deleteMessage(
    Mutation$DeleteMessage$deleteMessage instance,
    TRes Function(Mutation$DeleteMessage$deleteMessage) then,
  ) = _CopyWithImpl$Mutation$DeleteMessage$deleteMessage;

  factory CopyWith$Mutation$DeleteMessage$deleteMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteMessage$deleteMessage;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteMessage$deleteMessage<TRes>
    implements CopyWith$Mutation$DeleteMessage$deleteMessage<TRes> {
  _CopyWithImpl$Mutation$DeleteMessage$deleteMessage(
    this._instance,
    this._then,
  );

  final Mutation$DeleteMessage$deleteMessage _instance;

  final TRes Function(Mutation$DeleteMessage$deleteMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteMessage$deleteMessage(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteMessage$deleteMessage<TRes>
    implements CopyWith$Mutation$DeleteMessage$deleteMessage<TRes> {
  _CopyWithStubImpl$Mutation$DeleteMessage$deleteMessage(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteSearchHistory {
  factory Variables$Mutation$DeleteSearchHistory({
    String? searchId,
    bool? clearAll,
  }) =>
      Variables$Mutation$DeleteSearchHistory._({
        if (searchId != null) r'searchId': searchId,
        if (clearAll != null) r'clearAll': clearAll,
      });

  Variables$Mutation$DeleteSearchHistory._(this._$data);

  factory Variables$Mutation$DeleteSearchHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('searchId')) {
      final l$searchId = data['searchId'];
      result$data['searchId'] = (l$searchId as String?);
    }
    if (data.containsKey('clearAll')) {
      final l$clearAll = data['clearAll'];
      result$data['clearAll'] = (l$clearAll as bool?);
    }
    return Variables$Mutation$DeleteSearchHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get searchId => (_$data['searchId'] as String?);

  bool? get clearAll => (_$data['clearAll'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('searchId')) {
      final l$searchId = searchId;
      result$data['searchId'] = l$searchId;
    }
    if (_$data.containsKey('clearAll')) {
      final l$clearAll = clearAll;
      result$data['clearAll'] = l$clearAll;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteSearchHistory<
          Variables$Mutation$DeleteSearchHistory>
      get copyWith => CopyWith$Variables$Mutation$DeleteSearchHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteSearchHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchId = searchId;
    final lOther$searchId = other.searchId;
    if (_$data.containsKey('searchId') !=
        other._$data.containsKey('searchId')) {
      return false;
    }
    if (l$searchId != lOther$searchId) {
      return false;
    }
    final l$clearAll = clearAll;
    final lOther$clearAll = other.clearAll;
    if (_$data.containsKey('clearAll') !=
        other._$data.containsKey('clearAll')) {
      return false;
    }
    if (l$clearAll != lOther$clearAll) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchId = searchId;
    final l$clearAll = clearAll;
    return Object.hashAll([
      _$data.containsKey('searchId') ? l$searchId : const {},
      _$data.containsKey('clearAll') ? l$clearAll : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteSearchHistory<TRes> {
  factory CopyWith$Variables$Mutation$DeleteSearchHistory(
    Variables$Mutation$DeleteSearchHistory instance,
    TRes Function(Variables$Mutation$DeleteSearchHistory) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteSearchHistory;

  factory CopyWith$Variables$Mutation$DeleteSearchHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteSearchHistory;

  TRes call({
    String? searchId,
    bool? clearAll,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteSearchHistory<TRes>
    implements CopyWith$Variables$Mutation$DeleteSearchHistory<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteSearchHistory(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteSearchHistory _instance;

  final TRes Function(Variables$Mutation$DeleteSearchHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchId = _undefined,
    Object? clearAll = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteSearchHistory._({
        ..._instance._$data,
        if (searchId != _undefined) 'searchId': (searchId as String?),
        if (clearAll != _undefined) 'clearAll': (clearAll as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteSearchHistory<TRes>
    implements CopyWith$Variables$Mutation$DeleteSearchHistory<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteSearchHistory(this._res);

  TRes _res;

  call({
    String? searchId,
    bool? clearAll,
  }) =>
      _res;
}

class Mutation$DeleteSearchHistory {
  Mutation$DeleteSearchHistory({
    this.deleteSearchHistory,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteSearchHistory.fromJson(Map<String, dynamic> json) {
    final l$deleteSearchHistory = json['deleteSearchHistory'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSearchHistory(
      deleteSearchHistory: l$deleteSearchHistory == null
          ? null
          : Mutation$DeleteSearchHistory$deleteSearchHistory.fromJson(
              (l$deleteSearchHistory as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteSearchHistory$deleteSearchHistory? deleteSearchHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteSearchHistory = deleteSearchHistory;
    _resultData['deleteSearchHistory'] = l$deleteSearchHistory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteSearchHistory = deleteSearchHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteSearchHistory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteSearchHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteSearchHistory = deleteSearchHistory;
    final lOther$deleteSearchHistory = other.deleteSearchHistory;
    if (l$deleteSearchHistory != lOther$deleteSearchHistory) {
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

extension UtilityExtension$Mutation$DeleteSearchHistory
    on Mutation$DeleteSearchHistory {
  CopyWith$Mutation$DeleteSearchHistory<Mutation$DeleteSearchHistory>
      get copyWith => CopyWith$Mutation$DeleteSearchHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSearchHistory<TRes> {
  factory CopyWith$Mutation$DeleteSearchHistory(
    Mutation$DeleteSearchHistory instance,
    TRes Function(Mutation$DeleteSearchHistory) then,
  ) = _CopyWithImpl$Mutation$DeleteSearchHistory;

  factory CopyWith$Mutation$DeleteSearchHistory.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSearchHistory;

  TRes call({
    Mutation$DeleteSearchHistory$deleteSearchHistory? deleteSearchHistory,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes>
      get deleteSearchHistory;
}

class _CopyWithImpl$Mutation$DeleteSearchHistory<TRes>
    implements CopyWith$Mutation$DeleteSearchHistory<TRes> {
  _CopyWithImpl$Mutation$DeleteSearchHistory(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSearchHistory _instance;

  final TRes Function(Mutation$DeleteSearchHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteSearchHistory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSearchHistory(
        deleteSearchHistory: deleteSearchHistory == _undefined
            ? _instance.deleteSearchHistory
            : (deleteSearchHistory
                as Mutation$DeleteSearchHistory$deleteSearchHistory?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes>
      get deleteSearchHistory {
    final local$deleteSearchHistory = _instance.deleteSearchHistory;
    return local$deleteSearchHistory == null
        ? CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory(
            local$deleteSearchHistory, (e) => call(deleteSearchHistory: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteSearchHistory<TRes>
    implements CopyWith$Mutation$DeleteSearchHistory<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSearchHistory(this._res);

  TRes _res;

  call({
    Mutation$DeleteSearchHistory$deleteSearchHistory? deleteSearchHistory,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes>
      get deleteSearchHistory =>
          CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory.stub(_res);
}

const documentNodeMutationDeleteSearchHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteSearchHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'clearAll')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteSearchHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchId'),
            value: VariableNode(name: NameNode(value: 'searchId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'clearAll'),
            value: VariableNode(name: NameNode(value: 'clearAll')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$DeleteSearchHistory _parserFn$Mutation$DeleteSearchHistory(
        Map<String, dynamic> data) =>
    Mutation$DeleteSearchHistory.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteSearchHistory = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteSearchHistory?,
);

class Options$Mutation$DeleteSearchHistory
    extends graphql.MutationOptions<Mutation$DeleteSearchHistory> {
  Options$Mutation$DeleteSearchHistory({
    String? operationName,
    Variables$Mutation$DeleteSearchHistory? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSearchHistory? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteSearchHistory? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteSearchHistory>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteSearchHistory(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteSearchHistory,
          parserFn: _parserFn$Mutation$DeleteSearchHistory,
        );

  final OnMutationCompleted$Mutation$DeleteSearchHistory? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteSearchHistory
    extends graphql.WatchQueryOptions<Mutation$DeleteSearchHistory> {
  WatchOptions$Mutation$DeleteSearchHistory({
    String? operationName,
    Variables$Mutation$DeleteSearchHistory? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSearchHistory? typedOptimisticResult,
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
          document: documentNodeMutationDeleteSearchHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteSearchHistory,
        );
}

extension ClientExtension$Mutation$DeleteSearchHistory
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteSearchHistory>>
      mutate$DeleteSearchHistory(
              [Options$Mutation$DeleteSearchHistory? options]) async =>
          await this.mutate(options ?? Options$Mutation$DeleteSearchHistory());
  graphql.ObservableQuery<Mutation$DeleteSearchHistory>
      watchMutation$DeleteSearchHistory(
              [WatchOptions$Mutation$DeleteSearchHistory? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$DeleteSearchHistory());
}

class Mutation$DeleteSearchHistory$deleteSearchHistory {
  Mutation$DeleteSearchHistory$deleteSearchHistory({
    this.message,
    this.success,
    this.$__typename = 'DeleteSearchHistory',
  });

  factory Mutation$DeleteSearchHistory$deleteSearchHistory.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSearchHistory$deleteSearchHistory(
      message: (l$message as String?),
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteSearchHistory$deleteSearchHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$DeleteSearchHistory$deleteSearchHistory
    on Mutation$DeleteSearchHistory$deleteSearchHistory {
  CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<
          Mutation$DeleteSearchHistory$deleteSearchHistory>
      get copyWith => CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes> {
  factory CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory(
    Mutation$DeleteSearchHistory$deleteSearchHistory instance,
    TRes Function(Mutation$DeleteSearchHistory$deleteSearchHistory) then,
  ) = _CopyWithImpl$Mutation$DeleteSearchHistory$deleteSearchHistory;

  factory CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSearchHistory$deleteSearchHistory;

  TRes call({
    String? message,
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes>
    implements CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes> {
  _CopyWithImpl$Mutation$DeleteSearchHistory$deleteSearchHistory(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSearchHistory$deleteSearchHistory _instance;

  final TRes Function(Mutation$DeleteSearchHistory$deleteSearchHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSearchHistory$deleteSearchHistory(
        message:
            message == _undefined ? _instance.message : (message as String?),
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes>
    implements CopyWith$Mutation$DeleteSearchHistory$deleteSearchHistory<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSearchHistory$deleteSearchHistory(this._res);

  TRes _res;

  call({
    String? message,
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createOffer {
  factory Variables$Mutation$createOffer({
    required double offerPrice,
    required List<int?> productIds,
    String? message,
  }) =>
      Variables$Mutation$createOffer._({
        r'offerPrice': offerPrice,
        r'productIds': productIds,
        if (message != null) r'message': message,
      });

  Variables$Mutation$createOffer._(this._$data);

  factory Variables$Mutation$createOffer.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$offerPrice = data['offerPrice'];
    result$data['offerPrice'] = (l$offerPrice as num).toDouble();
    final l$productIds = data['productIds'];
    result$data['productIds'] =
        (l$productIds as List<dynamic>).map((e) => (e as int?)).toList();
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    return Variables$Mutation$createOffer._(result$data);
  }

  Map<String, dynamic> _$data;

  double get offerPrice => (_$data['offerPrice'] as double);

  List<int?> get productIds => (_$data['productIds'] as List<int?>);

  String? get message => (_$data['message'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$offerPrice = offerPrice;
    result$data['offerPrice'] = l$offerPrice;
    final l$productIds = productIds;
    result$data['productIds'] = l$productIds.map((e) => e).toList();
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$createOffer<Variables$Mutation$createOffer>
      get copyWith => CopyWith$Variables$Mutation$createOffer(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createOffer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$offerPrice = offerPrice;
    final lOther$offerPrice = other.offerPrice;
    if (l$offerPrice != lOther$offerPrice) {
      return false;
    }
    final l$productIds = productIds;
    final lOther$productIds = other.productIds;
    if (l$productIds.length != lOther$productIds.length) {
      return false;
    }
    for (int i = 0; i < l$productIds.length; i++) {
      final l$productIds$entry = l$productIds[i];
      final lOther$productIds$entry = lOther$productIds[i];
      if (l$productIds$entry != lOther$productIds$entry) {
        return false;
      }
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$offerPrice = offerPrice;
    final l$productIds = productIds;
    final l$message = message;
    return Object.hashAll([
      l$offerPrice,
      Object.hashAll(l$productIds.map((v) => v)),
      _$data.containsKey('message') ? l$message : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$createOffer<TRes> {
  factory CopyWith$Variables$Mutation$createOffer(
    Variables$Mutation$createOffer instance,
    TRes Function(Variables$Mutation$createOffer) then,
  ) = _CopyWithImpl$Variables$Mutation$createOffer;

  factory CopyWith$Variables$Mutation$createOffer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createOffer;

  TRes call({
    double? offerPrice,
    List<int?>? productIds,
    String? message,
  });
}

class _CopyWithImpl$Variables$Mutation$createOffer<TRes>
    implements CopyWith$Variables$Mutation$createOffer<TRes> {
  _CopyWithImpl$Variables$Mutation$createOffer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createOffer _instance;

  final TRes Function(Variables$Mutation$createOffer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? offerPrice = _undefined,
    Object? productIds = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Variables$Mutation$createOffer._({
        ..._instance._$data,
        if (offerPrice != _undefined && offerPrice != null)
          'offerPrice': (offerPrice as double),
        if (productIds != _undefined && productIds != null)
          'productIds': (productIds as List<int?>),
        if (message != _undefined) 'message': (message as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createOffer<TRes>
    implements CopyWith$Variables$Mutation$createOffer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createOffer(this._res);

  TRes _res;

  call({
    double? offerPrice,
    List<int?>? productIds,
    String? message,
  }) =>
      _res;
}

class Mutation$createOffer {
  Mutation$createOffer({
    this.createOffer,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createOffer.fromJson(Map<String, dynamic> json) {
    final l$createOffer = json['createOffer'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer(
      createOffer: l$createOffer == null
          ? null
          : Mutation$createOffer$createOffer.fromJson(
              (l$createOffer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createOffer$createOffer? createOffer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOffer = createOffer;
    _resultData['createOffer'] = l$createOffer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOffer = createOffer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOffer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOffer = createOffer;
    final lOther$createOffer = other.createOffer;
    if (l$createOffer != lOther$createOffer) {
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

extension UtilityExtension$Mutation$createOffer on Mutation$createOffer {
  CopyWith$Mutation$createOffer<Mutation$createOffer> get copyWith =>
      CopyWith$Mutation$createOffer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createOffer<TRes> {
  factory CopyWith$Mutation$createOffer(
    Mutation$createOffer instance,
    TRes Function(Mutation$createOffer) then,
  ) = _CopyWithImpl$Mutation$createOffer;

  factory CopyWith$Mutation$createOffer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createOffer;

  TRes call({
    Mutation$createOffer$createOffer? createOffer,
    String? $__typename,
  });
  CopyWith$Mutation$createOffer$createOffer<TRes> get createOffer;
}

class _CopyWithImpl$Mutation$createOffer<TRes>
    implements CopyWith$Mutation$createOffer<TRes> {
  _CopyWithImpl$Mutation$createOffer(
    this._instance,
    this._then,
  );

  final Mutation$createOffer _instance;

  final TRes Function(Mutation$createOffer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOffer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer(
        createOffer: createOffer == _undefined
            ? _instance.createOffer
            : (createOffer as Mutation$createOffer$createOffer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$createOffer$createOffer<TRes> get createOffer {
    final local$createOffer = _instance.createOffer;
    return local$createOffer == null
        ? CopyWith$Mutation$createOffer$createOffer.stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer(
            local$createOffer, (e) => call(createOffer: e));
  }
}

class _CopyWithStubImpl$Mutation$createOffer<TRes>
    implements CopyWith$Mutation$createOffer<TRes> {
  _CopyWithStubImpl$Mutation$createOffer(this._res);

  TRes _res;

  call({
    Mutation$createOffer$createOffer? createOffer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$createOffer$createOffer<TRes> get createOffer =>
      CopyWith$Mutation$createOffer$createOffer.stub(_res);
}

const documentNodeMutationcreateOffer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createOffer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offerPrice')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOffer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'offerPrice'),
            value: VariableNode(name: NameNode(value: 'offerPrice')),
          ),
          ArgumentNode(
            name: NameNode(value: 'productIds'),
            value: VariableNode(name: NameNode(value: 'productIds')),
          ),
          ArgumentNode(
            name: NameNode(value: 'message'),
            value: VariableNode(name: NameNode(value: 'message')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'conversationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'offer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'products'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'id'),
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
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'size'),
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
                        name: NameNode(value: 'updatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'seller'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'email'),
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
                            name: NameNode(value: 'username'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'thumbnailUrl'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'updatedBy'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'expiresAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdBy'),
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
                    name: NameNode(value: 'offerPrice'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'message'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'children'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'buyer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'username'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'thumbnailUrl'),
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
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
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
                        name: NameNode(value: 'updatedBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'offerPrice'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'message'),
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
                    name: NameNode(value: 'buyer'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'thumbnailUrl'),
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
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$createOffer _parserFn$Mutation$createOffer(
        Map<String, dynamic> data) =>
    Mutation$createOffer.fromJson(data);
typedef OnMutationCompleted$Mutation$createOffer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$createOffer?,
);

class Options$Mutation$createOffer
    extends graphql.MutationOptions<Mutation$createOffer> {
  Options$Mutation$createOffer({
    String? operationName,
    required Variables$Mutation$createOffer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createOffer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createOffer? onCompleted,
    graphql.OnMutationUpdate<Mutation$createOffer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$createOffer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateOffer,
          parserFn: _parserFn$Mutation$createOffer,
        );

  final OnMutationCompleted$Mutation$createOffer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createOffer
    extends graphql.WatchQueryOptions<Mutation$createOffer> {
  WatchOptions$Mutation$createOffer({
    String? operationName,
    required Variables$Mutation$createOffer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createOffer? typedOptimisticResult,
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
          document: documentNodeMutationcreateOffer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createOffer,
        );
}

extension ClientExtension$Mutation$createOffer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createOffer>> mutate$createOffer(
          Options$Mutation$createOffer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$createOffer> watchMutation$createOffer(
          WatchOptions$Mutation$createOffer options) =>
      this.watchMutation(options);
}

class Mutation$createOffer$createOffer {
  Mutation$createOffer$createOffer({
    this.data,
    this.message,
    this.success,
    this.$__typename = 'CreateOffer',
  });

  factory Mutation$createOffer$createOffer.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$message = json['message'];
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer(
      data: l$data == null
          ? null
          : Mutation$createOffer$createOffer$data.fromJson(
              (l$data as Map<String, dynamic>)),
      message: (l$message as String?),
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createOffer$createOffer$data? data;

  final String? message;

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$message = message;
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data,
      l$message,
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$createOffer$createOffer
    on Mutation$createOffer$createOffer {
  CopyWith$Mutation$createOffer$createOffer<Mutation$createOffer$createOffer>
      get copyWith => CopyWith$Mutation$createOffer$createOffer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer<TRes> {
  factory CopyWith$Mutation$createOffer$createOffer(
    Mutation$createOffer$createOffer instance,
    TRes Function(Mutation$createOffer$createOffer) then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer;

  factory CopyWith$Mutation$createOffer$createOffer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer;

  TRes call({
    Mutation$createOffer$createOffer$data? data,
    String? message,
    bool? success,
    String? $__typename,
  });
  CopyWith$Mutation$createOffer$createOffer$data<TRes> get data;
}

class _CopyWithImpl$Mutation$createOffer$createOffer<TRes>
    implements CopyWith$Mutation$createOffer$createOffer<TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer _instance;

  final TRes Function(Mutation$createOffer$createOffer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? message = _undefined,
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer(
        data: data == _undefined
            ? _instance.data
            : (data as Mutation$createOffer$createOffer$data?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$createOffer$createOffer$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$createOffer$createOffer$data.stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data(
            local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer<TRes>
    implements CopyWith$Mutation$createOffer$createOffer<TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer(this._res);

  TRes _res;

  call({
    Mutation$createOffer$createOffer$data? data,
    String? message,
    bool? success,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$createOffer$createOffer$data<TRes> get data =>
      CopyWith$Mutation$createOffer$createOffer$data.stub(_res);
}

class Mutation$createOffer$createOffer$data {
  Mutation$createOffer$createOffer$data({
    this.conversationId,
    this.offer,
    this.$__typename = 'OfferReturnType',
  });

  factory Mutation$createOffer$createOffer$data.fromJson(
      Map<String, dynamic> json) {
    final l$conversationId = json['conversationId'];
    final l$offer = json['offer'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data(
      conversationId: (l$conversationId as int?),
      offer: (l$offer as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$createOffer$createOffer$data$offer.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? conversationId;

  final List<Mutation$createOffer$createOffer$data$offer?>? offer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conversationId = conversationId;
    _resultData['conversationId'] = l$conversationId;
    final l$offer = offer;
    _resultData['offer'] = l$offer?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conversationId = conversationId;
    final l$offer = offer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$conversationId,
      l$offer == null ? null : Object.hashAll(l$offer.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversationId = conversationId;
    final lOther$conversationId = other.conversationId;
    if (l$conversationId != lOther$conversationId) {
      return false;
    }
    final l$offer = offer;
    final lOther$offer = other.offer;
    if (l$offer != null && lOther$offer != null) {
      if (l$offer.length != lOther$offer.length) {
        return false;
      }
      for (int i = 0; i < l$offer.length; i++) {
        final l$offer$entry = l$offer[i];
        final lOther$offer$entry = lOther$offer[i];
        if (l$offer$entry != lOther$offer$entry) {
          return false;
        }
      }
    } else if (l$offer != lOther$offer) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data
    on Mutation$createOffer$createOffer$data {
  CopyWith$Mutation$createOffer$createOffer$data<
          Mutation$createOffer$createOffer$data>
      get copyWith => CopyWith$Mutation$createOffer$createOffer$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data<TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data(
    Mutation$createOffer$createOffer$data instance,
    TRes Function(Mutation$createOffer$createOffer$data) then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data;

  factory CopyWith$Mutation$createOffer$createOffer$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data;

  TRes call({
    int? conversationId,
    List<Mutation$createOffer$createOffer$data$offer?>? offer,
    String? $__typename,
  });
  TRes offer(
      Iterable<Mutation$createOffer$createOffer$data$offer?>? Function(
              Iterable<
                  CopyWith$Mutation$createOffer$createOffer$data$offer<
                      Mutation$createOffer$createOffer$data$offer>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data<TRes>
    implements CopyWith$Mutation$createOffer$createOffer$data<TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data _instance;

  final TRes Function(Mutation$createOffer$createOffer$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? conversationId = _undefined,
    Object? offer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data(
        conversationId: conversationId == _undefined
            ? _instance.conversationId
            : (conversationId as int?),
        offer: offer == _undefined
            ? _instance.offer
            : (offer as List<Mutation$createOffer$createOffer$data$offer?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes offer(
          Iterable<Mutation$createOffer$createOffer$data$offer?>? Function(
                  Iterable<
                      CopyWith$Mutation$createOffer$createOffer$data$offer<
                          Mutation$createOffer$createOffer$data$offer>?>?)
              _fn) =>
      call(
          offer: _fn(_instance.offer?.map((e) => e == null
              ? null
              : CopyWith$Mutation$createOffer$createOffer$data$offer(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data<TRes>
    implements CopyWith$Mutation$createOffer$createOffer$data<TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data(this._res);

  TRes _res;

  call({
    int? conversationId,
    List<Mutation$createOffer$createOffer$data$offer?>? offer,
    String? $__typename,
  }) =>
      _res;

  offer(_fn) => _res;
}

class Mutation$createOffer$createOffer$data$offer {
  Mutation$createOffer$createOffer$data$offer({
    required this.products,
    this.status,
    this.updatedBy,
    required this.updatedAt,
    required this.id,
    this.expiresAt,
    this.createdBy,
    required this.createdAt,
    required this.offerPrice,
    this.message,
    required this.children,
    this.buyer,
    this.$__typename = 'OfferType',
  });

  factory Mutation$createOffer$createOffer$data$offer.fromJson(
      Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$status = json['status'];
    final l$updatedBy = json['updatedBy'];
    final l$updatedAt = json['updatedAt'];
    final l$id = json['id'];
    final l$expiresAt = json['expiresAt'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$offerPrice = json['offerPrice'];
    final l$message = json['message'];
    final l$children = json['children'];
    final l$buyer = json['buyer'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer(
      products: (l$products as List<dynamic>)
          .map((e) =>
              Mutation$createOffer$createOffer$data$offer$products.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      status: (l$status as String?),
      updatedBy: (l$updatedBy as String?),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      id: (l$id as String),
      expiresAt:
          l$expiresAt == null ? null : DateTime.parse((l$expiresAt as String)),
      createdBy: (l$createdBy as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      offerPrice: (l$offerPrice as String),
      message: (l$message as String?),
      children: (l$children as List<dynamic>)
          .map((e) =>
              Mutation$createOffer$createOffer$data$offer$children.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      buyer: l$buyer == null
          ? null
          : Mutation$createOffer$createOffer$data$offer$buyer.fromJson(
              (l$buyer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$createOffer$createOffer$data$offer$products> products;

  final String? status;

  final String? updatedBy;

  final DateTime updatedAt;

  final String id;

  final DateTime? expiresAt;

  final String? createdBy;

  final DateTime createdAt;

  final String offerPrice;

  final String? message;

  final List<Mutation$createOffer$createOffer$data$offer$children> children;

  final Mutation$createOffer$createOffer$data$offer$buyer? buyer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$products = products;
    _resultData['products'] = l$products.map((e) => e.toJson()).toList();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$updatedBy = updatedBy;
    _resultData['updatedBy'] = l$updatedBy;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = l$expiresAt?.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$offerPrice = offerPrice;
    _resultData['offerPrice'] = l$offerPrice;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$buyer = buyer;
    _resultData['buyer'] = l$buyer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$status = status;
    final l$updatedBy = updatedBy;
    final l$updatedAt = updatedAt;
    final l$id = id;
    final l$expiresAt = expiresAt;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$offerPrice = offerPrice;
    final l$message = message;
    final l$children = children;
    final l$buyer = buyer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$products.map((v) => v)),
      l$status,
      l$updatedBy,
      l$updatedAt,
      l$id,
      l$expiresAt,
      l$createdBy,
      l$createdAt,
      l$offerPrice,
      l$message,
      Object.hashAll(l$children.map((v) => v)),
      l$buyer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data$offer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products.length != lOther$products.length) {
      return false;
    }
    for (int i = 0; i < l$products.length; i++) {
      final l$products$entry = l$products[i];
      final lOther$products$entry = lOther$products[i];
      if (l$products$entry != lOther$products$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$offerPrice = offerPrice;
    final lOther$offerPrice = other.offerPrice;
    if (l$offerPrice != lOther$offerPrice) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children.length != lOther$children.length) {
      return false;
    }
    for (int i = 0; i < l$children.length; i++) {
      final l$children$entry = l$children[i];
      final lOther$children$entry = lOther$children[i];
      if (l$children$entry != lOther$children$entry) {
        return false;
      }
    }
    final l$buyer = buyer;
    final lOther$buyer = other.buyer;
    if (l$buyer != lOther$buyer) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer
    on Mutation$createOffer$createOffer$data$offer {
  CopyWith$Mutation$createOffer$createOffer$data$offer<
          Mutation$createOffer$createOffer$data$offer>
      get copyWith => CopyWith$Mutation$createOffer$createOffer$data$offer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer<TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer(
    Mutation$createOffer$createOffer$data$offer instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer) then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer;

  TRes call({
    List<Mutation$createOffer$createOffer$data$offer$products>? products,
    String? status,
    String? updatedBy,
    DateTime? updatedAt,
    String? id,
    DateTime? expiresAt,
    String? createdBy,
    DateTime? createdAt,
    String? offerPrice,
    String? message,
    List<Mutation$createOffer$createOffer$data$offer$children>? children,
    Mutation$createOffer$createOffer$data$offer$buyer? buyer,
    String? $__typename,
  });
  TRes products(
      Iterable<Mutation$createOffer$createOffer$data$offer$products> Function(
              Iterable<
                  CopyWith$Mutation$createOffer$createOffer$data$offer$products<
                      Mutation$createOffer$createOffer$data$offer$products>>)
          _fn);
  TRes children(
      Iterable<Mutation$createOffer$createOffer$data$offer$children> Function(
              Iterable<
                  CopyWith$Mutation$createOffer$createOffer$data$offer$children<
                      Mutation$createOffer$createOffer$data$offer$children>>)
          _fn);
  CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<TRes> get buyer;
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer<TRes>
    implements CopyWith$Mutation$createOffer$createOffer$data$offer<TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer _instance;

  final TRes Function(Mutation$createOffer$createOffer$data$offer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? status = _undefined,
    Object? updatedBy = _undefined,
    Object? updatedAt = _undefined,
    Object? id = _undefined,
    Object? expiresAt = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? offerPrice = _undefined,
    Object? message = _undefined,
    Object? children = _undefined,
    Object? buyer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer(
        products: products == _undefined || products == null
            ? _instance.products
            : (products
                as List<Mutation$createOffer$createOffer$data$offer$products>),
        status: status == _undefined ? _instance.status : (status as String?),
        updatedBy: updatedBy == _undefined
            ? _instance.updatedBy
            : (updatedBy as String?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        expiresAt: expiresAt == _undefined
            ? _instance.expiresAt
            : (expiresAt as DateTime?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        offerPrice: offerPrice == _undefined || offerPrice == null
            ? _instance.offerPrice
            : (offerPrice as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        children: children == _undefined || children == null
            ? _instance.children
            : (children
                as List<Mutation$createOffer$createOffer$data$offer$children>),
        buyer: buyer == _undefined
            ? _instance.buyer
            : (buyer as Mutation$createOffer$createOffer$data$offer$buyer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes products(
          Iterable<Mutation$createOffer$createOffer$data$offer$products> Function(
                  Iterable<
                      CopyWith$Mutation$createOffer$createOffer$data$offer$products<
                          Mutation$createOffer$createOffer$data$offer$products>>)
              _fn) =>
      call(
          products: _fn(_instance.products.map((e) =>
              CopyWith$Mutation$createOffer$createOffer$data$offer$products(
                e,
                (i) => i,
              ))).toList());

  TRes children(
          Iterable<Mutation$createOffer$createOffer$data$offer$children> Function(
                  Iterable<
                      CopyWith$Mutation$createOffer$createOffer$data$offer$children<
                          Mutation$createOffer$createOffer$data$offer$children>>)
              _fn) =>
      call(
          children: _fn(_instance.children.map((e) =>
              CopyWith$Mutation$createOffer$createOffer$data$offer$children(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<TRes> get buyer {
    final local$buyer = _instance.buyer;
    return local$buyer == null
        ? CopyWith$Mutation$createOffer$createOffer$data$offer$buyer.stub(
            _then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data$offer$buyer(
            local$buyer, (e) => call(buyer: e));
  }
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer<TRes>
    implements CopyWith$Mutation$createOffer$createOffer$data$offer<TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer(this._res);

  TRes _res;

  call({
    List<Mutation$createOffer$createOffer$data$offer$products>? products,
    String? status,
    String? updatedBy,
    DateTime? updatedAt,
    String? id,
    DateTime? expiresAt,
    String? createdBy,
    DateTime? createdAt,
    String? offerPrice,
    String? message,
    List<Mutation$createOffer$createOffer$data$offer$children>? children,
    Mutation$createOffer$createOffer$data$offer$buyer? buyer,
    String? $__typename,
  }) =>
      _res;

  products(_fn) => _res;

  children(_fn) => _res;

  CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<TRes> get buyer =>
      CopyWith$Mutation$createOffer$createOffer$data$offer$buyer.stub(_res);
}

class Mutation$createOffer$createOffer$data$offer$products {
  Mutation$createOffer$createOffer$data$offer$products({
    this.brand,
    this.category,
    required this.id,
    required this.imagesUrl,
    required this.name,
    this.price,
    this.size,
    required this.updatedAt,
    required this.status,
    this.seller,
    this.$__typename = 'ProductType',
  });

  factory Mutation$createOffer$createOffer$data$offer$products.fromJson(
      Map<String, dynamic> json) {
    final l$brand = json['brand'];
    final l$category = json['category'];
    final l$id = json['id'];
    final l$imagesUrl = json['imagesUrl'];
    final l$name = json['name'];
    final l$price = json['price'];
    final l$size = json['size'];
    final l$updatedAt = json['updatedAt'];
    final l$status = json['status'];
    final l$seller = json['seller'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$products(
      brand: l$brand == null
          ? null
          : Mutation$createOffer$createOffer$data$offer$products$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      category: l$category == null
          ? null
          : Mutation$createOffer$createOffer$data$offer$products$category
              .fromJson((l$category as Map<String, dynamic>)),
      id: (l$id as String),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      name: (l$name as String),
      price: (l$price as num?)?.toDouble(),
      size: l$size == null
          ? null
          : Mutation$createOffer$createOffer$data$offer$products$size.fromJson(
              (l$size as Map<String, dynamic>)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      status: fromJson$Enum$ProductsProductStatusChoices((l$status as String)),
      seller: l$seller == null
          ? null
          : Mutation$createOffer$createOffer$data$offer$products$seller
              .fromJson((l$seller as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createOffer$createOffer$data$offer$products$brand? brand;

  final Mutation$createOffer$createOffer$data$offer$products$category? category;

  final String id;

  final List<String> imagesUrl;

  final String name;

  final double? price;

  final Mutation$createOffer$createOffer$data$offer$products$size? size;

  final DateTime updatedAt;

  final Enum$ProductsProductStatusChoices status;

  final Mutation$createOffer$createOffer$data$offer$products$seller? seller;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$brand = brand;
    _resultData['brand'] = l$brand?.toJson();
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$size = size;
    _resultData['size'] = l$size?.toJson();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$status = status;
    _resultData['status'] = toJson$Enum$ProductsProductStatusChoices(l$status);
    final l$seller = seller;
    _resultData['seller'] = l$seller?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$brand = brand;
    final l$category = category;
    final l$id = id;
    final l$imagesUrl = imagesUrl;
    final l$name = name;
    final l$price = price;
    final l$size = size;
    final l$updatedAt = updatedAt;
    final l$status = status;
    final l$seller = seller;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$brand,
      l$category,
      l$id,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$name,
      l$price,
      l$size,
      l$updatedAt,
      l$status,
      l$seller,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data$offer$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$products
    on Mutation$createOffer$createOffer$data$offer$products {
  CopyWith$Mutation$createOffer$createOffer$data$offer$products<
          Mutation$createOffer$createOffer$data$offer$products>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$products<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products(
    Mutation$createOffer$createOffer$data$offer$products instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$products) then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products;

  TRes call({
    Mutation$createOffer$createOffer$data$offer$products$brand? brand,
    Mutation$createOffer$createOffer$data$offer$products$category? category,
    String? id,
    List<String>? imagesUrl,
    String? name,
    double? price,
    Mutation$createOffer$createOffer$data$offer$products$size? size,
    DateTime? updatedAt,
    Enum$ProductsProductStatusChoices? status,
    Mutation$createOffer$createOffer$data$offer$products$seller? seller,
    String? $__typename,
  });
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<TRes>
      get brand;
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<TRes>
      get category;
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<TRes>
      get size;
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<TRes>
      get seller;
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products<TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products<TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$products _instance;

  final TRes Function(Mutation$createOffer$createOffer$data$offer$products)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? brand = _undefined,
    Object? category = _undefined,
    Object? id = _undefined,
    Object? imagesUrl = _undefined,
    Object? name = _undefined,
    Object? price = _undefined,
    Object? size = _undefined,
    Object? updatedAt = _undefined,
    Object? status = _undefined,
    Object? seller = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$products(
        brand: brand == _undefined
            ? _instance.brand
            : (brand
                as Mutation$createOffer$createOffer$data$offer$products$brand?),
        category: category == _undefined
            ? _instance.category
            : (category
                as Mutation$createOffer$createOffer$data$offer$products$category?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        price: price == _undefined ? _instance.price : (price as double?),
        size: size == _undefined
            ? _instance.size
            : (size
                as Mutation$createOffer$createOffer$data$offer$products$size?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ProductsProductStatusChoices),
        seller: seller == _undefined
            ? _instance.seller
            : (seller
                as Mutation$createOffer$createOffer$data$offer$products$seller?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<TRes>
      get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand
            .stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand(
            local$brand, (e) => call(brand: e));
  }

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Mutation$createOffer$createOffer$data$offer$products$category
            .stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data$offer$products$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<TRes>
      get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Mutation$createOffer$createOffer$data$offer$products$size
            .stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data$offer$products$size(
            local$size, (e) => call(size: e));
  }

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<TRes>
      get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller
            .stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller(
            local$seller, (e) => call(seller: e));
  }
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products<TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products(
      this._res);

  TRes _res;

  call({
    Mutation$createOffer$createOffer$data$offer$products$brand? brand,
    Mutation$createOffer$createOffer$data$offer$products$category? category,
    String? id,
    List<String>? imagesUrl,
    String? name,
    double? price,
    Mutation$createOffer$createOffer$data$offer$products$size? size,
    DateTime? updatedAt,
    Enum$ProductsProductStatusChoices? status,
    Mutation$createOffer$createOffer$data$offer$products$seller? seller,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<TRes>
      get brand =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand
              .stub(_res);

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<TRes>
      get category =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$category
              .stub(_res);

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<TRes>
      get size =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$size
              .stub(_res);

  CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<TRes>
      get seller =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller
              .stub(_res);
}

class Mutation$createOffer$createOffer$data$offer$products$brand {
  Mutation$createOffer$createOffer$data$offer$products$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Mutation$createOffer$createOffer$data$offer$products$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$products$brand(
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
    if (other is! Mutation$createOffer$createOffer$data$offer$products$brand ||
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$products$brand
    on Mutation$createOffer$createOffer$data$offer$products$brand {
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<
          Mutation$createOffer$createOffer$data$offer$products$brand>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand(
    Mutation$createOffer$createOffer$data$offer$products$brand instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$products$brand)
        then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$brand;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$brand<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<
            TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$brand(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$products$brand _instance;

  final TRes Function(
      Mutation$createOffer$createOffer$data$offer$products$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$products$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$brand<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$brand<
            TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$brand(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createOffer$createOffer$data$offer$products$category {
  Mutation$createOffer$createOffer$data$offer$products$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Mutation$createOffer$createOffer$data$offer$products$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$products$category(
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
    if (other
            is! Mutation$createOffer$createOffer$data$offer$products$category ||
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$products$category
    on Mutation$createOffer$createOffer$data$offer$products$category {
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<
          Mutation$createOffer$createOffer$data$offer$products$category>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$category(
    Mutation$createOffer$createOffer$data$offer$products$category instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$products$category)
        then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$category;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$category.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$category<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<
            TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$category(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$products$category _instance;

  final TRes Function(
      Mutation$createOffer$createOffer$data$offer$products$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$products$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$category<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$category<
            TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createOffer$createOffer$data$offer$products$size {
  Mutation$createOffer$createOffer$data$offer$products$size({
    this.id,
    this.name,
    this.$__typename = 'SizeType',
  });

  factory Mutation$createOffer$createOffer$data$offer$products$size.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$products$size(
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
    if (other is! Mutation$createOffer$createOffer$data$offer$products$size ||
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$products$size
    on Mutation$createOffer$createOffer$data$offer$products$size {
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<
          Mutation$createOffer$createOffer$data$offer$products$size>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$size(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$size(
    Mutation$createOffer$createOffer$data$offer$products$size instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$products$size)
        then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$size;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$size.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$size;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$size<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<
            TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$size(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$products$size _instance;

  final TRes Function(Mutation$createOffer$createOffer$data$offer$products$size)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$products$size(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$size<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$size<
            TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$size(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createOffer$createOffer$data$offer$products$seller {
  Mutation$createOffer$createOffer$data$offer$products$seller({
    this.email,
    this.fullName,
    this.username,
    this.thumbnailUrl,
    this.profilePictureUrl,
    this.$__typename = 'UserType',
  });

  factory Mutation$createOffer$createOffer$data$offer$products$seller.fromJson(
      Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$username = json['username'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$products$seller(
      email: (l$email as String?),
      fullName: (l$fullName as String?),
      username: (l$username as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? email;

  final String? fullName;

  final String? username;

  final String? thumbnailUrl;

  final String? profilePictureUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$fullName = fullName;
    final l$username = username;
    final l$thumbnailUrl = thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$fullName,
      l$username,
      l$thumbnailUrl,
      l$profilePictureUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data$offer$products$seller ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$products$seller
    on Mutation$createOffer$createOffer$data$offer$products$seller {
  CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<
          Mutation$createOffer$createOffer$data$offer$products$seller>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller(
    Mutation$createOffer$createOffer$data$offer$products$seller instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$products$seller)
        then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$seller;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$seller;

  TRes call({
    String? email,
    String? fullName,
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$seller<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<
            TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$products$seller(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$products$seller _instance;

  final TRes Function(
      Mutation$createOffer$createOffer$data$offer$products$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? fullName = _undefined,
    Object? username = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$products$seller(
        email: email == _undefined ? _instance.email : (email as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$seller<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$products$seller<
            TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$products$seller(
      this._res);

  TRes _res;

  call({
    String? email,
    String? fullName,
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createOffer$createOffer$data$offer$children {
  Mutation$createOffer$createOffer$data$offer$children({
    this.buyer,
    required this.createdAt,
    this.createdBy,
    required this.id,
    this.status,
    required this.updatedAt,
    this.updatedBy,
    required this.offerPrice,
    this.message,
    this.$__typename = 'OfferType',
  });

  factory Mutation$createOffer$createOffer$data$offer$children.fromJson(
      Map<String, dynamic> json) {
    final l$buyer = json['buyer'];
    final l$createdAt = json['createdAt'];
    final l$createdBy = json['createdBy'];
    final l$id = json['id'];
    final l$status = json['status'];
    final l$updatedAt = json['updatedAt'];
    final l$updatedBy = json['updatedBy'];
    final l$offerPrice = json['offerPrice'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$children(
      buyer: l$buyer == null
          ? null
          : Mutation$createOffer$createOffer$data$offer$children$buyer.fromJson(
              (l$buyer as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      createdBy: (l$createdBy as String?),
      id: (l$id as String),
      status: (l$status as String?),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      updatedBy: (l$updatedBy as String?),
      offerPrice: (l$offerPrice as String),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createOffer$createOffer$data$offer$children$buyer? buyer;

  final DateTime createdAt;

  final String? createdBy;

  final String id;

  final String? status;

  final DateTime updatedAt;

  final String? updatedBy;

  final String offerPrice;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buyer = buyer;
    _resultData['buyer'] = l$buyer?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$updatedBy = updatedBy;
    _resultData['updatedBy'] = l$updatedBy;
    final l$offerPrice = offerPrice;
    _resultData['offerPrice'] = l$offerPrice;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$buyer = buyer;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$status = status;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$offerPrice = offerPrice;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$buyer,
      l$createdAt,
      l$createdBy,
      l$id,
      l$status,
      l$updatedAt,
      l$updatedBy,
      l$offerPrice,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data$offer$children ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buyer = buyer;
    final lOther$buyer = other.buyer;
    if (l$buyer != lOther$buyer) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$offerPrice = offerPrice;
    final lOther$offerPrice = other.offerPrice;
    if (l$offerPrice != lOther$offerPrice) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$children
    on Mutation$createOffer$createOffer$data$offer$children {
  CopyWith$Mutation$createOffer$createOffer$data$offer$children<
          Mutation$createOffer$createOffer$data$offer$children>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$children(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$children<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$children(
    Mutation$createOffer$createOffer$data$offer$children instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$children) then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$children;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$children.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$children;

  TRes call({
    Mutation$createOffer$createOffer$data$offer$children$buyer? buyer,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? status,
    DateTime? updatedAt,
    String? updatedBy,
    String? offerPrice,
    String? message,
    String? $__typename,
  });
  CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<TRes>
      get buyer;
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$children<TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$children<TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$children(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$children _instance;

  final TRes Function(Mutation$createOffer$createOffer$data$offer$children)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buyer = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? offerPrice = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$children(
        buyer: buyer == _undefined
            ? _instance.buyer
            : (buyer
                as Mutation$createOffer$createOffer$data$offer$children$buyer?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined ? _instance.status : (status as String?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        updatedBy: updatedBy == _undefined
            ? _instance.updatedBy
            : (updatedBy as String?),
        offerPrice: offerPrice == _undefined || offerPrice == null
            ? _instance.offerPrice
            : (offerPrice as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<TRes>
      get buyer {
    final local$buyer = _instance.buyer;
    return local$buyer == null
        ? CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer
            .stub(_then(_instance))
        : CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer(
            local$buyer, (e) => call(buyer: e));
  }
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$children<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$children<TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$children(
      this._res);

  TRes _res;

  call({
    Mutation$createOffer$createOffer$data$offer$children$buyer? buyer,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? status,
    DateTime? updatedAt,
    String? updatedBy,
    String? offerPrice,
    String? message,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<TRes>
      get buyer =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer
              .stub(_res);
}

class Mutation$createOffer$createOffer$data$offer$children$buyer {
  Mutation$createOffer$createOffer$data$offer$children$buyer({
    this.username,
    this.thumbnailUrl,
    this.profilePictureUrl,
    this.fullName,
    this.$__typename = 'UserType',
  });

  factory Mutation$createOffer$createOffer$data$offer$children$buyer.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$children$buyer(
      username: (l$username as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      fullName: (l$fullName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? username;

  final String? thumbnailUrl;

  final String? profilePictureUrl;

  final String? fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$thumbnailUrl = thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$thumbnailUrl,
      l$profilePictureUrl,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data$offer$children$buyer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$children$buyer
    on Mutation$createOffer$createOffer$data$offer$children$buyer {
  CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<
          Mutation$createOffer$createOffer$data$offer$children$buyer>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer(
    Mutation$createOffer$createOffer$data$offer$children$buyer instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$children$buyer)
        then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$children$buyer;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$children$buyer;

  TRes call({
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$children$buyer<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<
            TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$children$buyer(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$children$buyer _instance;

  final TRes Function(
      Mutation$createOffer$createOffer$data$offer$children$buyer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$children$buyer(
        username:
            username == _undefined ? _instance.username : (username as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$children$buyer<
        TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$children$buyer<
            TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$children$buyer(
      this._res);

  TRes _res;

  call({
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createOffer$createOffer$data$offer$buyer {
  Mutation$createOffer$createOffer$data$offer$buyer({
    this.username,
    this.thumbnailUrl,
    this.displayName,
    this.fullName,
    this.$__typename = 'UserType',
  });

  factory Mutation$createOffer$createOffer$data$offer$buyer.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Mutation$createOffer$createOffer$data$offer$buyer(
      username: (l$username as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      displayName: (l$displayName as String?),
      fullName: (l$fullName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? username;

  final String? thumbnailUrl;

  final String? displayName;

  final String? fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$thumbnailUrl = thumbnailUrl;
    final l$displayName = displayName;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$thumbnailUrl,
      l$displayName,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createOffer$createOffer$data$offer$buyer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
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

extension UtilityExtension$Mutation$createOffer$createOffer$data$offer$buyer
    on Mutation$createOffer$createOffer$data$offer$buyer {
  CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<
          Mutation$createOffer$createOffer$data$offer$buyer>
      get copyWith =>
          CopyWith$Mutation$createOffer$createOffer$data$offer$buyer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<
    TRes> {
  factory CopyWith$Mutation$createOffer$createOffer$data$offer$buyer(
    Mutation$createOffer$createOffer$data$offer$buyer instance,
    TRes Function(Mutation$createOffer$createOffer$data$offer$buyer) then,
  ) = _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$buyer;

  factory CopyWith$Mutation$createOffer$createOffer$data$offer$buyer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$buyer;

  TRes call({
    String? username,
    String? thumbnailUrl,
    String? displayName,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$buyer<TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<TRes> {
  _CopyWithImpl$Mutation$createOffer$createOffer$data$offer$buyer(
    this._instance,
    this._then,
  );

  final Mutation$createOffer$createOffer$data$offer$buyer _instance;

  final TRes Function(Mutation$createOffer$createOffer$data$offer$buyer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayName = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createOffer$createOffer$data$offer$buyer(
        username:
            username == _undefined ? _instance.username : (username as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$buyer<TRes>
    implements
        CopyWith$Mutation$createOffer$createOffer$data$offer$buyer<TRes> {
  _CopyWithStubImpl$Mutation$createOffer$createOffer$data$offer$buyer(
      this._res);

  TRes _res;

  call({
    String? username,
    String? thumbnailUrl,
    String? displayName,
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RespondToOffer {
  factory Variables$Mutation$RespondToOffer({
    required Enum$OfferActionEnum action,
    required int offerId,
    double? offerPrice,
  }) =>
      Variables$Mutation$RespondToOffer._({
        r'action': action,
        r'offerId': offerId,
        if (offerPrice != null) r'offerPrice': offerPrice,
      });

  Variables$Mutation$RespondToOffer._(this._$data);

  factory Variables$Mutation$RespondToOffer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$action = data['action'];
    result$data['action'] = fromJson$Enum$OfferActionEnum((l$action as String));
    final l$offerId = data['offerId'];
    result$data['offerId'] = (l$offerId as int);
    if (data.containsKey('offerPrice')) {
      final l$offerPrice = data['offerPrice'];
      result$data['offerPrice'] = (l$offerPrice as num?)?.toDouble();
    }
    return Variables$Mutation$RespondToOffer._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OfferActionEnum get action => (_$data['action'] as Enum$OfferActionEnum);

  int get offerId => (_$data['offerId'] as int);

  double? get offerPrice => (_$data['offerPrice'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$action = action;
    result$data['action'] = toJson$Enum$OfferActionEnum(l$action);
    final l$offerId = offerId;
    result$data['offerId'] = l$offerId;
    if (_$data.containsKey('offerPrice')) {
      final l$offerPrice = offerPrice;
      result$data['offerPrice'] = l$offerPrice;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$RespondToOffer<Variables$Mutation$RespondToOffer>
      get copyWith => CopyWith$Variables$Mutation$RespondToOffer(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RespondToOffer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$offerId = offerId;
    final lOther$offerId = other.offerId;
    if (l$offerId != lOther$offerId) {
      return false;
    }
    final l$offerPrice = offerPrice;
    final lOther$offerPrice = other.offerPrice;
    if (_$data.containsKey('offerPrice') !=
        other._$data.containsKey('offerPrice')) {
      return false;
    }
    if (l$offerPrice != lOther$offerPrice) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$action = action;
    final l$offerId = offerId;
    final l$offerPrice = offerPrice;
    return Object.hashAll([
      l$action,
      l$offerId,
      _$data.containsKey('offerPrice') ? l$offerPrice : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$RespondToOffer<TRes> {
  factory CopyWith$Variables$Mutation$RespondToOffer(
    Variables$Mutation$RespondToOffer instance,
    TRes Function(Variables$Mutation$RespondToOffer) then,
  ) = _CopyWithImpl$Variables$Mutation$RespondToOffer;

  factory CopyWith$Variables$Mutation$RespondToOffer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RespondToOffer;

  TRes call({
    Enum$OfferActionEnum? action,
    int? offerId,
    double? offerPrice,
  });
}

class _CopyWithImpl$Variables$Mutation$RespondToOffer<TRes>
    implements CopyWith$Variables$Mutation$RespondToOffer<TRes> {
  _CopyWithImpl$Variables$Mutation$RespondToOffer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RespondToOffer _instance;

  final TRes Function(Variables$Mutation$RespondToOffer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? action = _undefined,
    Object? offerId = _undefined,
    Object? offerPrice = _undefined,
  }) =>
      _then(Variables$Mutation$RespondToOffer._({
        ..._instance._$data,
        if (action != _undefined && action != null)
          'action': (action as Enum$OfferActionEnum),
        if (offerId != _undefined && offerId != null)
          'offerId': (offerId as int),
        if (offerPrice != _undefined) 'offerPrice': (offerPrice as double?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RespondToOffer<TRes>
    implements CopyWith$Variables$Mutation$RespondToOffer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RespondToOffer(this._res);

  TRes _res;

  call({
    Enum$OfferActionEnum? action,
    int? offerId,
    double? offerPrice,
  }) =>
      _res;
}

class Mutation$RespondToOffer {
  Mutation$RespondToOffer({
    this.respondToOffer,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RespondToOffer.fromJson(Map<String, dynamic> json) {
    final l$respondToOffer = json['respondToOffer'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer(
      respondToOffer: l$respondToOffer == null
          ? null
          : Mutation$RespondToOffer$respondToOffer.fromJson(
              (l$respondToOffer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RespondToOffer$respondToOffer? respondToOffer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$respondToOffer = respondToOffer;
    _resultData['respondToOffer'] = l$respondToOffer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$respondToOffer = respondToOffer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$respondToOffer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$respondToOffer = respondToOffer;
    final lOther$respondToOffer = other.respondToOffer;
    if (l$respondToOffer != lOther$respondToOffer) {
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

extension UtilityExtension$Mutation$RespondToOffer on Mutation$RespondToOffer {
  CopyWith$Mutation$RespondToOffer<Mutation$RespondToOffer> get copyWith =>
      CopyWith$Mutation$RespondToOffer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RespondToOffer<TRes> {
  factory CopyWith$Mutation$RespondToOffer(
    Mutation$RespondToOffer instance,
    TRes Function(Mutation$RespondToOffer) then,
  ) = _CopyWithImpl$Mutation$RespondToOffer;

  factory CopyWith$Mutation$RespondToOffer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer;

  TRes call({
    Mutation$RespondToOffer$respondToOffer? respondToOffer,
    String? $__typename,
  });
  CopyWith$Mutation$RespondToOffer$respondToOffer<TRes> get respondToOffer;
}

class _CopyWithImpl$Mutation$RespondToOffer<TRes>
    implements CopyWith$Mutation$RespondToOffer<TRes> {
  _CopyWithImpl$Mutation$RespondToOffer(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer _instance;

  final TRes Function(Mutation$RespondToOffer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? respondToOffer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer(
        respondToOffer: respondToOffer == _undefined
            ? _instance.respondToOffer
            : (respondToOffer as Mutation$RespondToOffer$respondToOffer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RespondToOffer$respondToOffer<TRes> get respondToOffer {
    final local$respondToOffer = _instance.respondToOffer;
    return local$respondToOffer == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer.stub(_then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer(
            local$respondToOffer, (e) => call(respondToOffer: e));
  }
}

class _CopyWithStubImpl$Mutation$RespondToOffer<TRes>
    implements CopyWith$Mutation$RespondToOffer<TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer(this._res);

  TRes _res;

  call({
    Mutation$RespondToOffer$respondToOffer? respondToOffer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RespondToOffer$respondToOffer<TRes> get respondToOffer =>
      CopyWith$Mutation$RespondToOffer$respondToOffer.stub(_res);
}

const documentNodeMutationRespondToOffer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RespondToOffer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'action')),
        type: NamedTypeNode(
          name: NameNode(value: 'OfferActionEnum'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offerPrice')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'respondToOffer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'action'),
            value: VariableNode(name: NameNode(value: 'action')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offerId'),
            value: VariableNode(name: NameNode(value: 'offerId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offerPrice'),
            value: VariableNode(name: NameNode(value: 'offerPrice')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'conversationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'offer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'products'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'id'),
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
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'size'),
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
                        name: NameNode(value: 'updatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'seller'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'email'),
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
                            name: NameNode(value: 'username'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'thumbnailUrl'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'updatedBy'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'expiresAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdBy'),
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
                    name: NameNode(value: 'offerPrice'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'message'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'children'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'buyer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'username'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'thumbnailUrl'),
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
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
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
                        name: NameNode(value: 'updatedBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'offerPrice'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'message'),
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
                    name: NameNode(value: 'buyer'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'thumbnailUrl'),
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
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$RespondToOffer _parserFn$Mutation$RespondToOffer(
        Map<String, dynamic> data) =>
    Mutation$RespondToOffer.fromJson(data);
typedef OnMutationCompleted$Mutation$RespondToOffer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RespondToOffer?,
);

class Options$Mutation$RespondToOffer
    extends graphql.MutationOptions<Mutation$RespondToOffer> {
  Options$Mutation$RespondToOffer({
    String? operationName,
    required Variables$Mutation$RespondToOffer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RespondToOffer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RespondToOffer? onCompleted,
    graphql.OnMutationUpdate<Mutation$RespondToOffer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$RespondToOffer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRespondToOffer,
          parserFn: _parserFn$Mutation$RespondToOffer,
        );

  final OnMutationCompleted$Mutation$RespondToOffer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RespondToOffer
    extends graphql.WatchQueryOptions<Mutation$RespondToOffer> {
  WatchOptions$Mutation$RespondToOffer({
    String? operationName,
    required Variables$Mutation$RespondToOffer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RespondToOffer? typedOptimisticResult,
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
          document: documentNodeMutationRespondToOffer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RespondToOffer,
        );
}

extension ClientExtension$Mutation$RespondToOffer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RespondToOffer>> mutate$RespondToOffer(
          Options$Mutation$RespondToOffer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RespondToOffer> watchMutation$RespondToOffer(
          WatchOptions$Mutation$RespondToOffer options) =>
      this.watchMutation(options);
}

class Mutation$RespondToOffer$respondToOffer {
  Mutation$RespondToOffer$respondToOffer({
    this.data,
    this.message,
    this.success,
    this.$__typename = 'RespondToOffer',
  });

  factory Mutation$RespondToOffer$respondToOffer.fromJson(
      Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$message = json['message'];
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer(
      data: l$data == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data.fromJson(
              (l$data as Map<String, dynamic>)),
      message: (l$message as String?),
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RespondToOffer$respondToOffer$data? data;

  final String? message;

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$message = message;
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data,
      l$message,
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer$respondToOffer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer
    on Mutation$RespondToOffer$respondToOffer {
  CopyWith$Mutation$RespondToOffer$respondToOffer<
          Mutation$RespondToOffer$respondToOffer>
      get copyWith => CopyWith$Mutation$RespondToOffer$respondToOffer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer<TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer(
    Mutation$RespondToOffer$respondToOffer instance,
    TRes Function(Mutation$RespondToOffer$respondToOffer) then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer;

  TRes call({
    Mutation$RespondToOffer$respondToOffer$data? data,
    String? message,
    bool? success,
    String? $__typename,
  });
  CopyWith$Mutation$RespondToOffer$respondToOffer$data<TRes> get data;
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer<TRes>
    implements CopyWith$Mutation$RespondToOffer$respondToOffer<TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer _instance;

  final TRes Function(Mutation$RespondToOffer$respondToOffer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? message = _undefined,
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer(
        data: data == _undefined
            ? _instance.data
            : (data as Mutation$RespondToOffer$respondToOffer$data?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RespondToOffer$respondToOffer$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data.stub(
            _then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data(
            local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer<TRes>
    implements CopyWith$Mutation$RespondToOffer$respondToOffer<TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer(this._res);

  TRes _res;

  call({
    Mutation$RespondToOffer$respondToOffer$data? data,
    String? message,
    bool? success,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RespondToOffer$respondToOffer$data<TRes> get data =>
      CopyWith$Mutation$RespondToOffer$respondToOffer$data.stub(_res);
}

class Mutation$RespondToOffer$respondToOffer$data {
  Mutation$RespondToOffer$respondToOffer$data({
    this.conversationId,
    this.offer,
    this.$__typename = 'OfferReturnType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data.fromJson(
      Map<String, dynamic> json) {
    final l$conversationId = json['conversationId'];
    final l$offer = json['offer'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data(
      conversationId: (l$conversationId as int?),
      offer: (l$offer as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$RespondToOffer$respondToOffer$data$offer.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? conversationId;

  final List<Mutation$RespondToOffer$respondToOffer$data$offer?>? offer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conversationId = conversationId;
    _resultData['conversationId'] = l$conversationId;
    final l$offer = offer;
    _resultData['offer'] = l$offer?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conversationId = conversationId;
    final l$offer = offer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$conversationId,
      l$offer == null ? null : Object.hashAll(l$offer.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer$respondToOffer$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversationId = conversationId;
    final lOther$conversationId = other.conversationId;
    if (l$conversationId != lOther$conversationId) {
      return false;
    }
    final l$offer = offer;
    final lOther$offer = other.offer;
    if (l$offer != null && lOther$offer != null) {
      if (l$offer.length != lOther$offer.length) {
        return false;
      }
      for (int i = 0; i < l$offer.length; i++) {
        final l$offer$entry = l$offer[i];
        final lOther$offer$entry = lOther$offer[i];
        if (l$offer$entry != lOther$offer$entry) {
          return false;
        }
      }
    } else if (l$offer != lOther$offer) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data
    on Mutation$RespondToOffer$respondToOffer$data {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data<
          Mutation$RespondToOffer$respondToOffer$data>
      get copyWith => CopyWith$Mutation$RespondToOffer$respondToOffer$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data<TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data(
    Mutation$RespondToOffer$respondToOffer$data instance,
    TRes Function(Mutation$RespondToOffer$respondToOffer$data) then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data;

  TRes call({
    int? conversationId,
    List<Mutation$RespondToOffer$respondToOffer$data$offer?>? offer,
    String? $__typename,
  });
  TRes offer(
      Iterable<Mutation$RespondToOffer$respondToOffer$data$offer?>? Function(
              Iterable<
                  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer<
                      Mutation$RespondToOffer$respondToOffer$data$offer>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data<TRes>
    implements CopyWith$Mutation$RespondToOffer$respondToOffer$data<TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data _instance;

  final TRes Function(Mutation$RespondToOffer$respondToOffer$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? conversationId = _undefined,
    Object? offer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data(
        conversationId: conversationId == _undefined
            ? _instance.conversationId
            : (conversationId as int?),
        offer: offer == _undefined
            ? _instance.offer
            : (offer
                as List<Mutation$RespondToOffer$respondToOffer$data$offer?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes offer(
          Iterable<Mutation$RespondToOffer$respondToOffer$data$offer?>? Function(
                  Iterable<
                      CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer<
                          Mutation$RespondToOffer$respondToOffer$data$offer>?>?)
              _fn) =>
      call(
          offer: _fn(_instance.offer?.map((e) => e == null
              ? null
              : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data<TRes>
    implements CopyWith$Mutation$RespondToOffer$respondToOffer$data<TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data(this._res);

  TRes _res;

  call({
    int? conversationId,
    List<Mutation$RespondToOffer$respondToOffer$data$offer?>? offer,
    String? $__typename,
  }) =>
      _res;

  offer(_fn) => _res;
}

class Mutation$RespondToOffer$respondToOffer$data$offer {
  Mutation$RespondToOffer$respondToOffer$data$offer({
    required this.products,
    this.status,
    this.updatedBy,
    required this.updatedAt,
    required this.id,
    this.expiresAt,
    this.createdBy,
    required this.createdAt,
    required this.offerPrice,
    this.message,
    required this.children,
    this.buyer,
    this.$__typename = 'OfferType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer.fromJson(
      Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$status = json['status'];
    final l$updatedBy = json['updatedBy'];
    final l$updatedAt = json['updatedAt'];
    final l$id = json['id'];
    final l$expiresAt = json['expiresAt'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$offerPrice = json['offerPrice'];
    final l$message = json['message'];
    final l$children = json['children'];
    final l$buyer = json['buyer'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer(
      products: (l$products as List<dynamic>)
          .map((e) => Mutation$RespondToOffer$respondToOffer$data$offer$products
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      status: (l$status as String?),
      updatedBy: (l$updatedBy as String?),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      id: (l$id as String),
      expiresAt:
          l$expiresAt == null ? null : DateTime.parse((l$expiresAt as String)),
      createdBy: (l$createdBy as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      offerPrice: (l$offerPrice as String),
      message: (l$message as String?),
      children: (l$children as List<dynamic>)
          .map((e) => Mutation$RespondToOffer$respondToOffer$data$offer$children
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      buyer: l$buyer == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data$offer$buyer.fromJson(
              (l$buyer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$RespondToOffer$respondToOffer$data$offer$products>
      products;

  final String? status;

  final String? updatedBy;

  final DateTime updatedAt;

  final String id;

  final DateTime? expiresAt;

  final String? createdBy;

  final DateTime createdAt;

  final String offerPrice;

  final String? message;

  final List<Mutation$RespondToOffer$respondToOffer$data$offer$children>
      children;

  final Mutation$RespondToOffer$respondToOffer$data$offer$buyer? buyer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$products = products;
    _resultData['products'] = l$products.map((e) => e.toJson()).toList();
    final l$status = status;
    _resultData['status'] = l$status;
    final l$updatedBy = updatedBy;
    _resultData['updatedBy'] = l$updatedBy;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = l$expiresAt?.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$offerPrice = offerPrice;
    _resultData['offerPrice'] = l$offerPrice;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$buyer = buyer;
    _resultData['buyer'] = l$buyer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$status = status;
    final l$updatedBy = updatedBy;
    final l$updatedAt = updatedAt;
    final l$id = id;
    final l$expiresAt = expiresAt;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$offerPrice = offerPrice;
    final l$message = message;
    final l$children = children;
    final l$buyer = buyer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$products.map((v) => v)),
      l$status,
      l$updatedBy,
      l$updatedAt,
      l$id,
      l$expiresAt,
      l$createdBy,
      l$createdAt,
      l$offerPrice,
      l$message,
      Object.hashAll(l$children.map((v) => v)),
      l$buyer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer$respondToOffer$data$offer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products.length != lOther$products.length) {
      return false;
    }
    for (int i = 0; i < l$products.length; i++) {
      final l$products$entry = l$products[i];
      final lOther$products$entry = lOther$products[i];
      if (l$products$entry != lOther$products$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$offerPrice = offerPrice;
    final lOther$offerPrice = other.offerPrice;
    if (l$offerPrice != lOther$offerPrice) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children.length != lOther$children.length) {
      return false;
    }
    for (int i = 0; i < l$children.length; i++) {
      final l$children$entry = l$children[i];
      final lOther$children$entry = lOther$children[i];
      if (l$children$entry != lOther$children$entry) {
        return false;
      }
    }
    final l$buyer = buyer;
    final lOther$buyer = other.buyer;
    if (l$buyer != lOther$buyer) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer
    on Mutation$RespondToOffer$respondToOffer$data$offer {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer<
          Mutation$RespondToOffer$respondToOffer$data$offer>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer(
    Mutation$RespondToOffer$respondToOffer$data$offer instance,
    TRes Function(Mutation$RespondToOffer$respondToOffer$data$offer) then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer;

  TRes call({
    List<Mutation$RespondToOffer$respondToOffer$data$offer$products>? products,
    String? status,
    String? updatedBy,
    DateTime? updatedAt,
    String? id,
    DateTime? expiresAt,
    String? createdBy,
    DateTime? createdAt,
    String? offerPrice,
    String? message,
    List<Mutation$RespondToOffer$respondToOffer$data$offer$children>? children,
    Mutation$RespondToOffer$respondToOffer$data$offer$buyer? buyer,
    String? $__typename,
  });
  TRes products(
      Iterable<Mutation$RespondToOffer$respondToOffer$data$offer$products> Function(
              Iterable<
                  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products<
                      Mutation$RespondToOffer$respondToOffer$data$offer$products>>)
          _fn);
  TRes children(
      Iterable<Mutation$RespondToOffer$respondToOffer$data$offer$children> Function(
              Iterable<
                  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children<
                      Mutation$RespondToOffer$respondToOffer$data$offer$children>>)
          _fn);
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<TRes>
      get buyer;
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer<TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer<TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer _instance;

  final TRes Function(Mutation$RespondToOffer$respondToOffer$data$offer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? status = _undefined,
    Object? updatedBy = _undefined,
    Object? updatedAt = _undefined,
    Object? id = _undefined,
    Object? expiresAt = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? offerPrice = _undefined,
    Object? message = _undefined,
    Object? children = _undefined,
    Object? buyer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer(
        products: products == _undefined || products == null
            ? _instance.products
            : (products as List<
                Mutation$RespondToOffer$respondToOffer$data$offer$products>),
        status: status == _undefined ? _instance.status : (status as String?),
        updatedBy: updatedBy == _undefined
            ? _instance.updatedBy
            : (updatedBy as String?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        expiresAt: expiresAt == _undefined
            ? _instance.expiresAt
            : (expiresAt as DateTime?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        offerPrice: offerPrice == _undefined || offerPrice == null
            ? _instance.offerPrice
            : (offerPrice as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        children: children == _undefined || children == null
            ? _instance.children
            : (children as List<
                Mutation$RespondToOffer$respondToOffer$data$offer$children>),
        buyer: buyer == _undefined
            ? _instance.buyer
            : (buyer
                as Mutation$RespondToOffer$respondToOffer$data$offer$buyer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes products(
          Iterable<Mutation$RespondToOffer$respondToOffer$data$offer$products> Function(
                  Iterable<
                      CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products<
                          Mutation$RespondToOffer$respondToOffer$data$offer$products>>)
              _fn) =>
      call(
          products: _fn(_instance.products.map((e) =>
              CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products(
                e,
                (i) => i,
              ))).toList());

  TRes children(
          Iterable<Mutation$RespondToOffer$respondToOffer$data$offer$children> Function(
                  Iterable<
                      CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children<
                          Mutation$RespondToOffer$respondToOffer$data$offer$children>>)
              _fn) =>
      call(
          children: _fn(_instance.children.map((e) =>
              CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<TRes>
      get buyer {
    final local$buyer = _instance.buyer;
    return local$buyer == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer.stub(
            _then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
            local$buyer, (e) => call(buyer: e));
  }
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer<TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer<TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer(
      this._res);

  TRes _res;

  call({
    List<Mutation$RespondToOffer$respondToOffer$data$offer$products>? products,
    String? status,
    String? updatedBy,
    DateTime? updatedAt,
    String? id,
    DateTime? expiresAt,
    String? createdBy,
    DateTime? createdAt,
    String? offerPrice,
    String? message,
    List<Mutation$RespondToOffer$respondToOffer$data$offer$children>? children,
    Mutation$RespondToOffer$respondToOffer$data$offer$buyer? buyer,
    String? $__typename,
  }) =>
      _res;

  products(_fn) => _res;

  children(_fn) => _res;

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<TRes>
      get buyer =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer.stub(
              _res);
}

class Mutation$RespondToOffer$respondToOffer$data$offer$products {
  Mutation$RespondToOffer$respondToOffer$data$offer$products({
    this.brand,
    this.category,
    required this.id,
    required this.imagesUrl,
    required this.name,
    this.price,
    this.size,
    required this.updatedAt,
    required this.status,
    this.seller,
    this.$__typename = 'ProductType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$products.fromJson(
      Map<String, dynamic> json) {
    final l$brand = json['brand'];
    final l$category = json['category'];
    final l$id = json['id'];
    final l$imagesUrl = json['imagesUrl'];
    final l$name = json['name'];
    final l$price = json['price'];
    final l$size = json['size'];
    final l$updatedAt = json['updatedAt'];
    final l$status = json['status'];
    final l$seller = json['seller'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$products(
      brand: l$brand == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data$offer$products$brand
              .fromJson((l$brand as Map<String, dynamic>)),
      category: l$category == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data$offer$products$category
              .fromJson((l$category as Map<String, dynamic>)),
      id: (l$id as String),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      name: (l$name as String),
      price: (l$price as num?)?.toDouble(),
      size: l$size == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data$offer$products$size
              .fromJson((l$size as Map<String, dynamic>)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      status: fromJson$Enum$ProductsProductStatusChoices((l$status as String)),
      seller: l$seller == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data$offer$products$seller
              .fromJson((l$seller as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$brand? brand;

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$category?
      category;

  final String id;

  final List<String> imagesUrl;

  final String name;

  final double? price;

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$size? size;

  final DateTime updatedAt;

  final Enum$ProductsProductStatusChoices status;

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$seller?
      seller;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$brand = brand;
    _resultData['brand'] = l$brand?.toJson();
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$size = size;
    _resultData['size'] = l$size?.toJson();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$status = status;
    _resultData['status'] = toJson$Enum$ProductsProductStatusChoices(l$status);
    final l$seller = seller;
    _resultData['seller'] = l$seller?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$brand = brand;
    final l$category = category;
    final l$id = id;
    final l$imagesUrl = imagesUrl;
    final l$name = name;
    final l$price = price;
    final l$size = size;
    final l$updatedAt = updatedAt;
    final l$status = status;
    final l$seller = seller;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$brand,
      l$category,
      l$id,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$name,
      l$price,
      l$size,
      l$updatedAt,
      l$status,
      l$seller,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer$respondToOffer$data$offer$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$products
    on Mutation$RespondToOffer$respondToOffer$data$offer$products {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products<
          Mutation$RespondToOffer$respondToOffer$data$offer$products>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products(
    Mutation$RespondToOffer$respondToOffer$data$offer$products instance,
    TRes Function(Mutation$RespondToOffer$respondToOffer$data$offer$products)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products;

  TRes call({
    Mutation$RespondToOffer$respondToOffer$data$offer$products$brand? brand,
    Mutation$RespondToOffer$respondToOffer$data$offer$products$category?
        category,
    String? id,
    List<String>? imagesUrl,
    String? name,
    double? price,
    Mutation$RespondToOffer$respondToOffer$data$offer$products$size? size,
    DateTime? updatedAt,
    Enum$ProductsProductStatusChoices? status,
    Mutation$RespondToOffer$respondToOffer$data$offer$products$seller? seller,
    String? $__typename,
  });
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
      TRes> get brand;
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
      TRes> get category;
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<TRes>
      get size;
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
      TRes> get seller;
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$products _instance;

  final TRes Function(
      Mutation$RespondToOffer$respondToOffer$data$offer$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? brand = _undefined,
    Object? category = _undefined,
    Object? id = _undefined,
    Object? imagesUrl = _undefined,
    Object? name = _undefined,
    Object? price = _undefined,
    Object? size = _undefined,
    Object? updatedAt = _undefined,
    Object? status = _undefined,
    Object? seller = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$products(
        brand: brand == _undefined
            ? _instance.brand
            : (brand
                as Mutation$RespondToOffer$respondToOffer$data$offer$products$brand?),
        category: category == _undefined
            ? _instance.category
            : (category
                as Mutation$RespondToOffer$respondToOffer$data$offer$products$category?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        price: price == _undefined ? _instance.price : (price as double?),
        size: size == _undefined
            ? _instance.size
            : (size
                as Mutation$RespondToOffer$respondToOffer$data$offer$products$size?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ProductsProductStatusChoices),
        seller: seller == _undefined
            ? _instance.seller
            : (seller
                as Mutation$RespondToOffer$respondToOffer$data$offer$products$seller?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
      TRes> get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand
            .stub(_then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
            local$brand, (e) => call(brand: e));
  }

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
      TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category
            .stub(_then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<TRes>
      get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size
            .stub(_then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
            local$size, (e) => call(size: e));
  }

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
      TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller
            .stub(_then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
            local$seller, (e) => call(seller: e));
  }
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products(
      this._res);

  TRes _res;

  call({
    Mutation$RespondToOffer$respondToOffer$data$offer$products$brand? brand,
    Mutation$RespondToOffer$respondToOffer$data$offer$products$category?
        category,
    String? id,
    List<String>? imagesUrl,
    String? name,
    double? price,
    Mutation$RespondToOffer$respondToOffer$data$offer$products$size? size,
    DateTime? updatedAt,
    Enum$ProductsProductStatusChoices? status,
    Mutation$RespondToOffer$respondToOffer$data$offer$products$seller? seller,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
          TRes>
      get brand =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand
              .stub(_res);

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
          TRes>
      get category =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category
              .stub(_res);

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<TRes>
      get size =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size
              .stub(_res);

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
          TRes>
      get seller =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller
              .stub(_res);
}

class Mutation$RespondToOffer$respondToOffer$data$offer$products$brand {
  Mutation$RespondToOffer$respondToOffer$data$offer$products$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$products$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
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
    if (other
            is! Mutation$RespondToOffer$respondToOffer$data$offer$products$brand ||
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand
    on Mutation$RespondToOffer$respondToOffer$data$offer$products$brand {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
          Mutation$RespondToOffer$respondToOffer$data$offer$products$brand>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
    Mutation$RespondToOffer$respondToOffer$data$offer$products$brand instance,
    TRes Function(
            Mutation$RespondToOffer$respondToOffer$data$offer$products$brand)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$brand
      _instance;

  final TRes Function(
      Mutation$RespondToOffer$respondToOffer$data$offer$products$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$brand(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$RespondToOffer$respondToOffer$data$offer$products$category {
  Mutation$RespondToOffer$respondToOffer$data$offer$products$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$products$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
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
    if (other
            is! Mutation$RespondToOffer$respondToOffer$data$offer$products$category ||
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$products$category
    on Mutation$RespondToOffer$respondToOffer$data$offer$products$category {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
          Mutation$RespondToOffer$respondToOffer$data$offer$products$category>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
    Mutation$RespondToOffer$respondToOffer$data$offer$products$category
        instance,
    TRes Function(
            Mutation$RespondToOffer$respondToOffer$data$offer$products$category)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$category;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$category
      _instance;

  final TRes Function(
          Mutation$RespondToOffer$respondToOffer$data$offer$products$category)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$category<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$RespondToOffer$respondToOffer$data$offer$products$size {
  Mutation$RespondToOffer$respondToOffer$data$offer$products$size({
    this.id,
    this.name,
    this.$__typename = 'SizeType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$products$size.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
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
    if (other
            is! Mutation$RespondToOffer$respondToOffer$data$offer$products$size ||
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$products$size
    on Mutation$RespondToOffer$respondToOffer$data$offer$products$size {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<
          Mutation$RespondToOffer$respondToOffer$data$offer$products$size>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
    Mutation$RespondToOffer$respondToOffer$data$offer$products$size instance,
    TRes Function(
            Mutation$RespondToOffer$respondToOffer$data$offer$products$size)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$size;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$size;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$size
      _instance;

  final TRes Function(
      Mutation$RespondToOffer$respondToOffer$data$offer$products$size) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$size<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$size(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$RespondToOffer$respondToOffer$data$offer$products$seller {
  Mutation$RespondToOffer$respondToOffer$data$offer$products$seller({
    this.email,
    this.fullName,
    this.username,
    this.thumbnailUrl,
    this.profilePictureUrl,
    this.$__typename = 'UserType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$products$seller.fromJson(
      Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$username = json['username'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
      email: (l$email as String?),
      fullName: (l$fullName as String?),
      username: (l$username as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? email;

  final String? fullName;

  final String? username;

  final String? thumbnailUrl;

  final String? profilePictureUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$fullName = fullName;
    final l$username = username;
    final l$thumbnailUrl = thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$fullName,
      l$username,
      l$thumbnailUrl,
      l$profilePictureUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$RespondToOffer$respondToOffer$data$offer$products$seller ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller
    on Mutation$RespondToOffer$respondToOffer$data$offer$products$seller {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
          Mutation$RespondToOffer$respondToOffer$data$offer$products$seller>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
    Mutation$RespondToOffer$respondToOffer$data$offer$products$seller instance,
    TRes Function(
            Mutation$RespondToOffer$respondToOffer$data$offer$products$seller)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller;

  TRes call({
    String? email,
    String? fullName,
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$products$seller
      _instance;

  final TRes Function(
      Mutation$RespondToOffer$respondToOffer$data$offer$products$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? fullName = _undefined,
    Object? username = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
        email: email == _undefined ? _instance.email : (email as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$products$seller(
      this._res);

  TRes _res;

  call({
    String? email,
    String? fullName,
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$RespondToOffer$respondToOffer$data$offer$children {
  Mutation$RespondToOffer$respondToOffer$data$offer$children({
    this.buyer,
    required this.createdAt,
    this.createdBy,
    required this.id,
    this.status,
    required this.updatedAt,
    this.updatedBy,
    required this.offerPrice,
    this.message,
    this.$__typename = 'OfferType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$children.fromJson(
      Map<String, dynamic> json) {
    final l$buyer = json['buyer'];
    final l$createdAt = json['createdAt'];
    final l$createdBy = json['createdBy'];
    final l$id = json['id'];
    final l$status = json['status'];
    final l$updatedAt = json['updatedAt'];
    final l$updatedBy = json['updatedBy'];
    final l$offerPrice = json['offerPrice'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$children(
      buyer: l$buyer == null
          ? null
          : Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer
              .fromJson((l$buyer as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      createdBy: (l$createdBy as String?),
      id: (l$id as String),
      status: (l$status as String?),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      updatedBy: (l$updatedBy as String?),
      offerPrice: (l$offerPrice as String),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer? buyer;

  final DateTime createdAt;

  final String? createdBy;

  final String id;

  final String? status;

  final DateTime updatedAt;

  final String? updatedBy;

  final String offerPrice;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buyer = buyer;
    _resultData['buyer'] = l$buyer?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$updatedBy = updatedBy;
    _resultData['updatedBy'] = l$updatedBy;
    final l$offerPrice = offerPrice;
    _resultData['offerPrice'] = l$offerPrice;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$buyer = buyer;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$status = status;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$offerPrice = offerPrice;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$buyer,
      l$createdAt,
      l$createdBy,
      l$id,
      l$status,
      l$updatedAt,
      l$updatedBy,
      l$offerPrice,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer$respondToOffer$data$offer$children ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buyer = buyer;
    final lOther$buyer = other.buyer;
    if (l$buyer != lOther$buyer) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$offerPrice = offerPrice;
    final lOther$offerPrice = other.offerPrice;
    if (l$offerPrice != lOther$offerPrice) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$children
    on Mutation$RespondToOffer$respondToOffer$data$offer$children {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children<
          Mutation$RespondToOffer$respondToOffer$data$offer$children>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children(
    Mutation$RespondToOffer$respondToOffer$data$offer$children instance,
    TRes Function(Mutation$RespondToOffer$respondToOffer$data$offer$children)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children;

  TRes call({
    Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer? buyer,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? status,
    DateTime? updatedAt,
    String? updatedBy,
    String? offerPrice,
    String? message,
    String? $__typename,
  });
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
      TRes> get buyer;
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$children _instance;

  final TRes Function(
      Mutation$RespondToOffer$respondToOffer$data$offer$children) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buyer = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? offerPrice = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$children(
        buyer: buyer == _undefined
            ? _instance.buyer
            : (buyer
                as Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined ? _instance.status : (status as String?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        updatedBy: updatedBy == _undefined
            ? _instance.updatedBy
            : (updatedBy as String?),
        offerPrice: offerPrice == _undefined || offerPrice == null
            ? _instance.offerPrice
            : (offerPrice as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
      TRes> get buyer {
    final local$buyer = _instance.buyer;
    return local$buyer == null
        ? CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer
            .stub(_then(_instance))
        : CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
            local$buyer, (e) => call(buyer: e));
  }
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children(
      this._res);

  TRes _res;

  call({
    Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer? buyer,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? status,
    DateTime? updatedAt,
    String? updatedBy,
    String? offerPrice,
    String? message,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
          TRes>
      get buyer =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer
              .stub(_res);
}

class Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer {
  Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer({
    this.username,
    this.thumbnailUrl,
    this.profilePictureUrl,
    this.fullName,
    this.$__typename = 'UserType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
      username: (l$username as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      fullName: (l$fullName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? username;

  final String? thumbnailUrl;

  final String? profilePictureUrl;

  final String? fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$thumbnailUrl = thumbnailUrl;
    final l$profilePictureUrl = profilePictureUrl;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$thumbnailUrl,
      l$profilePictureUrl,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer
    on Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
          Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
    Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer instance,
    TRes Function(
            Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer)
        then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer;

  TRes call({
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
            TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer
      _instance;

  final TRes Function(
      Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
        username:
            username == _undefined ? _instance.username : (username as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer<
            TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$children$buyer(
      this._res);

  TRes _res;

  call({
    String? username,
    String? thumbnailUrl,
    String? profilePictureUrl,
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$RespondToOffer$respondToOffer$data$offer$buyer {
  Mutation$RespondToOffer$respondToOffer$data$offer$buyer({
    this.username,
    this.thumbnailUrl,
    this.displayName,
    this.fullName,
    this.$__typename = 'UserType',
  });

  factory Mutation$RespondToOffer$respondToOffer$data$offer$buyer.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
      username: (l$username as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      displayName: (l$displayName as String?),
      fullName: (l$fullName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? username;

  final String? thumbnailUrl;

  final String? displayName;

  final String? fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$thumbnailUrl = thumbnailUrl;
    final l$displayName = displayName;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$thumbnailUrl,
      l$displayName,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RespondToOffer$respondToOffer$data$offer$buyer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
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

extension UtilityExtension$Mutation$RespondToOffer$respondToOffer$data$offer$buyer
    on Mutation$RespondToOffer$respondToOffer$data$offer$buyer {
  CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<
          Mutation$RespondToOffer$respondToOffer$data$offer$buyer>
      get copyWith =>
          CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<
    TRes> {
  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
    Mutation$RespondToOffer$respondToOffer$data$offer$buyer instance,
    TRes Function(Mutation$RespondToOffer$respondToOffer$data$offer$buyer) then,
  ) = _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$buyer;

  factory CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$buyer;

  TRes call({
    String? username,
    String? thumbnailUrl,
    String? displayName,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<TRes> {
  _CopyWithImpl$Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
    this._instance,
    this._then,
  );

  final Mutation$RespondToOffer$respondToOffer$data$offer$buyer _instance;

  final TRes Function(Mutation$RespondToOffer$respondToOffer$data$offer$buyer)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayName = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
        username:
            username == _undefined ? _instance.username : (username as String?),
        thumbnailUrl: thumbnailUrl == _undefined
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<
        TRes>
    implements
        CopyWith$Mutation$RespondToOffer$respondToOffer$data$offer$buyer<TRes> {
  _CopyWithStubImpl$Mutation$RespondToOffer$respondToOffer$data$offer$buyer(
      this._res);

  TRes _res;

  call({
    String? username,
    String? thumbnailUrl,
    String? displayName,
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteConversation {
  factory Variables$Mutation$DeleteConversation(
          {required int conversationId}) =>
      Variables$Mutation$DeleteConversation._({
        r'conversationId': conversationId,
      });

  Variables$Mutation$DeleteConversation._(this._$data);

  factory Variables$Mutation$DeleteConversation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$conversationId = data['conversationId'];
    result$data['conversationId'] = (l$conversationId as int);
    return Variables$Mutation$DeleteConversation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get conversationId => (_$data['conversationId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$conversationId = conversationId;
    result$data['conversationId'] = l$conversationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteConversation<
          Variables$Mutation$DeleteConversation>
      get copyWith => CopyWith$Variables$Mutation$DeleteConversation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversationId = conversationId;
    final lOther$conversationId = other.conversationId;
    if (l$conversationId != lOther$conversationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$conversationId = conversationId;
    return Object.hashAll([l$conversationId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteConversation<TRes> {
  factory CopyWith$Variables$Mutation$DeleteConversation(
    Variables$Mutation$DeleteConversation instance,
    TRes Function(Variables$Mutation$DeleteConversation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteConversation;

  factory CopyWith$Variables$Mutation$DeleteConversation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteConversation;

  TRes call({int? conversationId});
}

class _CopyWithImpl$Variables$Mutation$DeleteConversation<TRes>
    implements CopyWith$Variables$Mutation$DeleteConversation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteConversation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteConversation _instance;

  final TRes Function(Variables$Mutation$DeleteConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? conversationId = _undefined}) =>
      _then(Variables$Mutation$DeleteConversation._({
        ..._instance._$data,
        if (conversationId != _undefined && conversationId != null)
          'conversationId': (conversationId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteConversation<TRes>
    implements CopyWith$Variables$Mutation$DeleteConversation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteConversation(this._res);

  TRes _res;

  call({int? conversationId}) => _res;
}

class Mutation$DeleteConversation {
  Mutation$DeleteConversation({
    this.deleteConversation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteConversation.fromJson(Map<String, dynamic> json) {
    final l$deleteConversation = json['deleteConversation'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteConversation(
      deleteConversation: l$deleteConversation == null
          ? null
          : Mutation$DeleteConversation$deleteConversation.fromJson(
              (l$deleteConversation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteConversation$deleteConversation? deleteConversation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteConversation = deleteConversation;
    _resultData['deleteConversation'] = l$deleteConversation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteConversation = deleteConversation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteConversation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteConversation = deleteConversation;
    final lOther$deleteConversation = other.deleteConversation;
    if (l$deleteConversation != lOther$deleteConversation) {
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

extension UtilityExtension$Mutation$DeleteConversation
    on Mutation$DeleteConversation {
  CopyWith$Mutation$DeleteConversation<Mutation$DeleteConversation>
      get copyWith => CopyWith$Mutation$DeleteConversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteConversation<TRes> {
  factory CopyWith$Mutation$DeleteConversation(
    Mutation$DeleteConversation instance,
    TRes Function(Mutation$DeleteConversation) then,
  ) = _CopyWithImpl$Mutation$DeleteConversation;

  factory CopyWith$Mutation$DeleteConversation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteConversation;

  TRes call({
    Mutation$DeleteConversation$deleteConversation? deleteConversation,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteConversation$deleteConversation<TRes>
      get deleteConversation;
}

class _CopyWithImpl$Mutation$DeleteConversation<TRes>
    implements CopyWith$Mutation$DeleteConversation<TRes> {
  _CopyWithImpl$Mutation$DeleteConversation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteConversation _instance;

  final TRes Function(Mutation$DeleteConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteConversation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteConversation(
        deleteConversation: deleteConversation == _undefined
            ? _instance.deleteConversation
            : (deleteConversation
                as Mutation$DeleteConversation$deleteConversation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteConversation$deleteConversation<TRes>
      get deleteConversation {
    final local$deleteConversation = _instance.deleteConversation;
    return local$deleteConversation == null
        ? CopyWith$Mutation$DeleteConversation$deleteConversation.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteConversation$deleteConversation(
            local$deleteConversation, (e) => call(deleteConversation: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteConversation<TRes>
    implements CopyWith$Mutation$DeleteConversation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteConversation(this._res);

  TRes _res;

  call({
    Mutation$DeleteConversation$deleteConversation? deleteConversation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteConversation$deleteConversation<TRes>
      get deleteConversation =>
          CopyWith$Mutation$DeleteConversation$deleteConversation.stub(_res);
}

const documentNodeMutationDeleteConversation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteConversation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'conversationId')),
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
        name: NameNode(value: 'deleteConversation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'conversationId'),
            value: VariableNode(name: NameNode(value: 'conversationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$DeleteConversation _parserFn$Mutation$DeleteConversation(
        Map<String, dynamic> data) =>
    Mutation$DeleteConversation.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteConversation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteConversation?,
);

class Options$Mutation$DeleteConversation
    extends graphql.MutationOptions<Mutation$DeleteConversation> {
  Options$Mutation$DeleteConversation({
    String? operationName,
    required Variables$Mutation$DeleteConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteConversation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteConversation? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteConversation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteConversation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteConversation,
          parserFn: _parserFn$Mutation$DeleteConversation,
        );

  final OnMutationCompleted$Mutation$DeleteConversation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteConversation
    extends graphql.WatchQueryOptions<Mutation$DeleteConversation> {
  WatchOptions$Mutation$DeleteConversation({
    String? operationName,
    required Variables$Mutation$DeleteConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteConversation? typedOptimisticResult,
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
          document: documentNodeMutationDeleteConversation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteConversation,
        );
}

extension ClientExtension$Mutation$DeleteConversation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteConversation>>
      mutate$DeleteConversation(
              Options$Mutation$DeleteConversation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteConversation>
      watchMutation$DeleteConversation(
              WatchOptions$Mutation$DeleteConversation options) =>
          this.watchMutation(options);
}

class Mutation$DeleteConversation$deleteConversation {
  Mutation$DeleteConversation$deleteConversation({
    this.message,
    this.$__typename = 'DeleteConversation',
  });

  factory Mutation$DeleteConversation$deleteConversation.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteConversation$deleteConversation(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteConversation$deleteConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DeleteConversation$deleteConversation
    on Mutation$DeleteConversation$deleteConversation {
  CopyWith$Mutation$DeleteConversation$deleteConversation<
          Mutation$DeleteConversation$deleteConversation>
      get copyWith => CopyWith$Mutation$DeleteConversation$deleteConversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteConversation$deleteConversation<TRes> {
  factory CopyWith$Mutation$DeleteConversation$deleteConversation(
    Mutation$DeleteConversation$deleteConversation instance,
    TRes Function(Mutation$DeleteConversation$deleteConversation) then,
  ) = _CopyWithImpl$Mutation$DeleteConversation$deleteConversation;

  factory CopyWith$Mutation$DeleteConversation$deleteConversation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteConversation$deleteConversation;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteConversation$deleteConversation<TRes>
    implements CopyWith$Mutation$DeleteConversation$deleteConversation<TRes> {
  _CopyWithImpl$Mutation$DeleteConversation$deleteConversation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteConversation$deleteConversation _instance;

  final TRes Function(Mutation$DeleteConversation$deleteConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteConversation$deleteConversation(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteConversation$deleteConversation<TRes>
    implements CopyWith$Mutation$DeleteConversation$deleteConversation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteConversation$deleteConversation(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ArchiveConversation {
  factory Variables$Mutation$ArchiveConversation(
          {required int conversationId}) =>
      Variables$Mutation$ArchiveConversation._({
        r'conversationId': conversationId,
      });

  Variables$Mutation$ArchiveConversation._(this._$data);

  factory Variables$Mutation$ArchiveConversation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$conversationId = data['conversationId'];
    result$data['conversationId'] = (l$conversationId as int);
    return Variables$Mutation$ArchiveConversation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get conversationId => (_$data['conversationId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$conversationId = conversationId;
    result$data['conversationId'] = l$conversationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ArchiveConversation<
          Variables$Mutation$ArchiveConversation>
      get copyWith => CopyWith$Variables$Mutation$ArchiveConversation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ArchiveConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversationId = conversationId;
    final lOther$conversationId = other.conversationId;
    if (l$conversationId != lOther$conversationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$conversationId = conversationId;
    return Object.hashAll([l$conversationId]);
  }
}

abstract class CopyWith$Variables$Mutation$ArchiveConversation<TRes> {
  factory CopyWith$Variables$Mutation$ArchiveConversation(
    Variables$Mutation$ArchiveConversation instance,
    TRes Function(Variables$Mutation$ArchiveConversation) then,
  ) = _CopyWithImpl$Variables$Mutation$ArchiveConversation;

  factory CopyWith$Variables$Mutation$ArchiveConversation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ArchiveConversation;

  TRes call({int? conversationId});
}

class _CopyWithImpl$Variables$Mutation$ArchiveConversation<TRes>
    implements CopyWith$Variables$Mutation$ArchiveConversation<TRes> {
  _CopyWithImpl$Variables$Mutation$ArchiveConversation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ArchiveConversation _instance;

  final TRes Function(Variables$Mutation$ArchiveConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? conversationId = _undefined}) =>
      _then(Variables$Mutation$ArchiveConversation._({
        ..._instance._$data,
        if (conversationId != _undefined && conversationId != null)
          'conversationId': (conversationId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ArchiveConversation<TRes>
    implements CopyWith$Variables$Mutation$ArchiveConversation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ArchiveConversation(this._res);

  TRes _res;

  call({int? conversationId}) => _res;
}

class Mutation$ArchiveConversation {
  Mutation$ArchiveConversation({
    this.archiveConversation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ArchiveConversation.fromJson(Map<String, dynamic> json) {
    final l$archiveConversation = json['archiveConversation'];
    final l$$__typename = json['__typename'];
    return Mutation$ArchiveConversation(
      archiveConversation: l$archiveConversation == null
          ? null
          : Mutation$ArchiveConversation$archiveConversation.fromJson(
              (l$archiveConversation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ArchiveConversation$archiveConversation? archiveConversation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$archiveConversation = archiveConversation;
    _resultData['archiveConversation'] = l$archiveConversation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$archiveConversation = archiveConversation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$archiveConversation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ArchiveConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archiveConversation = archiveConversation;
    final lOther$archiveConversation = other.archiveConversation;
    if (l$archiveConversation != lOther$archiveConversation) {
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

extension UtilityExtension$Mutation$ArchiveConversation
    on Mutation$ArchiveConversation {
  CopyWith$Mutation$ArchiveConversation<Mutation$ArchiveConversation>
      get copyWith => CopyWith$Mutation$ArchiveConversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ArchiveConversation<TRes> {
  factory CopyWith$Mutation$ArchiveConversation(
    Mutation$ArchiveConversation instance,
    TRes Function(Mutation$ArchiveConversation) then,
  ) = _CopyWithImpl$Mutation$ArchiveConversation;

  factory CopyWith$Mutation$ArchiveConversation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ArchiveConversation;

  TRes call({
    Mutation$ArchiveConversation$archiveConversation? archiveConversation,
    String? $__typename,
  });
  CopyWith$Mutation$ArchiveConversation$archiveConversation<TRes>
      get archiveConversation;
}

class _CopyWithImpl$Mutation$ArchiveConversation<TRes>
    implements CopyWith$Mutation$ArchiveConversation<TRes> {
  _CopyWithImpl$Mutation$ArchiveConversation(
    this._instance,
    this._then,
  );

  final Mutation$ArchiveConversation _instance;

  final TRes Function(Mutation$ArchiveConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archiveConversation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ArchiveConversation(
        archiveConversation: archiveConversation == _undefined
            ? _instance.archiveConversation
            : (archiveConversation
                as Mutation$ArchiveConversation$archiveConversation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ArchiveConversation$archiveConversation<TRes>
      get archiveConversation {
    final local$archiveConversation = _instance.archiveConversation;
    return local$archiveConversation == null
        ? CopyWith$Mutation$ArchiveConversation$archiveConversation.stub(
            _then(_instance))
        : CopyWith$Mutation$ArchiveConversation$archiveConversation(
            local$archiveConversation, (e) => call(archiveConversation: e));
  }
}

class _CopyWithStubImpl$Mutation$ArchiveConversation<TRes>
    implements CopyWith$Mutation$ArchiveConversation<TRes> {
  _CopyWithStubImpl$Mutation$ArchiveConversation(this._res);

  TRes _res;

  call({
    Mutation$ArchiveConversation$archiveConversation? archiveConversation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ArchiveConversation$archiveConversation<TRes>
      get archiveConversation =>
          CopyWith$Mutation$ArchiveConversation$archiveConversation.stub(_res);
}

const documentNodeMutationArchiveConversation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ArchiveConversation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'conversationId')),
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
        name: NameNode(value: 'archiveConversation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'conversationId'),
            value: VariableNode(name: NameNode(value: 'conversationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$ArchiveConversation _parserFn$Mutation$ArchiveConversation(
        Map<String, dynamic> data) =>
    Mutation$ArchiveConversation.fromJson(data);
typedef OnMutationCompleted$Mutation$ArchiveConversation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ArchiveConversation?,
);

class Options$Mutation$ArchiveConversation
    extends graphql.MutationOptions<Mutation$ArchiveConversation> {
  Options$Mutation$ArchiveConversation({
    String? operationName,
    required Variables$Mutation$ArchiveConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ArchiveConversation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ArchiveConversation? onCompleted,
    graphql.OnMutationUpdate<Mutation$ArchiveConversation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ArchiveConversation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationArchiveConversation,
          parserFn: _parserFn$Mutation$ArchiveConversation,
        );

  final OnMutationCompleted$Mutation$ArchiveConversation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ArchiveConversation
    extends graphql.WatchQueryOptions<Mutation$ArchiveConversation> {
  WatchOptions$Mutation$ArchiveConversation({
    String? operationName,
    required Variables$Mutation$ArchiveConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ArchiveConversation? typedOptimisticResult,
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
          document: documentNodeMutationArchiveConversation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ArchiveConversation,
        );
}

extension ClientExtension$Mutation$ArchiveConversation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ArchiveConversation>>
      mutate$ArchiveConversation(
              Options$Mutation$ArchiveConversation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ArchiveConversation>
      watchMutation$ArchiveConversation(
              WatchOptions$Mutation$ArchiveConversation options) =>
          this.watchMutation(options);
}

class Mutation$ArchiveConversation$archiveConversation {
  Mutation$ArchiveConversation$archiveConversation({
    this.message,
    this.$__typename = 'ArchiveConversation',
  });

  factory Mutation$ArchiveConversation$archiveConversation.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$ArchiveConversation$archiveConversation(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ArchiveConversation$archiveConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$ArchiveConversation$archiveConversation
    on Mutation$ArchiveConversation$archiveConversation {
  CopyWith$Mutation$ArchiveConversation$archiveConversation<
          Mutation$ArchiveConversation$archiveConversation>
      get copyWith => CopyWith$Mutation$ArchiveConversation$archiveConversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ArchiveConversation$archiveConversation<TRes> {
  factory CopyWith$Mutation$ArchiveConversation$archiveConversation(
    Mutation$ArchiveConversation$archiveConversation instance,
    TRes Function(Mutation$ArchiveConversation$archiveConversation) then,
  ) = _CopyWithImpl$Mutation$ArchiveConversation$archiveConversation;

  factory CopyWith$Mutation$ArchiveConversation$archiveConversation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ArchiveConversation$archiveConversation;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ArchiveConversation$archiveConversation<TRes>
    implements CopyWith$Mutation$ArchiveConversation$archiveConversation<TRes> {
  _CopyWithImpl$Mutation$ArchiveConversation$archiveConversation(
    this._instance,
    this._then,
  );

  final Mutation$ArchiveConversation$archiveConversation _instance;

  final TRes Function(Mutation$ArchiveConversation$archiveConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ArchiveConversation$archiveConversation(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ArchiveConversation$archiveConversation<TRes>
    implements CopyWith$Mutation$ArchiveConversation$archiveConversation<TRes> {
  _CopyWithStubImpl$Mutation$ArchiveConversation$archiveConversation(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnArchiveConversation {
  factory Variables$Mutation$UnArchiveConversation(
          {required int conversationId}) =>
      Variables$Mutation$UnArchiveConversation._({
        r'conversationId': conversationId,
      });

  Variables$Mutation$UnArchiveConversation._(this._$data);

  factory Variables$Mutation$UnArchiveConversation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$conversationId = data['conversationId'];
    result$data['conversationId'] = (l$conversationId as int);
    return Variables$Mutation$UnArchiveConversation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get conversationId => (_$data['conversationId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$conversationId = conversationId;
    result$data['conversationId'] = l$conversationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UnArchiveConversation<
          Variables$Mutation$UnArchiveConversation>
      get copyWith => CopyWith$Variables$Mutation$UnArchiveConversation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UnArchiveConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversationId = conversationId;
    final lOther$conversationId = other.conversationId;
    if (l$conversationId != lOther$conversationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$conversationId = conversationId;
    return Object.hashAll([l$conversationId]);
  }
}

abstract class CopyWith$Variables$Mutation$UnArchiveConversation<TRes> {
  factory CopyWith$Variables$Mutation$UnArchiveConversation(
    Variables$Mutation$UnArchiveConversation instance,
    TRes Function(Variables$Mutation$UnArchiveConversation) then,
  ) = _CopyWithImpl$Variables$Mutation$UnArchiveConversation;

  factory CopyWith$Variables$Mutation$UnArchiveConversation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnArchiveConversation;

  TRes call({int? conversationId});
}

class _CopyWithImpl$Variables$Mutation$UnArchiveConversation<TRes>
    implements CopyWith$Variables$Mutation$UnArchiveConversation<TRes> {
  _CopyWithImpl$Variables$Mutation$UnArchiveConversation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnArchiveConversation _instance;

  final TRes Function(Variables$Mutation$UnArchiveConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? conversationId = _undefined}) =>
      _then(Variables$Mutation$UnArchiveConversation._({
        ..._instance._$data,
        if (conversationId != _undefined && conversationId != null)
          'conversationId': (conversationId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnArchiveConversation<TRes>
    implements CopyWith$Variables$Mutation$UnArchiveConversation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnArchiveConversation(this._res);

  TRes _res;

  call({int? conversationId}) => _res;
}

class Mutation$UnArchiveConversation {
  Mutation$UnArchiveConversation({
    this.unarchiveConversation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnArchiveConversation.fromJson(Map<String, dynamic> json) {
    final l$unarchiveConversation = json['unarchiveConversation'];
    final l$$__typename = json['__typename'];
    return Mutation$UnArchiveConversation(
      unarchiveConversation: l$unarchiveConversation == null
          ? null
          : Mutation$UnArchiveConversation$unarchiveConversation.fromJson(
              (l$unarchiveConversation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnArchiveConversation$unarchiveConversation?
      unarchiveConversation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unarchiveConversation = unarchiveConversation;
    _resultData['unarchiveConversation'] = l$unarchiveConversation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unarchiveConversation = unarchiveConversation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unarchiveConversation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UnArchiveConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unarchiveConversation = unarchiveConversation;
    final lOther$unarchiveConversation = other.unarchiveConversation;
    if (l$unarchiveConversation != lOther$unarchiveConversation) {
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

extension UtilityExtension$Mutation$UnArchiveConversation
    on Mutation$UnArchiveConversation {
  CopyWith$Mutation$UnArchiveConversation<Mutation$UnArchiveConversation>
      get copyWith => CopyWith$Mutation$UnArchiveConversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnArchiveConversation<TRes> {
  factory CopyWith$Mutation$UnArchiveConversation(
    Mutation$UnArchiveConversation instance,
    TRes Function(Mutation$UnArchiveConversation) then,
  ) = _CopyWithImpl$Mutation$UnArchiveConversation;

  factory CopyWith$Mutation$UnArchiveConversation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnArchiveConversation;

  TRes call({
    Mutation$UnArchiveConversation$unarchiveConversation? unarchiveConversation,
    String? $__typename,
  });
  CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<TRes>
      get unarchiveConversation;
}

class _CopyWithImpl$Mutation$UnArchiveConversation<TRes>
    implements CopyWith$Mutation$UnArchiveConversation<TRes> {
  _CopyWithImpl$Mutation$UnArchiveConversation(
    this._instance,
    this._then,
  );

  final Mutation$UnArchiveConversation _instance;

  final TRes Function(Mutation$UnArchiveConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unarchiveConversation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnArchiveConversation(
        unarchiveConversation: unarchiveConversation == _undefined
            ? _instance.unarchiveConversation
            : (unarchiveConversation
                as Mutation$UnArchiveConversation$unarchiveConversation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<TRes>
      get unarchiveConversation {
    final local$unarchiveConversation = _instance.unarchiveConversation;
    return local$unarchiveConversation == null
        ? CopyWith$Mutation$UnArchiveConversation$unarchiveConversation.stub(
            _then(_instance))
        : CopyWith$Mutation$UnArchiveConversation$unarchiveConversation(
            local$unarchiveConversation, (e) => call(unarchiveConversation: e));
  }
}

class _CopyWithStubImpl$Mutation$UnArchiveConversation<TRes>
    implements CopyWith$Mutation$UnArchiveConversation<TRes> {
  _CopyWithStubImpl$Mutation$UnArchiveConversation(this._res);

  TRes _res;

  call({
    Mutation$UnArchiveConversation$unarchiveConversation? unarchiveConversation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<TRes>
      get unarchiveConversation =>
          CopyWith$Mutation$UnArchiveConversation$unarchiveConversation.stub(
              _res);
}

const documentNodeMutationUnArchiveConversation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnArchiveConversation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'conversationId')),
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
        name: NameNode(value: 'unarchiveConversation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'conversationId'),
            value: VariableNode(name: NameNode(value: 'conversationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$UnArchiveConversation _parserFn$Mutation$UnArchiveConversation(
        Map<String, dynamic> data) =>
    Mutation$UnArchiveConversation.fromJson(data);
typedef OnMutationCompleted$Mutation$UnArchiveConversation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UnArchiveConversation?,
);

class Options$Mutation$UnArchiveConversation
    extends graphql.MutationOptions<Mutation$UnArchiveConversation> {
  Options$Mutation$UnArchiveConversation({
    String? operationName,
    required Variables$Mutation$UnArchiveConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnArchiveConversation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnArchiveConversation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnArchiveConversation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UnArchiveConversation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnArchiveConversation,
          parserFn: _parserFn$Mutation$UnArchiveConversation,
        );

  final OnMutationCompleted$Mutation$UnArchiveConversation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnArchiveConversation
    extends graphql.WatchQueryOptions<Mutation$UnArchiveConversation> {
  WatchOptions$Mutation$UnArchiveConversation({
    String? operationName,
    required Variables$Mutation$UnArchiveConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnArchiveConversation? typedOptimisticResult,
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
          document: documentNodeMutationUnArchiveConversation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnArchiveConversation,
        );
}

extension ClientExtension$Mutation$UnArchiveConversation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnArchiveConversation>>
      mutate$UnArchiveConversation(
              Options$Mutation$UnArchiveConversation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnArchiveConversation>
      watchMutation$UnArchiveConversation(
              WatchOptions$Mutation$UnArchiveConversation options) =>
          this.watchMutation(options);
}

class Mutation$UnArchiveConversation$unarchiveConversation {
  Mutation$UnArchiveConversation$unarchiveConversation({
    this.message,
    this.$__typename = 'UnarchiveConversation',
  });

  factory Mutation$UnArchiveConversation$unarchiveConversation.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UnArchiveConversation$unarchiveConversation(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UnArchiveConversation$unarchiveConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$UnArchiveConversation$unarchiveConversation
    on Mutation$UnArchiveConversation$unarchiveConversation {
  CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<
          Mutation$UnArchiveConversation$unarchiveConversation>
      get copyWith =>
          CopyWith$Mutation$UnArchiveConversation$unarchiveConversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<
    TRes> {
  factory CopyWith$Mutation$UnArchiveConversation$unarchiveConversation(
    Mutation$UnArchiveConversation$unarchiveConversation instance,
    TRes Function(Mutation$UnArchiveConversation$unarchiveConversation) then,
  ) = _CopyWithImpl$Mutation$UnArchiveConversation$unarchiveConversation;

  factory CopyWith$Mutation$UnArchiveConversation$unarchiveConversation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UnArchiveConversation$unarchiveConversation;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnArchiveConversation$unarchiveConversation<TRes>
    implements
        CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<TRes> {
  _CopyWithImpl$Mutation$UnArchiveConversation$unarchiveConversation(
    this._instance,
    this._then,
  );

  final Mutation$UnArchiveConversation$unarchiveConversation _instance;

  final TRes Function(Mutation$UnArchiveConversation$unarchiveConversation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnArchiveConversation$unarchiveConversation(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnArchiveConversation$unarchiveConversation<
        TRes>
    implements
        CopyWith$Mutation$UnArchiveConversation$unarchiveConversation<TRes> {
  _CopyWithStubImpl$Mutation$UnArchiveConversation$unarchiveConversation(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateReadMessages {
  factory Variables$Mutation$UpdateReadMessages(
          {required List<int?> messageIds}) =>
      Variables$Mutation$UpdateReadMessages._({
        r'messageIds': messageIds,
      });

  Variables$Mutation$UpdateReadMessages._(this._$data);

  factory Variables$Mutation$UpdateReadMessages.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$messageIds = data['messageIds'];
    result$data['messageIds'] =
        (l$messageIds as List<dynamic>).map((e) => (e as int?)).toList();
    return Variables$Mutation$UpdateReadMessages._(result$data);
  }

  Map<String, dynamic> _$data;

  List<int?> get messageIds => (_$data['messageIds'] as List<int?>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$messageIds = messageIds;
    result$data['messageIds'] = l$messageIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateReadMessages<
          Variables$Mutation$UpdateReadMessages>
      get copyWith => CopyWith$Variables$Mutation$UpdateReadMessages(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateReadMessages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$messageIds = messageIds;
    final lOther$messageIds = other.messageIds;
    if (l$messageIds.length != lOther$messageIds.length) {
      return false;
    }
    for (int i = 0; i < l$messageIds.length; i++) {
      final l$messageIds$entry = l$messageIds[i];
      final lOther$messageIds$entry = lOther$messageIds[i];
      if (l$messageIds$entry != lOther$messageIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$messageIds = messageIds;
    return Object.hashAll([Object.hashAll(l$messageIds.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateReadMessages<TRes> {
  factory CopyWith$Variables$Mutation$UpdateReadMessages(
    Variables$Mutation$UpdateReadMessages instance,
    TRes Function(Variables$Mutation$UpdateReadMessages) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateReadMessages;

  factory CopyWith$Variables$Mutation$UpdateReadMessages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateReadMessages;

  TRes call({List<int?>? messageIds});
}

class _CopyWithImpl$Variables$Mutation$UpdateReadMessages<TRes>
    implements CopyWith$Variables$Mutation$UpdateReadMessages<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateReadMessages(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateReadMessages _instance;

  final TRes Function(Variables$Mutation$UpdateReadMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? messageIds = _undefined}) =>
      _then(Variables$Mutation$UpdateReadMessages._({
        ..._instance._$data,
        if (messageIds != _undefined && messageIds != null)
          'messageIds': (messageIds as List<int?>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateReadMessages<TRes>
    implements CopyWith$Variables$Mutation$UpdateReadMessages<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateReadMessages(this._res);

  TRes _res;

  call({List<int?>? messageIds}) => _res;
}

class Mutation$UpdateReadMessages {
  Mutation$UpdateReadMessages({
    this.updateReadMessages,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateReadMessages.fromJson(Map<String, dynamic> json) {
    final l$updateReadMessages = json['updateReadMessages'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateReadMessages(
      updateReadMessages: l$updateReadMessages == null
          ? null
          : Mutation$UpdateReadMessages$updateReadMessages.fromJson(
              (l$updateReadMessages as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateReadMessages$updateReadMessages? updateReadMessages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateReadMessages = updateReadMessages;
    _resultData['updateReadMessages'] = l$updateReadMessages?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateReadMessages = updateReadMessages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateReadMessages,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateReadMessages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateReadMessages = updateReadMessages;
    final lOther$updateReadMessages = other.updateReadMessages;
    if (l$updateReadMessages != lOther$updateReadMessages) {
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

extension UtilityExtension$Mutation$UpdateReadMessages
    on Mutation$UpdateReadMessages {
  CopyWith$Mutation$UpdateReadMessages<Mutation$UpdateReadMessages>
      get copyWith => CopyWith$Mutation$UpdateReadMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateReadMessages<TRes> {
  factory CopyWith$Mutation$UpdateReadMessages(
    Mutation$UpdateReadMessages instance,
    TRes Function(Mutation$UpdateReadMessages) then,
  ) = _CopyWithImpl$Mutation$UpdateReadMessages;

  factory CopyWith$Mutation$UpdateReadMessages.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateReadMessages;

  TRes call({
    Mutation$UpdateReadMessages$updateReadMessages? updateReadMessages,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateReadMessages$updateReadMessages<TRes>
      get updateReadMessages;
}

class _CopyWithImpl$Mutation$UpdateReadMessages<TRes>
    implements CopyWith$Mutation$UpdateReadMessages<TRes> {
  _CopyWithImpl$Mutation$UpdateReadMessages(
    this._instance,
    this._then,
  );

  final Mutation$UpdateReadMessages _instance;

  final TRes Function(Mutation$UpdateReadMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateReadMessages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateReadMessages(
        updateReadMessages: updateReadMessages == _undefined
            ? _instance.updateReadMessages
            : (updateReadMessages
                as Mutation$UpdateReadMessages$updateReadMessages?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateReadMessages$updateReadMessages<TRes>
      get updateReadMessages {
    final local$updateReadMessages = _instance.updateReadMessages;
    return local$updateReadMessages == null
        ? CopyWith$Mutation$UpdateReadMessages$updateReadMessages.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateReadMessages$updateReadMessages(
            local$updateReadMessages, (e) => call(updateReadMessages: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateReadMessages<TRes>
    implements CopyWith$Mutation$UpdateReadMessages<TRes> {
  _CopyWithStubImpl$Mutation$UpdateReadMessages(this._res);

  TRes _res;

  call({
    Mutation$UpdateReadMessages$updateReadMessages? updateReadMessages,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateReadMessages$updateReadMessages<TRes>
      get updateReadMessages =>
          CopyWith$Mutation$UpdateReadMessages$updateReadMessages.stub(_res);
}

const documentNodeMutationUpdateReadMessages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateReadMessages'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'messageIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateReadMessages'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'messageIds'),
            value: VariableNode(name: NameNode(value: 'messageIds')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$UpdateReadMessages _parserFn$Mutation$UpdateReadMessages(
        Map<String, dynamic> data) =>
    Mutation$UpdateReadMessages.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateReadMessages = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateReadMessages?,
);

class Options$Mutation$UpdateReadMessages
    extends graphql.MutationOptions<Mutation$UpdateReadMessages> {
  Options$Mutation$UpdateReadMessages({
    String? operationName,
    required Variables$Mutation$UpdateReadMessages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateReadMessages? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateReadMessages? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateReadMessages>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateReadMessages(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateReadMessages,
          parserFn: _parserFn$Mutation$UpdateReadMessages,
        );

  final OnMutationCompleted$Mutation$UpdateReadMessages? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateReadMessages
    extends graphql.WatchQueryOptions<Mutation$UpdateReadMessages> {
  WatchOptions$Mutation$UpdateReadMessages({
    String? operationName,
    required Variables$Mutation$UpdateReadMessages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateReadMessages? typedOptimisticResult,
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
          document: documentNodeMutationUpdateReadMessages,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateReadMessages,
        );
}

extension ClientExtension$Mutation$UpdateReadMessages on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateReadMessages>>
      mutate$UpdateReadMessages(
              Options$Mutation$UpdateReadMessages options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateReadMessages>
      watchMutation$UpdateReadMessages(
              WatchOptions$Mutation$UpdateReadMessages options) =>
          this.watchMutation(options);
}

class Mutation$UpdateReadMessages$updateReadMessages {
  Mutation$UpdateReadMessages$updateReadMessages({
    this.success,
    this.$__typename = 'UpdateReadMessages',
  });

  factory Mutation$UpdateReadMessages$updateReadMessages.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateReadMessages$updateReadMessages(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateReadMessages$updateReadMessages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$UpdateReadMessages$updateReadMessages
    on Mutation$UpdateReadMessages$updateReadMessages {
  CopyWith$Mutation$UpdateReadMessages$updateReadMessages<
          Mutation$UpdateReadMessages$updateReadMessages>
      get copyWith => CopyWith$Mutation$UpdateReadMessages$updateReadMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateReadMessages$updateReadMessages<TRes> {
  factory CopyWith$Mutation$UpdateReadMessages$updateReadMessages(
    Mutation$UpdateReadMessages$updateReadMessages instance,
    TRes Function(Mutation$UpdateReadMessages$updateReadMessages) then,
  ) = _CopyWithImpl$Mutation$UpdateReadMessages$updateReadMessages;

  factory CopyWith$Mutation$UpdateReadMessages$updateReadMessages.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateReadMessages$updateReadMessages;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateReadMessages$updateReadMessages<TRes>
    implements CopyWith$Mutation$UpdateReadMessages$updateReadMessages<TRes> {
  _CopyWithImpl$Mutation$UpdateReadMessages$updateReadMessages(
    this._instance,
    this._then,
  );

  final Mutation$UpdateReadMessages$updateReadMessages _instance;

  final TRes Function(Mutation$UpdateReadMessages$updateReadMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateReadMessages$updateReadMessages(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateReadMessages$updateReadMessages<TRes>
    implements CopyWith$Mutation$UpdateReadMessages$updateReadMessages<TRes> {
  _CopyWithStubImpl$Mutation$UpdateReadMessages$updateReadMessages(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ReadNotification {
  factory Variables$Mutation$ReadNotification({int? notificationId}) =>
      Variables$Mutation$ReadNotification._({
        if (notificationId != null) r'notificationId': notificationId,
      });

  Variables$Mutation$ReadNotification._(this._$data);

  factory Variables$Mutation$ReadNotification.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('notificationId')) {
      final l$notificationId = data['notificationId'];
      result$data['notificationId'] = (l$notificationId as int?);
    }
    return Variables$Mutation$ReadNotification._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get notificationId => (_$data['notificationId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('notificationId')) {
      final l$notificationId = notificationId;
      result$data['notificationId'] = l$notificationId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ReadNotification<
          Variables$Mutation$ReadNotification>
      get copyWith => CopyWith$Variables$Mutation$ReadNotification(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ReadNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationId = notificationId;
    final lOther$notificationId = other.notificationId;
    if (_$data.containsKey('notificationId') !=
        other._$data.containsKey('notificationId')) {
      return false;
    }
    if (l$notificationId != lOther$notificationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$notificationId = notificationId;
    return Object.hashAll(
        [_$data.containsKey('notificationId') ? l$notificationId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ReadNotification<TRes> {
  factory CopyWith$Variables$Mutation$ReadNotification(
    Variables$Mutation$ReadNotification instance,
    TRes Function(Variables$Mutation$ReadNotification) then,
  ) = _CopyWithImpl$Variables$Mutation$ReadNotification;

  factory CopyWith$Variables$Mutation$ReadNotification.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ReadNotification;

  TRes call({int? notificationId});
}

class _CopyWithImpl$Variables$Mutation$ReadNotification<TRes>
    implements CopyWith$Variables$Mutation$ReadNotification<TRes> {
  _CopyWithImpl$Variables$Mutation$ReadNotification(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ReadNotification _instance;

  final TRes Function(Variables$Mutation$ReadNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? notificationId = _undefined}) =>
      _then(Variables$Mutation$ReadNotification._({
        ..._instance._$data,
        if (notificationId != _undefined)
          'notificationId': (notificationId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ReadNotification<TRes>
    implements CopyWith$Variables$Mutation$ReadNotification<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ReadNotification(this._res);

  TRes _res;

  call({int? notificationId}) => _res;
}

class Mutation$ReadNotification {
  Mutation$ReadNotification({
    this.readNotification,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ReadNotification.fromJson(Map<String, dynamic> json) {
    final l$readNotification = json['readNotification'];
    final l$$__typename = json['__typename'];
    return Mutation$ReadNotification(
      readNotification: l$readNotification == null
          ? null
          : Mutation$ReadNotification$readNotification.fromJson(
              (l$readNotification as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ReadNotification$readNotification? readNotification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$readNotification = readNotification;
    _resultData['readNotification'] = l$readNotification?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$readNotification = readNotification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$readNotification,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReadNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$readNotification = readNotification;
    final lOther$readNotification = other.readNotification;
    if (l$readNotification != lOther$readNotification) {
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

extension UtilityExtension$Mutation$ReadNotification
    on Mutation$ReadNotification {
  CopyWith$Mutation$ReadNotification<Mutation$ReadNotification> get copyWith =>
      CopyWith$Mutation$ReadNotification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ReadNotification<TRes> {
  factory CopyWith$Mutation$ReadNotification(
    Mutation$ReadNotification instance,
    TRes Function(Mutation$ReadNotification) then,
  ) = _CopyWithImpl$Mutation$ReadNotification;

  factory CopyWith$Mutation$ReadNotification.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReadNotification;

  TRes call({
    Mutation$ReadNotification$readNotification? readNotification,
    String? $__typename,
  });
  CopyWith$Mutation$ReadNotification$readNotification<TRes>
      get readNotification;
}

class _CopyWithImpl$Mutation$ReadNotification<TRes>
    implements CopyWith$Mutation$ReadNotification<TRes> {
  _CopyWithImpl$Mutation$ReadNotification(
    this._instance,
    this._then,
  );

  final Mutation$ReadNotification _instance;

  final TRes Function(Mutation$ReadNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? readNotification = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ReadNotification(
        readNotification: readNotification == _undefined
            ? _instance.readNotification
            : (readNotification as Mutation$ReadNotification$readNotification?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ReadNotification$readNotification<TRes>
      get readNotification {
    final local$readNotification = _instance.readNotification;
    return local$readNotification == null
        ? CopyWith$Mutation$ReadNotification$readNotification.stub(
            _then(_instance))
        : CopyWith$Mutation$ReadNotification$readNotification(
            local$readNotification, (e) => call(readNotification: e));
  }
}

class _CopyWithStubImpl$Mutation$ReadNotification<TRes>
    implements CopyWith$Mutation$ReadNotification<TRes> {
  _CopyWithStubImpl$Mutation$ReadNotification(this._res);

  TRes _res;

  call({
    Mutation$ReadNotification$readNotification? readNotification,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ReadNotification$readNotification<TRes>
      get readNotification =>
          CopyWith$Mutation$ReadNotification$readNotification.stub(_res);
}

const documentNodeMutationReadNotification = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ReadNotification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notificationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'readNotification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'notificationId'),
            value: VariableNode(name: NameNode(value: 'notificationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$ReadNotification _parserFn$Mutation$ReadNotification(
        Map<String, dynamic> data) =>
    Mutation$ReadNotification.fromJson(data);
typedef OnMutationCompleted$Mutation$ReadNotification = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ReadNotification?,
);

class Options$Mutation$ReadNotification
    extends graphql.MutationOptions<Mutation$ReadNotification> {
  Options$Mutation$ReadNotification({
    String? operationName,
    Variables$Mutation$ReadNotification? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ReadNotification? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ReadNotification? onCompleted,
    graphql.OnMutationUpdate<Mutation$ReadNotification>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ReadNotification(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationReadNotification,
          parserFn: _parserFn$Mutation$ReadNotification,
        );

  final OnMutationCompleted$Mutation$ReadNotification? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ReadNotification
    extends graphql.WatchQueryOptions<Mutation$ReadNotification> {
  WatchOptions$Mutation$ReadNotification({
    String? operationName,
    Variables$Mutation$ReadNotification? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ReadNotification? typedOptimisticResult,
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
          document: documentNodeMutationReadNotification,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ReadNotification,
        );
}

extension ClientExtension$Mutation$ReadNotification on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ReadNotification>>
      mutate$ReadNotification(
              [Options$Mutation$ReadNotification? options]) async =>
          await this.mutate(options ?? Options$Mutation$ReadNotification());
  graphql.ObservableQuery<
      Mutation$ReadNotification> watchMutation$ReadNotification(
          [WatchOptions$Mutation$ReadNotification? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ReadNotification());
}

class Mutation$ReadNotification$readNotification {
  Mutation$ReadNotification$readNotification({
    this.success,
    this.$__typename = 'ReadNotification',
  });

  factory Mutation$ReadNotification$readNotification.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$ReadNotification$readNotification(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReadNotification$readNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$ReadNotification$readNotification
    on Mutation$ReadNotification$readNotification {
  CopyWith$Mutation$ReadNotification$readNotification<
          Mutation$ReadNotification$readNotification>
      get copyWith => CopyWith$Mutation$ReadNotification$readNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ReadNotification$readNotification<TRes> {
  factory CopyWith$Mutation$ReadNotification$readNotification(
    Mutation$ReadNotification$readNotification instance,
    TRes Function(Mutation$ReadNotification$readNotification) then,
  ) = _CopyWithImpl$Mutation$ReadNotification$readNotification;

  factory CopyWith$Mutation$ReadNotification$readNotification.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReadNotification$readNotification;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ReadNotification$readNotification<TRes>
    implements CopyWith$Mutation$ReadNotification$readNotification<TRes> {
  _CopyWithImpl$Mutation$ReadNotification$readNotification(
    this._instance,
    this._then,
  );

  final Mutation$ReadNotification$readNotification _instance;

  final TRes Function(Mutation$ReadNotification$readNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ReadNotification$readNotification(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ReadNotification$readNotification<TRes>
    implements CopyWith$Mutation$ReadNotification$readNotification<TRes> {
  _CopyWithStubImpl$Mutation$ReadNotification$readNotification(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteNotification {
  factory Variables$Mutation$DeleteNotification(
          {required int notificationId}) =>
      Variables$Mutation$DeleteNotification._({
        r'notificationId': notificationId,
      });

  Variables$Mutation$DeleteNotification._(this._$data);

  factory Variables$Mutation$DeleteNotification.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$notificationId = data['notificationId'];
    result$data['notificationId'] = (l$notificationId as int);
    return Variables$Mutation$DeleteNotification._(result$data);
  }

  Map<String, dynamic> _$data;

  int get notificationId => (_$data['notificationId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$notificationId = notificationId;
    result$data['notificationId'] = l$notificationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteNotification<
          Variables$Mutation$DeleteNotification>
      get copyWith => CopyWith$Variables$Mutation$DeleteNotification(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationId = notificationId;
    final lOther$notificationId = other.notificationId;
    if (l$notificationId != lOther$notificationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$notificationId = notificationId;
    return Object.hashAll([l$notificationId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteNotification<TRes> {
  factory CopyWith$Variables$Mutation$DeleteNotification(
    Variables$Mutation$DeleteNotification instance,
    TRes Function(Variables$Mutation$DeleteNotification) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteNotification;

  factory CopyWith$Variables$Mutation$DeleteNotification.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteNotification;

  TRes call({int? notificationId});
}

class _CopyWithImpl$Variables$Mutation$DeleteNotification<TRes>
    implements CopyWith$Variables$Mutation$DeleteNotification<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteNotification(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteNotification _instance;

  final TRes Function(Variables$Mutation$DeleteNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? notificationId = _undefined}) =>
      _then(Variables$Mutation$DeleteNotification._({
        ..._instance._$data,
        if (notificationId != _undefined && notificationId != null)
          'notificationId': (notificationId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteNotification<TRes>
    implements CopyWith$Variables$Mutation$DeleteNotification<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteNotification(this._res);

  TRes _res;

  call({int? notificationId}) => _res;
}

class Mutation$DeleteNotification {
  Mutation$DeleteNotification({
    this.deleteNotification,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteNotification.fromJson(Map<String, dynamic> json) {
    final l$deleteNotification = json['deleteNotification'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteNotification(
      deleteNotification: l$deleteNotification == null
          ? null
          : Mutation$DeleteNotification$deleteNotification.fromJson(
              (l$deleteNotification as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteNotification$deleteNotification? deleteNotification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteNotification = deleteNotification;
    _resultData['deleteNotification'] = l$deleteNotification?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteNotification = deleteNotification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteNotification,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteNotification = deleteNotification;
    final lOther$deleteNotification = other.deleteNotification;
    if (l$deleteNotification != lOther$deleteNotification) {
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

extension UtilityExtension$Mutation$DeleteNotification
    on Mutation$DeleteNotification {
  CopyWith$Mutation$DeleteNotification<Mutation$DeleteNotification>
      get copyWith => CopyWith$Mutation$DeleteNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteNotification<TRes> {
  factory CopyWith$Mutation$DeleteNotification(
    Mutation$DeleteNotification instance,
    TRes Function(Mutation$DeleteNotification) then,
  ) = _CopyWithImpl$Mutation$DeleteNotification;

  factory CopyWith$Mutation$DeleteNotification.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteNotification;

  TRes call({
    Mutation$DeleteNotification$deleteNotification? deleteNotification,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteNotification$deleteNotification<TRes>
      get deleteNotification;
}

class _CopyWithImpl$Mutation$DeleteNotification<TRes>
    implements CopyWith$Mutation$DeleteNotification<TRes> {
  _CopyWithImpl$Mutation$DeleteNotification(
    this._instance,
    this._then,
  );

  final Mutation$DeleteNotification _instance;

  final TRes Function(Mutation$DeleteNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteNotification = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteNotification(
        deleteNotification: deleteNotification == _undefined
            ? _instance.deleteNotification
            : (deleteNotification
                as Mutation$DeleteNotification$deleteNotification?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteNotification$deleteNotification<TRes>
      get deleteNotification {
    final local$deleteNotification = _instance.deleteNotification;
    return local$deleteNotification == null
        ? CopyWith$Mutation$DeleteNotification$deleteNotification.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteNotification$deleteNotification(
            local$deleteNotification, (e) => call(deleteNotification: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteNotification<TRes>
    implements CopyWith$Mutation$DeleteNotification<TRes> {
  _CopyWithStubImpl$Mutation$DeleteNotification(this._res);

  TRes _res;

  call({
    Mutation$DeleteNotification$deleteNotification? deleteNotification,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteNotification$deleteNotification<TRes>
      get deleteNotification =>
          CopyWith$Mutation$DeleteNotification$deleteNotification.stub(_res);
}

const documentNodeMutationDeleteNotification = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteNotification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notificationId')),
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
        name: NameNode(value: 'deleteNotification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'notificationId'),
            value: VariableNode(name: NameNode(value: 'notificationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$DeleteNotification _parserFn$Mutation$DeleteNotification(
        Map<String, dynamic> data) =>
    Mutation$DeleteNotification.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteNotification = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteNotification?,
);

class Options$Mutation$DeleteNotification
    extends graphql.MutationOptions<Mutation$DeleteNotification> {
  Options$Mutation$DeleteNotification({
    String? operationName,
    required Variables$Mutation$DeleteNotification variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteNotification? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteNotification? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteNotification>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteNotification(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteNotification,
          parserFn: _parserFn$Mutation$DeleteNotification,
        );

  final OnMutationCompleted$Mutation$DeleteNotification? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteNotification
    extends graphql.WatchQueryOptions<Mutation$DeleteNotification> {
  WatchOptions$Mutation$DeleteNotification({
    String? operationName,
    required Variables$Mutation$DeleteNotification variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteNotification? typedOptimisticResult,
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
          document: documentNodeMutationDeleteNotification,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteNotification,
        );
}

extension ClientExtension$Mutation$DeleteNotification on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteNotification>>
      mutate$DeleteNotification(
              Options$Mutation$DeleteNotification options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteNotification>
      watchMutation$DeleteNotification(
              WatchOptions$Mutation$DeleteNotification options) =>
          this.watchMutation(options);
}

class Mutation$DeleteNotification$deleteNotification {
  Mutation$DeleteNotification$deleteNotification({
    this.success,
    this.$__typename = 'DeleteNotification',
  });

  factory Mutation$DeleteNotification$deleteNotification.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteNotification$deleteNotification(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteNotification$deleteNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$DeleteNotification$deleteNotification
    on Mutation$DeleteNotification$deleteNotification {
  CopyWith$Mutation$DeleteNotification$deleteNotification<
          Mutation$DeleteNotification$deleteNotification>
      get copyWith => CopyWith$Mutation$DeleteNotification$deleteNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteNotification$deleteNotification<TRes> {
  factory CopyWith$Mutation$DeleteNotification$deleteNotification(
    Mutation$DeleteNotification$deleteNotification instance,
    TRes Function(Mutation$DeleteNotification$deleteNotification) then,
  ) = _CopyWithImpl$Mutation$DeleteNotification$deleteNotification;

  factory CopyWith$Mutation$DeleteNotification$deleteNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteNotification$deleteNotification;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteNotification$deleteNotification<TRes>
    implements CopyWith$Mutation$DeleteNotification$deleteNotification<TRes> {
  _CopyWithImpl$Mutation$DeleteNotification$deleteNotification(
    this._instance,
    this._then,
  );

  final Mutation$DeleteNotification$deleteNotification _instance;

  final TRes Function(Mutation$DeleteNotification$deleteNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteNotification$deleteNotification(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteNotification$deleteNotification<TRes>
    implements CopyWith$Mutation$DeleteNotification$deleteNotification<TRes> {
  _CopyWithStubImpl$Mutation$DeleteNotification$deleteNotification(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateNotificationPreference {
  factory Variables$Mutation$UpdateNotificationPreference({
    Input$NotificationsPreferenceInputType? emailNotification,
    Input$NotificationsPreferenceInputType? inappNotification,
    required bool isEmailNotification,
    required bool isPushNotification,
    required bool isSilentModeOn,
  }) =>
      Variables$Mutation$UpdateNotificationPreference._({
        if (emailNotification != null) r'emailNotification': emailNotification,
        if (inappNotification != null) r'inappNotification': inappNotification,
        r'isEmailNotification': isEmailNotification,
        r'isPushNotification': isPushNotification,
        r'isSilentModeOn': isSilentModeOn,
      });

  Variables$Mutation$UpdateNotificationPreference._(this._$data);

  factory Variables$Mutation$UpdateNotificationPreference.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('emailNotification')) {
      final l$emailNotification = data['emailNotification'];
      result$data['emailNotification'] = l$emailNotification == null
          ? null
          : Input$NotificationsPreferenceInputType.fromJson(
              (l$emailNotification as Map<String, dynamic>));
    }
    if (data.containsKey('inappNotification')) {
      final l$inappNotification = data['inappNotification'];
      result$data['inappNotification'] = l$inappNotification == null
          ? null
          : Input$NotificationsPreferenceInputType.fromJson(
              (l$inappNotification as Map<String, dynamic>));
    }
    final l$isEmailNotification = data['isEmailNotification'];
    result$data['isEmailNotification'] = (l$isEmailNotification as bool);
    final l$isPushNotification = data['isPushNotification'];
    result$data['isPushNotification'] = (l$isPushNotification as bool);
    final l$isSilentModeOn = data['isSilentModeOn'];
    result$data['isSilentModeOn'] = (l$isSilentModeOn as bool);
    return Variables$Mutation$UpdateNotificationPreference._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NotificationsPreferenceInputType? get emailNotification =>
      (_$data['emailNotification'] as Input$NotificationsPreferenceInputType?);

  Input$NotificationsPreferenceInputType? get inappNotification =>
      (_$data['inappNotification'] as Input$NotificationsPreferenceInputType?);

  bool get isEmailNotification => (_$data['isEmailNotification'] as bool);

  bool get isPushNotification => (_$data['isPushNotification'] as bool);

  bool get isSilentModeOn => (_$data['isSilentModeOn'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('emailNotification')) {
      final l$emailNotification = emailNotification;
      result$data['emailNotification'] = l$emailNotification?.toJson();
    }
    if (_$data.containsKey('inappNotification')) {
      final l$inappNotification = inappNotification;
      result$data['inappNotification'] = l$inappNotification?.toJson();
    }
    final l$isEmailNotification = isEmailNotification;
    result$data['isEmailNotification'] = l$isEmailNotification;
    final l$isPushNotification = isPushNotification;
    result$data['isPushNotification'] = l$isPushNotification;
    final l$isSilentModeOn = isSilentModeOn;
    result$data['isSilentModeOn'] = l$isSilentModeOn;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateNotificationPreference<
          Variables$Mutation$UpdateNotificationPreference>
      get copyWith => CopyWith$Variables$Mutation$UpdateNotificationPreference(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateNotificationPreference ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailNotification = emailNotification;
    final lOther$emailNotification = other.emailNotification;
    if (_$data.containsKey('emailNotification') !=
        other._$data.containsKey('emailNotification')) {
      return false;
    }
    if (l$emailNotification != lOther$emailNotification) {
      return false;
    }
    final l$inappNotification = inappNotification;
    final lOther$inappNotification = other.inappNotification;
    if (_$data.containsKey('inappNotification') !=
        other._$data.containsKey('inappNotification')) {
      return false;
    }
    if (l$inappNotification != lOther$inappNotification) {
      return false;
    }
    final l$isEmailNotification = isEmailNotification;
    final lOther$isEmailNotification = other.isEmailNotification;
    if (l$isEmailNotification != lOther$isEmailNotification) {
      return false;
    }
    final l$isPushNotification = isPushNotification;
    final lOther$isPushNotification = other.isPushNotification;
    if (l$isPushNotification != lOther$isPushNotification) {
      return false;
    }
    final l$isSilentModeOn = isSilentModeOn;
    final lOther$isSilentModeOn = other.isSilentModeOn;
    if (l$isSilentModeOn != lOther$isSilentModeOn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$emailNotification = emailNotification;
    final l$inappNotification = inappNotification;
    final l$isEmailNotification = isEmailNotification;
    final l$isPushNotification = isPushNotification;
    final l$isSilentModeOn = isSilentModeOn;
    return Object.hashAll([
      _$data.containsKey('emailNotification') ? l$emailNotification : const {},
      _$data.containsKey('inappNotification') ? l$inappNotification : const {},
      l$isEmailNotification,
      l$isPushNotification,
      l$isSilentModeOn,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateNotificationPreference<TRes> {
  factory CopyWith$Variables$Mutation$UpdateNotificationPreference(
    Variables$Mutation$UpdateNotificationPreference instance,
    TRes Function(Variables$Mutation$UpdateNotificationPreference) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateNotificationPreference;

  factory CopyWith$Variables$Mutation$UpdateNotificationPreference.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateNotificationPreference;

  TRes call({
    Input$NotificationsPreferenceInputType? emailNotification,
    Input$NotificationsPreferenceInputType? inappNotification,
    bool? isEmailNotification,
    bool? isPushNotification,
    bool? isSilentModeOn,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateNotificationPreference<TRes>
    implements CopyWith$Variables$Mutation$UpdateNotificationPreference<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateNotificationPreference(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateNotificationPreference _instance;

  final TRes Function(Variables$Mutation$UpdateNotificationPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailNotification = _undefined,
    Object? inappNotification = _undefined,
    Object? isEmailNotification = _undefined,
    Object? isPushNotification = _undefined,
    Object? isSilentModeOn = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateNotificationPreference._({
        ..._instance._$data,
        if (emailNotification != _undefined)
          'emailNotification':
              (emailNotification as Input$NotificationsPreferenceInputType?),
        if (inappNotification != _undefined)
          'inappNotification':
              (inappNotification as Input$NotificationsPreferenceInputType?),
        if (isEmailNotification != _undefined && isEmailNotification != null)
          'isEmailNotification': (isEmailNotification as bool),
        if (isPushNotification != _undefined && isPushNotification != null)
          'isPushNotification': (isPushNotification as bool),
        if (isSilentModeOn != _undefined && isSilentModeOn != null)
          'isSilentModeOn': (isSilentModeOn as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateNotificationPreference<TRes>
    implements CopyWith$Variables$Mutation$UpdateNotificationPreference<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateNotificationPreference(this._res);

  TRes _res;

  call({
    Input$NotificationsPreferenceInputType? emailNotification,
    Input$NotificationsPreferenceInputType? inappNotification,
    bool? isEmailNotification,
    bool? isPushNotification,
    bool? isSilentModeOn,
  }) =>
      _res;
}

class Mutation$UpdateNotificationPreference {
  Mutation$UpdateNotificationPreference({
    this.updateNotificationPreference,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateNotificationPreference.fromJson(
      Map<String, dynamic> json) {
    final l$updateNotificationPreference = json['updateNotificationPreference'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNotificationPreference(
      updateNotificationPreference: l$updateNotificationPreference == null
          ? null
          : Mutation$UpdateNotificationPreference$updateNotificationPreference
              .fromJson(
                  (l$updateNotificationPreference as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateNotificationPreference$updateNotificationPreference?
      updateNotificationPreference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateNotificationPreference = updateNotificationPreference;
    _resultData['updateNotificationPreference'] =
        l$updateNotificationPreference?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateNotificationPreference = updateNotificationPreference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateNotificationPreference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateNotificationPreference ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateNotificationPreference = updateNotificationPreference;
    final lOther$updateNotificationPreference =
        other.updateNotificationPreference;
    if (l$updateNotificationPreference != lOther$updateNotificationPreference) {
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

extension UtilityExtension$Mutation$UpdateNotificationPreference
    on Mutation$UpdateNotificationPreference {
  CopyWith$Mutation$UpdateNotificationPreference<
          Mutation$UpdateNotificationPreference>
      get copyWith => CopyWith$Mutation$UpdateNotificationPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateNotificationPreference<TRes> {
  factory CopyWith$Mutation$UpdateNotificationPreference(
    Mutation$UpdateNotificationPreference instance,
    TRes Function(Mutation$UpdateNotificationPreference) then,
  ) = _CopyWithImpl$Mutation$UpdateNotificationPreference;

  factory CopyWith$Mutation$UpdateNotificationPreference.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateNotificationPreference;

  TRes call({
    Mutation$UpdateNotificationPreference$updateNotificationPreference?
        updateNotificationPreference,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
      TRes> get updateNotificationPreference;
}

class _CopyWithImpl$Mutation$UpdateNotificationPreference<TRes>
    implements CopyWith$Mutation$UpdateNotificationPreference<TRes> {
  _CopyWithImpl$Mutation$UpdateNotificationPreference(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNotificationPreference _instance;

  final TRes Function(Mutation$UpdateNotificationPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateNotificationPreference = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateNotificationPreference(
        updateNotificationPreference: updateNotificationPreference == _undefined
            ? _instance.updateNotificationPreference
            : (updateNotificationPreference
                as Mutation$UpdateNotificationPreference$updateNotificationPreference?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
      TRes> get updateNotificationPreference {
    final local$updateNotificationPreference =
        _instance.updateNotificationPreference;
    return local$updateNotificationPreference == null
        ? CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference(
            local$updateNotificationPreference,
            (e) => call(updateNotificationPreference: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateNotificationPreference<TRes>
    implements CopyWith$Mutation$UpdateNotificationPreference<TRes> {
  _CopyWithStubImpl$Mutation$UpdateNotificationPreference(this._res);

  TRes _res;

  call({
    Mutation$UpdateNotificationPreference$updateNotificationPreference?
        updateNotificationPreference,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
          TRes>
      get updateNotificationPreference =>
          CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference
              .stub(_res);
}

const documentNodeMutationUpdateNotificationPreference =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateNotificationPreference'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'emailNotification')),
        type: NamedTypeNode(
          name: NameNode(value: 'NotificationsPreferenceInputType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'inappNotification')),
        type: NamedTypeNode(
          name: NameNode(value: 'NotificationsPreferenceInputType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isEmailNotification')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isPushNotification')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isSilentModeOn')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateNotificationPreference'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'emailNotifications'),
            value: VariableNode(name: NameNode(value: 'emailNotification')),
          ),
          ArgumentNode(
            name: NameNode(value: 'inappNotifications'),
            value: VariableNode(name: NameNode(value: 'inappNotification')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isEmailNotification'),
            value: VariableNode(name: NameNode(value: 'isEmailNotification')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isPushNotification'),
            value: VariableNode(name: NameNode(value: 'isPushNotification')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isSilentModeOn'),
            value: VariableNode(name: NameNode(value: 'isSilentModeOn')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'notificationPreference'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
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
                name: NameNode(value: 'isPushNotification'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isEmailNotification'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'inappNotifications'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'emailNotifications'),
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
Mutation$UpdateNotificationPreference
    _parserFn$Mutation$UpdateNotificationPreference(
            Map<String, dynamic> data) =>
        Mutation$UpdateNotificationPreference.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateNotificationPreference
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateNotificationPreference?,
);

class Options$Mutation$UpdateNotificationPreference
    extends graphql.MutationOptions<Mutation$UpdateNotificationPreference> {
  Options$Mutation$UpdateNotificationPreference({
    String? operationName,
    required Variables$Mutation$UpdateNotificationPreference variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateNotificationPreference? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateNotificationPreference? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateNotificationPreference>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateNotificationPreference(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateNotificationPreference,
          parserFn: _parserFn$Mutation$UpdateNotificationPreference,
        );

  final OnMutationCompleted$Mutation$UpdateNotificationPreference?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateNotificationPreference
    extends graphql.WatchQueryOptions<Mutation$UpdateNotificationPreference> {
  WatchOptions$Mutation$UpdateNotificationPreference({
    String? operationName,
    required Variables$Mutation$UpdateNotificationPreference variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateNotificationPreference? typedOptimisticResult,
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
          document: documentNodeMutationUpdateNotificationPreference,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateNotificationPreference,
        );
}

extension ClientExtension$Mutation$UpdateNotificationPreference
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateNotificationPreference>>
      mutate$UpdateNotificationPreference(
              Options$Mutation$UpdateNotificationPreference options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateNotificationPreference>
      watchMutation$UpdateNotificationPreference(
              WatchOptions$Mutation$UpdateNotificationPreference options) =>
          this.watchMutation(options);
}

class Mutation$UpdateNotificationPreference$updateNotificationPreference {
  Mutation$UpdateNotificationPreference$updateNotificationPreference({
    this.success,
    this.notificationPreference,
    this.$__typename = 'UpdateNotificationPreference',
  });

  factory Mutation$UpdateNotificationPreference$updateNotificationPreference.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$notificationPreference = json['notificationPreference'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNotificationPreference$updateNotificationPreference(
      success: (l$success as bool?),
      notificationPreference: l$notificationPreference == null
          ? null
          : Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference
              .fromJson((l$notificationPreference as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference?
      notificationPreference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$notificationPreference = notificationPreference;
    _resultData['notificationPreference'] = l$notificationPreference?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$notificationPreference = notificationPreference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$notificationPreference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateNotificationPreference$updateNotificationPreference ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$notificationPreference = notificationPreference;
    final lOther$notificationPreference = other.notificationPreference;
    if (l$notificationPreference != lOther$notificationPreference) {
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

extension UtilityExtension$Mutation$UpdateNotificationPreference$updateNotificationPreference
    on Mutation$UpdateNotificationPreference$updateNotificationPreference {
  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
          Mutation$UpdateNotificationPreference$updateNotificationPreference>
      get copyWith =>
          CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
    TRes> {
  factory CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference(
    Mutation$UpdateNotificationPreference$updateNotificationPreference instance,
    TRes Function(
            Mutation$UpdateNotificationPreference$updateNotificationPreference)
        then,
  ) = _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference;

  factory CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference;

  TRes call({
    bool? success,
    Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference?
        notificationPreference,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
      TRes> get notificationPreference;
}

class _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference<
        TRes>
    implements
        CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
            TRes> {
  _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNotificationPreference$updateNotificationPreference
      _instance;

  final TRes Function(
      Mutation$UpdateNotificationPreference$updateNotificationPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? notificationPreference = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateNotificationPreference$updateNotificationPreference(
        success: success == _undefined ? _instance.success : (success as bool?),
        notificationPreference: notificationPreference == _undefined
            ? _instance.notificationPreference
            : (notificationPreference
                as Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
      TRes> get notificationPreference {
    final local$notificationPreference = _instance.notificationPreference;
    return local$notificationPreference == null
        ? CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
            local$notificationPreference,
            (e) => call(notificationPreference: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference<
        TRes>
    implements
        CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference(
      this._res);

  TRes _res;

  call({
    bool? success,
    Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference?
        notificationPreference,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
          TRes>
      get notificationPreference =>
          CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference
              .stub(_res);
}

class Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference {
  Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference({
    this.user,
    required this.isPushNotification,
    required this.isEmailNotification,
    required this.inappNotifications,
    required this.emailNotifications,
    this.$__typename = 'NotificationPreferenceType',
  });

  factory Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$isPushNotification = json['isPushNotification'];
    final l$isEmailNotification = json['isEmailNotification'];
    final l$inappNotifications = json['inappNotifications'];
    final l$emailNotifications = json['emailNotifications'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
      user: l$user == null
          ? null
          : Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user
              .fromJson((l$user as Map<String, dynamic>)),
      isPushNotification: (l$isPushNotification as bool),
      isEmailNotification: (l$isEmailNotification as bool),
      inappNotifications: (l$inappNotifications as String),
      emailNotifications: (l$emailNotifications as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user?
      user;

  final bool isPushNotification;

  final bool isEmailNotification;

  final String inappNotifications;

  final String emailNotifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$isPushNotification = isPushNotification;
    _resultData['isPushNotification'] = l$isPushNotification;
    final l$isEmailNotification = isEmailNotification;
    _resultData['isEmailNotification'] = l$isEmailNotification;
    final l$inappNotifications = inappNotifications;
    _resultData['inappNotifications'] = l$inappNotifications;
    final l$emailNotifications = emailNotifications;
    _resultData['emailNotifications'] = l$emailNotifications;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$isPushNotification = isPushNotification;
    final l$isEmailNotification = isEmailNotification;
    final l$inappNotifications = inappNotifications;
    final l$emailNotifications = emailNotifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$isPushNotification,
      l$isEmailNotification,
      l$inappNotifications,
      l$emailNotifications,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$isPushNotification = isPushNotification;
    final lOther$isPushNotification = other.isPushNotification;
    if (l$isPushNotification != lOther$isPushNotification) {
      return false;
    }
    final l$isEmailNotification = isEmailNotification;
    final lOther$isEmailNotification = other.isEmailNotification;
    if (l$isEmailNotification != lOther$isEmailNotification) {
      return false;
    }
    final l$inappNotifications = inappNotifications;
    final lOther$inappNotifications = other.inappNotifications;
    if (l$inappNotifications != lOther$inappNotifications) {
      return false;
    }
    final l$emailNotifications = emailNotifications;
    final lOther$emailNotifications = other.emailNotifications;
    if (l$emailNotifications != lOther$emailNotifications) {
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

extension UtilityExtension$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference
    on Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference {
  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
          Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference>
      get copyWith =>
          CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
    TRes> {
  factory CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
    Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference
        instance,
    TRes Function(
            Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference)
        then,
  ) = _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference;

  factory CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference;

  TRes call({
    Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user?
        user,
    bool? isPushNotification,
    bool? isEmailNotification,
    String? inappNotifications,
    String? emailNotifications,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
      TRes> get user;
}

class _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
        TRes>
    implements
        CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
            TRes> {
  _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference
      _instance;

  final TRes Function(
          Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? isPushNotification = _undefined,
    Object? isEmailNotification = _undefined,
    Object? inappNotifications = _undefined,
    Object? emailNotifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
        user: user == _undefined
            ? _instance.user
            : (user
                as Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user?),
        isPushNotification:
            isPushNotification == _undefined || isPushNotification == null
                ? _instance.isPushNotification
                : (isPushNotification as bool),
        isEmailNotification:
            isEmailNotification == _undefined || isEmailNotification == null
                ? _instance.isEmailNotification
                : (isEmailNotification as bool),
        inappNotifications:
            inappNotifications == _undefined || inappNotifications == null
                ? _instance.inappNotifications
                : (inappNotifications as String),
        emailNotifications:
            emailNotifications == _undefined || emailNotifications == null
                ? _instance.emailNotifications
                : (emailNotifications as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
        TRes>
    implements
        CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference(
      this._res);

  TRes _res;

  call({
    Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user?
        user,
    bool? isPushNotification,
    bool? isEmailNotification,
    String? inappNotifications,
    String? emailNotifications,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
          TRes>
      get user =>
          CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user
              .stub(_res);
}

class Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user {
  Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
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
    if (other
            is! Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user ||
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

extension UtilityExtension$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user
    on Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user {
  CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
          Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user>
      get copyWith =>
          CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
    TRes> {
  factory CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
    Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user
        instance,
    TRes Function(
            Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user)
        then,
  ) = _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user;

  factory CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
        TRes>
    implements
        CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
            TRes> {
  _CopyWithImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user
      _instance;

  final TRes Function(
          Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
        TRes>
    implements
        CopyWith$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateNotificationPreference$updateNotificationPreference$notificationPreference$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOrder {
  factory Variables$Mutation$CreateOrder({
    required int productId,
    List<int?>? productIds,
    double? shippingFee,
  }) =>
      Variables$Mutation$CreateOrder._({
        r'productId': productId,
        if (productIds != null) r'productIds': productIds,
        if (shippingFee != null) r'shippingFee': shippingFee,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as int);
    if (data.containsKey('productIds')) {
      final l$productIds = data['productIds'];
      result$data['productIds'] =
          (l$productIds as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('shippingFee')) {
      final l$shippingFee = data['shippingFee'];
      result$data['shippingFee'] = (l$shippingFee as num?)?.toDouble();
    }
    return Variables$Mutation$CreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  int get productId => (_$data['productId'] as int);

  List<int?>? get productIds => (_$data['productIds'] as List<int?>?);

  double? get shippingFee => (_$data['shippingFee'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$productId = productId;
    result$data['productId'] = l$productId;
    if (_$data.containsKey('productIds')) {
      final l$productIds = productIds;
      result$data['productIds'] = l$productIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('shippingFee')) {
      final l$shippingFee = shippingFee;
      result$data['shippingFee'] = l$shippingFee;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrder<Variables$Mutation$CreateOrder>
      get copyWith => CopyWith$Variables$Mutation$CreateOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$productIds = productIds;
    final lOther$productIds = other.productIds;
    if (_$data.containsKey('productIds') !=
        other._$data.containsKey('productIds')) {
      return false;
    }
    if (l$productIds != null && lOther$productIds != null) {
      if (l$productIds.length != lOther$productIds.length) {
        return false;
      }
      for (int i = 0; i < l$productIds.length; i++) {
        final l$productIds$entry = l$productIds[i];
        final lOther$productIds$entry = lOther$productIds[i];
        if (l$productIds$entry != lOther$productIds$entry) {
          return false;
        }
      }
    } else if (l$productIds != lOther$productIds) {
      return false;
    }
    final l$shippingFee = shippingFee;
    final lOther$shippingFee = other.shippingFee;
    if (_$data.containsKey('shippingFee') !=
        other._$data.containsKey('shippingFee')) {
      return false;
    }
    if (l$shippingFee != lOther$shippingFee) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    final l$productIds = productIds;
    final l$shippingFee = shippingFee;
    return Object.hashAll([
      l$productId,
      _$data.containsKey('productIds')
          ? l$productIds == null
              ? null
              : Object.hashAll(l$productIds.map((v) => v))
          : const {},
      _$data.containsKey('shippingFee') ? l$shippingFee : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrder<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrder(
    Variables$Mutation$CreateOrder instance,
    TRes Function(Variables$Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrder;

  factory CopyWith$Variables$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrder;

  TRes call({
    int? productId,
    List<int?>? productIds,
    double? shippingFee,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrder _instance;

  final TRes Function(Variables$Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? productIds = _undefined,
    Object? shippingFee = _undefined,
  }) =>
      _then(Variables$Mutation$CreateOrder._({
        ..._instance._$data,
        if (productId != _undefined && productId != null)
          'productId': (productId as int),
        if (productIds != _undefined) 'productIds': (productIds as List<int?>?),
        if (shippingFee != _undefined) 'shippingFee': (shippingFee as double?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    int? productId,
    List<int?>? productIds,
    double? shippingFee,
  }) =>
      _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    this.createOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$createOrder = json['createOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder(
      createOrder: l$createOrder == null
          ? null
          : Mutation$CreateOrder$createOrder.fromJson(
              (l$createOrder as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrder$createOrder? createOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOrder = createOrder;
    _resultData['createOrder'] = l$createOrder?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOrder = createOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOrder,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOrder = createOrder;
    final lOther$createOrder = other.createOrder;
    if (l$createOrder != lOther$createOrder) {
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

extension UtilityExtension$Mutation$CreateOrder on Mutation$CreateOrder {
  CopyWith$Mutation$CreateOrder<Mutation$CreateOrder> get copyWith =>
      CopyWith$Mutation$CreateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrder<TRes> {
  factory CopyWith$Mutation$CreateOrder(
    Mutation$CreateOrder instance,
    TRes Function(Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Mutation$CreateOrder;

  factory CopyWith$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder;

  TRes call({
    Mutation$CreateOrder$createOrder? createOrder,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$createOrder<TRes> get createOrder;
}

class _CopyWithImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder _instance;

  final TRes Function(Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder(
        createOrder: createOrder == _undefined
            ? _instance.createOrder
            : (createOrder as Mutation$CreateOrder$createOrder?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrder$createOrder<TRes> get createOrder {
    final local$createOrder = _instance.createOrder;
    return local$createOrder == null
        ? CopyWith$Mutation$CreateOrder$createOrder.stub(_then(_instance))
        : CopyWith$Mutation$CreateOrder$createOrder(
            local$createOrder, (e) => call(createOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Mutation$CreateOrder$createOrder? createOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrder$createOrder<TRes> get createOrder =>
      CopyWith$Mutation$CreateOrder$createOrder.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'shippingFee')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'productIds'),
            value: VariableNode(name: NameNode(value: 'productIds')),
          ),
          ArgumentNode(
            name: NameNode(value: 'shippingFee'),
            value: VariableNode(name: NameNode(value: 'shippingFee')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'order'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'createdAt'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'priceTotal'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'shippingAddress'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'shippingFee'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
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
                name: NameNode(value: 'products'),
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
                    name: NameNode(value: 'imagesUrl'),
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
                    name: NameNode(value: 'size'),
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
            name: NameNode(value: 'success'),
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
Mutation$CreateOrder _parserFn$Mutation$CreateOrder(
        Map<String, dynamic> data) =>
    Mutation$CreateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrder?,
);

class Options$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  Options$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrder
    extends graphql.WatchQueryOptions<Mutation$CreateOrder> {
  WatchOptions$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrder,
        );
}

extension ClientExtension$Mutation$CreateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrder>> mutate$CreateOrder(
          Options$Mutation$CreateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrder> watchMutation$CreateOrder(
          WatchOptions$Mutation$CreateOrder options) =>
      this.watchMutation(options);
}

class Mutation$CreateOrder$createOrder {
  Mutation$CreateOrder$createOrder({
    this.order,
    this.success,
    this.$__typename = 'CreateOrder',
  });

  factory Mutation$CreateOrder$createOrder.fromJson(Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$createOrder(
      order: l$order == null
          ? null
          : Mutation$CreateOrder$createOrder$order.fromJson(
              (l$order as Map<String, dynamic>)),
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrder$createOrder$order? order;

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order?.toJson();
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrder$createOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$CreateOrder$createOrder
    on Mutation$CreateOrder$createOrder {
  CopyWith$Mutation$CreateOrder$createOrder<Mutation$CreateOrder$createOrder>
      get copyWith => CopyWith$Mutation$CreateOrder$createOrder(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$createOrder<TRes> {
  factory CopyWith$Mutation$CreateOrder$createOrder(
    Mutation$CreateOrder$createOrder instance,
    TRes Function(Mutation$CreateOrder$createOrder) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$createOrder;

  factory CopyWith$Mutation$CreateOrder$createOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$createOrder;

  TRes call({
    Mutation$CreateOrder$createOrder$order? order,
    bool? success,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$createOrder$order<TRes> get order;
}

class _CopyWithImpl$Mutation$CreateOrder$createOrder<TRes>
    implements CopyWith$Mutation$CreateOrder$createOrder<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$createOrder(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$createOrder _instance;

  final TRes Function(Mutation$CreateOrder$createOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$createOrder(
        order: order == _undefined
            ? _instance.order
            : (order as Mutation$CreateOrder$createOrder$order?),
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrder$createOrder$order<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith$Mutation$CreateOrder$createOrder$order.stub(_then(_instance))
        : CopyWith$Mutation$CreateOrder$createOrder$order(
            local$order, (e) => call(order: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder$createOrder<TRes>
    implements CopyWith$Mutation$CreateOrder$createOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$createOrder(this._res);

  TRes _res;

  call({
    Mutation$CreateOrder$createOrder$order? order,
    bool? success,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrder$createOrder$order<TRes> get order =>
      CopyWith$Mutation$CreateOrder$createOrder$order.stub(_res);
}

class Mutation$CreateOrder$createOrder$order {
  Mutation$CreateOrder$createOrder$order({
    required this.createdAt,
    required this.discountPrice,
    required this.id,
    required this.priceTotal,
    required this.shippingAddress,
    required this.shippingFee,
    this.status,
    required this.updatedAt,
    this.products,
    this.$__typename = 'OrderType',
  });

  factory Mutation$CreateOrder$createOrder$order.fromJson(
      Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$discountPrice = json['discountPrice'];
    final l$id = json['id'];
    final l$priceTotal = json['priceTotal'];
    final l$shippingAddress = json['shippingAddress'];
    final l$shippingFee = json['shippingFee'];
    final l$status = json['status'];
    final l$updatedAt = json['updatedAt'];
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$createOrder$order(
      createdAt: DateTime.parse((l$createdAt as String)),
      discountPrice: (l$discountPrice as String),
      id: (l$id as String),
      priceTotal: (l$priceTotal as String),
      shippingAddress: (l$shippingAddress as String),
      shippingFee: (l$shippingFee as String),
      status: l$status == null
          ? null
          : fromJson$Enum$OrderStatusEnum((l$status as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      products: (l$products as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$CreateOrder$createOrder$order$products.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime createdAt;

  final String discountPrice;

  final String id;

  final String priceTotal;

  final String shippingAddress;

  final String shippingFee;

  final Enum$OrderStatusEnum? status;

  final DateTime updatedAt;

  final List<Mutation$CreateOrder$createOrder$order$products?>? products;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$discountPrice = discountPrice;
    _resultData['discountPrice'] = l$discountPrice;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$priceTotal = priceTotal;
    _resultData['priceTotal'] = l$priceTotal;
    final l$shippingAddress = shippingAddress;
    _resultData['shippingAddress'] = l$shippingAddress;
    final l$shippingFee = shippingFee;
    _resultData['shippingFee'] = l$shippingFee;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$OrderStatusEnum(l$status);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$products = products;
    _resultData['products'] = l$products?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$discountPrice = discountPrice;
    final l$id = id;
    final l$priceTotal = priceTotal;
    final l$shippingAddress = shippingAddress;
    final l$shippingFee = shippingFee;
    final l$status = status;
    final l$updatedAt = updatedAt;
    final l$products = products;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$discountPrice,
      l$id,
      l$priceTotal,
      l$shippingAddress,
      l$shippingFee,
      l$status,
      l$updatedAt,
      l$products == null ? null : Object.hashAll(l$products.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrder$createOrder$order ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$discountPrice = discountPrice;
    final lOther$discountPrice = other.discountPrice;
    if (l$discountPrice != lOther$discountPrice) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$priceTotal = priceTotal;
    final lOther$priceTotal = other.priceTotal;
    if (l$priceTotal != lOther$priceTotal) {
      return false;
    }
    final l$shippingAddress = shippingAddress;
    final lOther$shippingAddress = other.shippingAddress;
    if (l$shippingAddress != lOther$shippingAddress) {
      return false;
    }
    final l$shippingFee = shippingFee;
    final lOther$shippingFee = other.shippingFee;
    if (l$shippingFee != lOther$shippingFee) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products != null && lOther$products != null) {
      if (l$products.length != lOther$products.length) {
        return false;
      }
      for (int i = 0; i < l$products.length; i++) {
        final l$products$entry = l$products[i];
        final lOther$products$entry = lOther$products[i];
        if (l$products$entry != lOther$products$entry) {
          return false;
        }
      }
    } else if (l$products != lOther$products) {
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

extension UtilityExtension$Mutation$CreateOrder$createOrder$order
    on Mutation$CreateOrder$createOrder$order {
  CopyWith$Mutation$CreateOrder$createOrder$order<
          Mutation$CreateOrder$createOrder$order>
      get copyWith => CopyWith$Mutation$CreateOrder$createOrder$order(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$createOrder$order<TRes> {
  factory CopyWith$Mutation$CreateOrder$createOrder$order(
    Mutation$CreateOrder$createOrder$order instance,
    TRes Function(Mutation$CreateOrder$createOrder$order) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$createOrder$order;

  factory CopyWith$Mutation$CreateOrder$createOrder$order.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order;

  TRes call({
    DateTime? createdAt,
    String? discountPrice,
    String? id,
    String? priceTotal,
    String? shippingAddress,
    String? shippingFee,
    Enum$OrderStatusEnum? status,
    DateTime? updatedAt,
    List<Mutation$CreateOrder$createOrder$order$products?>? products,
    String? $__typename,
  });
  TRes products(
      Iterable<Mutation$CreateOrder$createOrder$order$products?>? Function(
              Iterable<
                  CopyWith$Mutation$CreateOrder$createOrder$order$products<
                      Mutation$CreateOrder$createOrder$order$products>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$CreateOrder$createOrder$order<TRes>
    implements CopyWith$Mutation$CreateOrder$createOrder$order<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$createOrder$order(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$createOrder$order _instance;

  final TRes Function(Mutation$CreateOrder$createOrder$order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? discountPrice = _undefined,
    Object? id = _undefined,
    Object? priceTotal = _undefined,
    Object? shippingAddress = _undefined,
    Object? shippingFee = _undefined,
    Object? status = _undefined,
    Object? updatedAt = _undefined,
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$createOrder$order(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        discountPrice: discountPrice == _undefined || discountPrice == null
            ? _instance.discountPrice
            : (discountPrice as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        priceTotal: priceTotal == _undefined || priceTotal == null
            ? _instance.priceTotal
            : (priceTotal as String),
        shippingAddress:
            shippingAddress == _undefined || shippingAddress == null
                ? _instance.shippingAddress
                : (shippingAddress as String),
        shippingFee: shippingFee == _undefined || shippingFee == null
            ? _instance.shippingFee
            : (shippingFee as String),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$OrderStatusEnum?),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        products: products == _undefined
            ? _instance.products
            : (products
                as List<Mutation$CreateOrder$createOrder$order$products?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes products(
          Iterable<Mutation$CreateOrder$createOrder$order$products?>? Function(
                  Iterable<
                      CopyWith$Mutation$CreateOrder$createOrder$order$products<
                          Mutation$CreateOrder$createOrder$order$products>?>?)
              _fn) =>
      call(
          products: _fn(_instance.products?.map((e) => e == null
              ? null
              : CopyWith$Mutation$CreateOrder$createOrder$order$products(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order<TRes>
    implements CopyWith$Mutation$CreateOrder$createOrder$order<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order(this._res);

  TRes _res;

  call({
    DateTime? createdAt,
    String? discountPrice,
    String? id,
    String? priceTotal,
    String? shippingAddress,
    String? shippingFee,
    Enum$OrderStatusEnum? status,
    DateTime? updatedAt,
    List<Mutation$CreateOrder$createOrder$order$products?>? products,
    String? $__typename,
  }) =>
      _res;

  products(_fn) => _res;
}

class Mutation$CreateOrder$createOrder$order$products {
  Mutation$CreateOrder$createOrder$order$products({
    required this.id,
    required this.imagesUrl,
    required this.name,
    this.size,
    this.$__typename = 'ProductType',
  });

  factory Mutation$CreateOrder$createOrder$order$products.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$imagesUrl = json['imagesUrl'];
    final l$name = json['name'];
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$createOrder$order$products(
      id: (l$id as String),
      imagesUrl:
          (l$imagesUrl as List<dynamic>).map((e) => (e as String)).toList(),
      name: (l$name as String),
      size: l$size == null
          ? null
          : Mutation$CreateOrder$createOrder$order$products$size.fromJson(
              (l$size as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<String> imagesUrl;

  final String name;

  final Mutation$CreateOrder$createOrder$order$products$size? size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$imagesUrl = imagesUrl;
    _resultData['imagesUrl'] = l$imagesUrl.map((e) => e).toList();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$size = size;
    _resultData['size'] = l$size?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$imagesUrl = imagesUrl;
    final l$name = name;
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$imagesUrl.map((v) => v)),
      l$name,
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrder$createOrder$order$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
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

extension UtilityExtension$Mutation$CreateOrder$createOrder$order$products
    on Mutation$CreateOrder$createOrder$order$products {
  CopyWith$Mutation$CreateOrder$createOrder$order$products<
          Mutation$CreateOrder$createOrder$order$products>
      get copyWith => CopyWith$Mutation$CreateOrder$createOrder$order$products(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$createOrder$order$products<TRes> {
  factory CopyWith$Mutation$CreateOrder$createOrder$order$products(
    Mutation$CreateOrder$createOrder$order$products instance,
    TRes Function(Mutation$CreateOrder$createOrder$order$products) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$createOrder$order$products;

  factory CopyWith$Mutation$CreateOrder$createOrder$order$products.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order$products;

  TRes call({
    String? id,
    List<String>? imagesUrl,
    String? name,
    Mutation$CreateOrder$createOrder$order$products$size? size,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$createOrder$order$products$size<TRes> get size;
}

class _CopyWithImpl$Mutation$CreateOrder$createOrder$order$products<TRes>
    implements CopyWith$Mutation$CreateOrder$createOrder$order$products<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$createOrder$order$products(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$createOrder$order$products _instance;

  final TRes Function(Mutation$CreateOrder$createOrder$order$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? imagesUrl = _undefined,
    Object? name = _undefined,
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$createOrder$order$products(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        imagesUrl: imagesUrl == _undefined || imagesUrl == null
            ? _instance.imagesUrl
            : (imagesUrl as List<String>),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        size: size == _undefined
            ? _instance.size
            : (size as Mutation$CreateOrder$createOrder$order$products$size?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrder$createOrder$order$products$size<TRes> get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Mutation$CreateOrder$createOrder$order$products$size.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateOrder$createOrder$order$products$size(
            local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order$products<TRes>
    implements CopyWith$Mutation$CreateOrder$createOrder$order$products<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order$products(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? imagesUrl,
    String? name,
    Mutation$CreateOrder$createOrder$order$products$size? size,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrder$createOrder$order$products$size<TRes>
      get size =>
          CopyWith$Mutation$CreateOrder$createOrder$order$products$size.stub(
              _res);
}

class Mutation$CreateOrder$createOrder$order$products$size {
  Mutation$CreateOrder$createOrder$order$products$size({
    this.id,
    this.name,
    this.$__typename = 'SizeType',
  });

  factory Mutation$CreateOrder$createOrder$order$products$size.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$createOrder$order$products$size(
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
    if (other is! Mutation$CreateOrder$createOrder$order$products$size ||
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

extension UtilityExtension$Mutation$CreateOrder$createOrder$order$products$size
    on Mutation$CreateOrder$createOrder$order$products$size {
  CopyWith$Mutation$CreateOrder$createOrder$order$products$size<
          Mutation$CreateOrder$createOrder$order$products$size>
      get copyWith =>
          CopyWith$Mutation$CreateOrder$createOrder$order$products$size(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$createOrder$order$products$size<
    TRes> {
  factory CopyWith$Mutation$CreateOrder$createOrder$order$products$size(
    Mutation$CreateOrder$createOrder$order$products$size instance,
    TRes Function(Mutation$CreateOrder$createOrder$order$products$size) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$createOrder$order$products$size;

  factory CopyWith$Mutation$CreateOrder$createOrder$order$products$size.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order$products$size;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOrder$createOrder$order$products$size<TRes>
    implements
        CopyWith$Mutation$CreateOrder$createOrder$order$products$size<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$createOrder$order$products$size(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$createOrder$order$products$size _instance;

  final TRes Function(Mutation$CreateOrder$createOrder$order$products$size)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$createOrder$order$products$size(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order$products$size<
        TRes>
    implements
        CopyWith$Mutation$CreateOrder$createOrder$order$products$size<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$createOrder$order$products$size(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CancelOrder {
  factory Variables$Mutation$CancelOrder({required int orderId}) =>
      Variables$Mutation$CancelOrder._({
        r'orderId': orderId,
      });

  Variables$Mutation$CancelOrder._(this._$data);

  factory Variables$Mutation$CancelOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as int);
    return Variables$Mutation$CancelOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  int get orderId => (_$data['orderId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CancelOrder<Variables$Mutation$CancelOrder>
      get copyWith => CopyWith$Variables$Mutation$CancelOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CancelOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    return Object.hashAll([l$orderId]);
  }
}

abstract class CopyWith$Variables$Mutation$CancelOrder<TRes> {
  factory CopyWith$Variables$Mutation$CancelOrder(
    Variables$Mutation$CancelOrder instance,
    TRes Function(Variables$Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CancelOrder;

  factory CopyWith$Variables$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CancelOrder;

  TRes call({int? orderId});
}

class _CopyWithImpl$Variables$Mutation$CancelOrder<TRes>
    implements CopyWith$Variables$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CancelOrder _instance;

  final TRes Function(Variables$Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) =>
      _then(Variables$Mutation$CancelOrder._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CancelOrder<TRes>
    implements CopyWith$Variables$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CancelOrder(this._res);

  TRes _res;

  call({int? orderId}) => _res;
}

class Mutation$CancelOrder {
  Mutation$CancelOrder({
    this.cancelOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CancelOrder.fromJson(Map<String, dynamic> json) {
    final l$cancelOrder = json['cancelOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$CancelOrder(
      cancelOrder: l$cancelOrder == null
          ? null
          : Mutation$CancelOrder$cancelOrder.fromJson(
              (l$cancelOrder as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CancelOrder$cancelOrder? cancelOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cancelOrder = cancelOrder;
    _resultData['cancelOrder'] = l$cancelOrder?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cancelOrder = cancelOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cancelOrder,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CancelOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelOrder = cancelOrder;
    final lOther$cancelOrder = other.cancelOrder;
    if (l$cancelOrder != lOther$cancelOrder) {
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

extension UtilityExtension$Mutation$CancelOrder on Mutation$CancelOrder {
  CopyWith$Mutation$CancelOrder<Mutation$CancelOrder> get copyWith =>
      CopyWith$Mutation$CancelOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CancelOrder<TRes> {
  factory CopyWith$Mutation$CancelOrder(
    Mutation$CancelOrder instance,
    TRes Function(Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Mutation$CancelOrder;

  factory CopyWith$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelOrder;

  TRes call({
    Mutation$CancelOrder$cancelOrder? cancelOrder,
    String? $__typename,
  });
  CopyWith$Mutation$CancelOrder$cancelOrder<TRes> get cancelOrder;
}

class _CopyWithImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Mutation$CancelOrder _instance;

  final TRes Function(Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cancelOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CancelOrder(
        cancelOrder: cancelOrder == _undefined
            ? _instance.cancelOrder
            : (cancelOrder as Mutation$CancelOrder$cancelOrder?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CancelOrder$cancelOrder<TRes> get cancelOrder {
    final local$cancelOrder = _instance.cancelOrder;
    return local$cancelOrder == null
        ? CopyWith$Mutation$CancelOrder$cancelOrder.stub(_then(_instance))
        : CopyWith$Mutation$CancelOrder$cancelOrder(
            local$cancelOrder, (e) => call(cancelOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Mutation$CancelOrder(this._res);

  TRes _res;

  call({
    Mutation$CancelOrder$cancelOrder? cancelOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CancelOrder$cancelOrder<TRes> get cancelOrder =>
      CopyWith$Mutation$CancelOrder$cancelOrder.stub(_res);
}

const documentNodeMutationCancelOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CancelOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
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
        name: NameNode(value: 'cancelOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'orderId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
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
Mutation$CancelOrder _parserFn$Mutation$CancelOrder(
        Map<String, dynamic> data) =>
    Mutation$CancelOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CancelOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CancelOrder?,
);

class Options$Mutation$CancelOrder
    extends graphql.MutationOptions<Mutation$CancelOrder> {
  Options$Mutation$CancelOrder({
    String? operationName,
    required Variables$Mutation$CancelOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelOrder>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CancelOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelOrder,
          parserFn: _parserFn$Mutation$CancelOrder,
        );

  final OnMutationCompleted$Mutation$CancelOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CancelOrder
    extends graphql.WatchQueryOptions<Mutation$CancelOrder> {
  WatchOptions$Mutation$CancelOrder({
    String? operationName,
    required Variables$Mutation$CancelOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
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
          document: documentNodeMutationCancelOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CancelOrder,
        );
}

extension ClientExtension$Mutation$CancelOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CancelOrder>> mutate$CancelOrder(
          Options$Mutation$CancelOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CancelOrder> watchMutation$CancelOrder(
          WatchOptions$Mutation$CancelOrder options) =>
      this.watchMutation(options);
}

class Mutation$CancelOrder$cancelOrder {
  Mutation$CancelOrder$cancelOrder({
    this.success,
    this.$__typename = 'CancelOrder',
  });

  factory Mutation$CancelOrder$cancelOrder.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$CancelOrder$cancelOrder(
      success: (l$success as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CancelOrder$cancelOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$CancelOrder$cancelOrder
    on Mutation$CancelOrder$cancelOrder {
  CopyWith$Mutation$CancelOrder$cancelOrder<Mutation$CancelOrder$cancelOrder>
      get copyWith => CopyWith$Mutation$CancelOrder$cancelOrder(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CancelOrder$cancelOrder<TRes> {
  factory CopyWith$Mutation$CancelOrder$cancelOrder(
    Mutation$CancelOrder$cancelOrder instance,
    TRes Function(Mutation$CancelOrder$cancelOrder) then,
  ) = _CopyWithImpl$Mutation$CancelOrder$cancelOrder;

  factory CopyWith$Mutation$CancelOrder$cancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelOrder$cancelOrder;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CancelOrder$cancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder$cancelOrder<TRes> {
  _CopyWithImpl$Mutation$CancelOrder$cancelOrder(
    this._instance,
    this._then,
  );

  final Mutation$CancelOrder$cancelOrder _instance;

  final TRes Function(Mutation$CancelOrder$cancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CancelOrder$cancelOrder(
        success: success == _undefined ? _instance.success : (success as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CancelOrder$cancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder$cancelOrder<TRes> {
  _CopyWithStubImpl$Mutation$CancelOrder$cancelOrder(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreatePaymentIntent {
  factory Variables$Mutation$CreatePaymentIntent({
    required int orderId,
    required Enum$PaymentMethodEnum paymentMethod,
  }) =>
      Variables$Mutation$CreatePaymentIntent._({
        r'orderId': orderId,
        r'paymentMethod': paymentMethod,
      });

  Variables$Mutation$CreatePaymentIntent._(this._$data);

  factory Variables$Mutation$CreatePaymentIntent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as int);
    final l$paymentMethod = data['paymentMethod'];
    result$data['paymentMethod'] =
        fromJson$Enum$PaymentMethodEnum((l$paymentMethod as String));
    return Variables$Mutation$CreatePaymentIntent._(result$data);
  }

  Map<String, dynamic> _$data;

  int get orderId => (_$data['orderId'] as int);

  Enum$PaymentMethodEnum get paymentMethod =>
      (_$data['paymentMethod'] as Enum$PaymentMethodEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    final l$paymentMethod = paymentMethod;
    result$data['paymentMethod'] =
        toJson$Enum$PaymentMethodEnum(l$paymentMethod);
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePaymentIntent<
          Variables$Mutation$CreatePaymentIntent>
      get copyWith => CopyWith$Variables$Mutation$CreatePaymentIntent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePaymentIntent ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$paymentMethod = paymentMethod;
    return Object.hashAll([
      l$orderId,
      l$paymentMethod,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePaymentIntent<TRes> {
  factory CopyWith$Variables$Mutation$CreatePaymentIntent(
    Variables$Mutation$CreatePaymentIntent instance,
    TRes Function(Variables$Mutation$CreatePaymentIntent) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePaymentIntent;

  factory CopyWith$Variables$Mutation$CreatePaymentIntent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePaymentIntent;

  TRes call({
    int? orderId,
    Enum$PaymentMethodEnum? paymentMethod,
  });
}

class _CopyWithImpl$Variables$Mutation$CreatePaymentIntent<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentIntent<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePaymentIntent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePaymentIntent _instance;

  final TRes Function(Variables$Mutation$CreatePaymentIntent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? paymentMethod = _undefined,
  }) =>
      _then(Variables$Mutation$CreatePaymentIntent._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as int),
        if (paymentMethod != _undefined && paymentMethod != null)
          'paymentMethod': (paymentMethod as Enum$PaymentMethodEnum),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePaymentIntent<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentIntent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePaymentIntent(this._res);

  TRes _res;

  call({
    int? orderId,
    Enum$PaymentMethodEnum? paymentMethod,
  }) =>
      _res;
}

class Mutation$CreatePaymentIntent {
  Mutation$CreatePaymentIntent({
    this.createPaymentIntent,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePaymentIntent.fromJson(Map<String, dynamic> json) {
    final l$createPaymentIntent = json['createPaymentIntent'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentIntent(
      createPaymentIntent: l$createPaymentIntent == null
          ? null
          : Mutation$CreatePaymentIntent$createPaymentIntent.fromJson(
              (l$createPaymentIntent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePaymentIntent$createPaymentIntent? createPaymentIntent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPaymentIntent = createPaymentIntent;
    _resultData['createPaymentIntent'] = l$createPaymentIntent?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPaymentIntent = createPaymentIntent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPaymentIntent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePaymentIntent ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPaymentIntent = createPaymentIntent;
    final lOther$createPaymentIntent = other.createPaymentIntent;
    if (l$createPaymentIntent != lOther$createPaymentIntent) {
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

extension UtilityExtension$Mutation$CreatePaymentIntent
    on Mutation$CreatePaymentIntent {
  CopyWith$Mutation$CreatePaymentIntent<Mutation$CreatePaymentIntent>
      get copyWith => CopyWith$Mutation$CreatePaymentIntent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePaymentIntent<TRes> {
  factory CopyWith$Mutation$CreatePaymentIntent(
    Mutation$CreatePaymentIntent instance,
    TRes Function(Mutation$CreatePaymentIntent) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentIntent;

  factory CopyWith$Mutation$CreatePaymentIntent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePaymentIntent;

  TRes call({
    Mutation$CreatePaymentIntent$createPaymentIntent? createPaymentIntent,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<TRes>
      get createPaymentIntent;
}

class _CopyWithImpl$Mutation$CreatePaymentIntent<TRes>
    implements CopyWith$Mutation$CreatePaymentIntent<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentIntent(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentIntent _instance;

  final TRes Function(Mutation$CreatePaymentIntent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPaymentIntent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePaymentIntent(
        createPaymentIntent: createPaymentIntent == _undefined
            ? _instance.createPaymentIntent
            : (createPaymentIntent
                as Mutation$CreatePaymentIntent$createPaymentIntent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<TRes>
      get createPaymentIntent {
    final local$createPaymentIntent = _instance.createPaymentIntent;
    return local$createPaymentIntent == null
        ? CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent.stub(
            _then(_instance))
        : CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent(
            local$createPaymentIntent, (e) => call(createPaymentIntent: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePaymentIntent<TRes>
    implements CopyWith$Mutation$CreatePaymentIntent<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentIntent(this._res);

  TRes _res;

  call({
    Mutation$CreatePaymentIntent$createPaymentIntent? createPaymentIntent,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<TRes>
      get createPaymentIntent =>
          CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent.stub(_res);
}

const documentNodeMutationCreatePaymentIntent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePaymentIntent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paymentMethod')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaymentMethodEnum'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPaymentIntent'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'orderId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'paymentMethod'),
            value: VariableNode(name: NameNode(value: 'paymentMethod')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'clientSecret'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'paymentRef'),
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
Mutation$CreatePaymentIntent _parserFn$Mutation$CreatePaymentIntent(
        Map<String, dynamic> data) =>
    Mutation$CreatePaymentIntent.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePaymentIntent = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreatePaymentIntent?,
);

class Options$Mutation$CreatePaymentIntent
    extends graphql.MutationOptions<Mutation$CreatePaymentIntent> {
  Options$Mutation$CreatePaymentIntent({
    String? operationName,
    required Variables$Mutation$CreatePaymentIntent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentIntent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePaymentIntent? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePaymentIntent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreatePaymentIntent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePaymentIntent,
          parserFn: _parserFn$Mutation$CreatePaymentIntent,
        );

  final OnMutationCompleted$Mutation$CreatePaymentIntent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePaymentIntent
    extends graphql.WatchQueryOptions<Mutation$CreatePaymentIntent> {
  WatchOptions$Mutation$CreatePaymentIntent({
    String? operationName,
    required Variables$Mutation$CreatePaymentIntent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentIntent? typedOptimisticResult,
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
          document: documentNodeMutationCreatePaymentIntent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePaymentIntent,
        );
}

extension ClientExtension$Mutation$CreatePaymentIntent
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePaymentIntent>>
      mutate$CreatePaymentIntent(
              Options$Mutation$CreatePaymentIntent options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePaymentIntent>
      watchMutation$CreatePaymentIntent(
              WatchOptions$Mutation$CreatePaymentIntent options) =>
          this.watchMutation(options);
}

class Mutation$CreatePaymentIntent$createPaymentIntent {
  Mutation$CreatePaymentIntent$createPaymentIntent({
    this.clientSecret,
    this.paymentRef,
    this.$__typename = 'CreatePaymentIntent',
  });

  factory Mutation$CreatePaymentIntent$createPaymentIntent.fromJson(
      Map<String, dynamic> json) {
    final l$clientSecret = json['clientSecret'];
    final l$paymentRef = json['paymentRef'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentIntent$createPaymentIntent(
      clientSecret: (l$clientSecret as String?),
      paymentRef: (l$paymentRef as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? clientSecret;

  final String? paymentRef;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientSecret = clientSecret;
    _resultData['clientSecret'] = l$clientSecret;
    final l$paymentRef = paymentRef;
    _resultData['paymentRef'] = l$paymentRef;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientSecret = clientSecret;
    final l$paymentRef = paymentRef;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientSecret,
      l$paymentRef,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePaymentIntent$createPaymentIntent ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientSecret = clientSecret;
    final lOther$clientSecret = other.clientSecret;
    if (l$clientSecret != lOther$clientSecret) {
      return false;
    }
    final l$paymentRef = paymentRef;
    final lOther$paymentRef = other.paymentRef;
    if (l$paymentRef != lOther$paymentRef) {
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

extension UtilityExtension$Mutation$CreatePaymentIntent$createPaymentIntent
    on Mutation$CreatePaymentIntent$createPaymentIntent {
  CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<
          Mutation$CreatePaymentIntent$createPaymentIntent>
      get copyWith => CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<TRes> {
  factory CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent(
    Mutation$CreatePaymentIntent$createPaymentIntent instance,
    TRes Function(Mutation$CreatePaymentIntent$createPaymentIntent) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentIntent$createPaymentIntent;

  factory CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreatePaymentIntent$createPaymentIntent;

  TRes call({
    String? clientSecret,
    String? paymentRef,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePaymentIntent$createPaymentIntent<TRes>
    implements CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentIntent$createPaymentIntent(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentIntent$createPaymentIntent _instance;

  final TRes Function(Mutation$CreatePaymentIntent$createPaymentIntent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientSecret = _undefined,
    Object? paymentRef = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePaymentIntent$createPaymentIntent(
        clientSecret: clientSecret == _undefined
            ? _instance.clientSecret
            : (clientSecret as String?),
        paymentRef: paymentRef == _undefined
            ? _instance.paymentRef
            : (paymentRef as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePaymentIntent$createPaymentIntent<TRes>
    implements CopyWith$Mutation$CreatePaymentIntent$createPaymentIntent<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentIntent$createPaymentIntent(this._res);

  TRes _res;

  call({
    String? clientSecret,
    String? paymentRef,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ConfirmPayment {
  factory Variables$Mutation$ConfirmPayment({required String paymentRef}) =>
      Variables$Mutation$ConfirmPayment._({
        r'paymentRef': paymentRef,
      });

  Variables$Mutation$ConfirmPayment._(this._$data);

  factory Variables$Mutation$ConfirmPayment.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paymentRef = data['paymentRef'];
    result$data['paymentRef'] = (l$paymentRef as String);
    return Variables$Mutation$ConfirmPayment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get paymentRef => (_$data['paymentRef'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRef = paymentRef;
    result$data['paymentRef'] = l$paymentRef;
    return result$data;
  }

  CopyWith$Variables$Mutation$ConfirmPayment<Variables$Mutation$ConfirmPayment>
      get copyWith => CopyWith$Variables$Mutation$ConfirmPayment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ConfirmPayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRef = paymentRef;
    final lOther$paymentRef = other.paymentRef;
    if (l$paymentRef != lOther$paymentRef) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentRef = paymentRef;
    return Object.hashAll([l$paymentRef]);
  }
}

abstract class CopyWith$Variables$Mutation$ConfirmPayment<TRes> {
  factory CopyWith$Variables$Mutation$ConfirmPayment(
    Variables$Mutation$ConfirmPayment instance,
    TRes Function(Variables$Mutation$ConfirmPayment) then,
  ) = _CopyWithImpl$Variables$Mutation$ConfirmPayment;

  factory CopyWith$Variables$Mutation$ConfirmPayment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ConfirmPayment;

  TRes call({String? paymentRef});
}

class _CopyWithImpl$Variables$Mutation$ConfirmPayment<TRes>
    implements CopyWith$Variables$Mutation$ConfirmPayment<TRes> {
  _CopyWithImpl$Variables$Mutation$ConfirmPayment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ConfirmPayment _instance;

  final TRes Function(Variables$Mutation$ConfirmPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRef = _undefined}) =>
      _then(Variables$Mutation$ConfirmPayment._({
        ..._instance._$data,
        if (paymentRef != _undefined && paymentRef != null)
          'paymentRef': (paymentRef as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ConfirmPayment<TRes>
    implements CopyWith$Variables$Mutation$ConfirmPayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ConfirmPayment(this._res);

  TRes _res;

  call({String? paymentRef}) => _res;
}

class Mutation$ConfirmPayment {
  Mutation$ConfirmPayment({
    this.confirmPayment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ConfirmPayment.fromJson(Map<String, dynamic> json) {
    final l$confirmPayment = json['confirmPayment'];
    final l$$__typename = json['__typename'];
    return Mutation$ConfirmPayment(
      confirmPayment: l$confirmPayment == null
          ? null
          : Mutation$ConfirmPayment$confirmPayment.fromJson(
              (l$confirmPayment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ConfirmPayment$confirmPayment? confirmPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$confirmPayment = confirmPayment;
    _resultData['confirmPayment'] = l$confirmPayment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$confirmPayment = confirmPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$confirmPayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ConfirmPayment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$confirmPayment = confirmPayment;
    final lOther$confirmPayment = other.confirmPayment;
    if (l$confirmPayment != lOther$confirmPayment) {
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

extension UtilityExtension$Mutation$ConfirmPayment on Mutation$ConfirmPayment {
  CopyWith$Mutation$ConfirmPayment<Mutation$ConfirmPayment> get copyWith =>
      CopyWith$Mutation$ConfirmPayment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConfirmPayment<TRes> {
  factory CopyWith$Mutation$ConfirmPayment(
    Mutation$ConfirmPayment instance,
    TRes Function(Mutation$ConfirmPayment) then,
  ) = _CopyWithImpl$Mutation$ConfirmPayment;

  factory CopyWith$Mutation$ConfirmPayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ConfirmPayment;

  TRes call({
    Mutation$ConfirmPayment$confirmPayment? confirmPayment,
    String? $__typename,
  });
  CopyWith$Mutation$ConfirmPayment$confirmPayment<TRes> get confirmPayment;
}

class _CopyWithImpl$Mutation$ConfirmPayment<TRes>
    implements CopyWith$Mutation$ConfirmPayment<TRes> {
  _CopyWithImpl$Mutation$ConfirmPayment(
    this._instance,
    this._then,
  );

  final Mutation$ConfirmPayment _instance;

  final TRes Function(Mutation$ConfirmPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? confirmPayment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ConfirmPayment(
        confirmPayment: confirmPayment == _undefined
            ? _instance.confirmPayment
            : (confirmPayment as Mutation$ConfirmPayment$confirmPayment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ConfirmPayment$confirmPayment<TRes> get confirmPayment {
    final local$confirmPayment = _instance.confirmPayment;
    return local$confirmPayment == null
        ? CopyWith$Mutation$ConfirmPayment$confirmPayment.stub(_then(_instance))
        : CopyWith$Mutation$ConfirmPayment$confirmPayment(
            local$confirmPayment, (e) => call(confirmPayment: e));
  }
}

class _CopyWithStubImpl$Mutation$ConfirmPayment<TRes>
    implements CopyWith$Mutation$ConfirmPayment<TRes> {
  _CopyWithStubImpl$Mutation$ConfirmPayment(this._res);

  TRes _res;

  call({
    Mutation$ConfirmPayment$confirmPayment? confirmPayment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ConfirmPayment$confirmPayment<TRes> get confirmPayment =>
      CopyWith$Mutation$ConfirmPayment$confirmPayment.stub(_res);
}

const documentNodeMutationConfirmPayment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ConfirmPayment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paymentRef')),
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
        name: NameNode(value: 'confirmPayment'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'paymentRef'),
            value: VariableNode(name: NameNode(value: 'paymentRef')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'paymentStatus'),
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
Mutation$ConfirmPayment _parserFn$Mutation$ConfirmPayment(
        Map<String, dynamic> data) =>
    Mutation$ConfirmPayment.fromJson(data);
typedef OnMutationCompleted$Mutation$ConfirmPayment = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ConfirmPayment?,
);

class Options$Mutation$ConfirmPayment
    extends graphql.MutationOptions<Mutation$ConfirmPayment> {
  Options$Mutation$ConfirmPayment({
    String? operationName,
    required Variables$Mutation$ConfirmPayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ConfirmPayment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ConfirmPayment? onCompleted,
    graphql.OnMutationUpdate<Mutation$ConfirmPayment>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ConfirmPayment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationConfirmPayment,
          parserFn: _parserFn$Mutation$ConfirmPayment,
        );

  final OnMutationCompleted$Mutation$ConfirmPayment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ConfirmPayment
    extends graphql.WatchQueryOptions<Mutation$ConfirmPayment> {
  WatchOptions$Mutation$ConfirmPayment({
    String? operationName,
    required Variables$Mutation$ConfirmPayment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ConfirmPayment? typedOptimisticResult,
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
          document: documentNodeMutationConfirmPayment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ConfirmPayment,
        );
}

extension ClientExtension$Mutation$ConfirmPayment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ConfirmPayment>> mutate$ConfirmPayment(
          Options$Mutation$ConfirmPayment options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ConfirmPayment> watchMutation$ConfirmPayment(
          WatchOptions$Mutation$ConfirmPayment options) =>
      this.watchMutation(options);
}

class Mutation$ConfirmPayment$confirmPayment {
  Mutation$ConfirmPayment$confirmPayment({
    this.paymentStatus,
    this.$__typename = 'ConfirmPayment',
  });

  factory Mutation$ConfirmPayment$confirmPayment.fromJson(
      Map<String, dynamic> json) {
    final l$paymentStatus = json['paymentStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$ConfirmPayment$confirmPayment(
      paymentStatus: (l$paymentStatus as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? paymentStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentStatus = paymentStatus;
    _resultData['paymentStatus'] = l$paymentStatus;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentStatus = paymentStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentStatus,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ConfirmPayment$confirmPayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentStatus = paymentStatus;
    final lOther$paymentStatus = other.paymentStatus;
    if (l$paymentStatus != lOther$paymentStatus) {
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

extension UtilityExtension$Mutation$ConfirmPayment$confirmPayment
    on Mutation$ConfirmPayment$confirmPayment {
  CopyWith$Mutation$ConfirmPayment$confirmPayment<
          Mutation$ConfirmPayment$confirmPayment>
      get copyWith => CopyWith$Mutation$ConfirmPayment$confirmPayment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ConfirmPayment$confirmPayment<TRes> {
  factory CopyWith$Mutation$ConfirmPayment$confirmPayment(
    Mutation$ConfirmPayment$confirmPayment instance,
    TRes Function(Mutation$ConfirmPayment$confirmPayment) then,
  ) = _CopyWithImpl$Mutation$ConfirmPayment$confirmPayment;

  factory CopyWith$Mutation$ConfirmPayment$confirmPayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ConfirmPayment$confirmPayment;

  TRes call({
    String? paymentStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ConfirmPayment$confirmPayment<TRes>
    implements CopyWith$Mutation$ConfirmPayment$confirmPayment<TRes> {
  _CopyWithImpl$Mutation$ConfirmPayment$confirmPayment(
    this._instance,
    this._then,
  );

  final Mutation$ConfirmPayment$confirmPayment _instance;

  final TRes Function(Mutation$ConfirmPayment$confirmPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentStatus = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ConfirmPayment$confirmPayment(
        paymentStatus: paymentStatus == _undefined
            ? _instance.paymentStatus
            : (paymentStatus as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ConfirmPayment$confirmPayment<TRes>
    implements CopyWith$Mutation$ConfirmPayment$confirmPayment<TRes> {
  _CopyWithStubImpl$Mutation$ConfirmPayment$confirmPayment(this._res);

  TRes _res;

  call({
    String? paymentStatus,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$PasswordReset {
  factory Variables$Mutation$PasswordReset({
    required String newpassword,
    required String email,
    required String token,
  }) =>
      Variables$Mutation$PasswordReset._({
        r'newpassword': newpassword,
        r'email': email,
        r'token': token,
      });

  Variables$Mutation$PasswordReset._(this._$data);

  factory Variables$Mutation$PasswordReset.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newpassword = data['newpassword'];
    result$data['newpassword'] = (l$newpassword as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Mutation$PasswordReset._(result$data);
  }

  Map<String, dynamic> _$data;

  String get newpassword => (_$data['newpassword'] as String);

  String get email => (_$data['email'] as String);

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newpassword = newpassword;
    result$data['newpassword'] = l$newpassword;
    final l$email = email;
    result$data['email'] = l$email;
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Mutation$PasswordReset<Variables$Mutation$PasswordReset>
      get copyWith => CopyWith$Variables$Mutation$PasswordReset(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PasswordReset ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newpassword = newpassword;
    final lOther$newpassword = other.newpassword;
    if (l$newpassword != lOther$newpassword) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newpassword = newpassword;
    final l$email = email;
    final l$token = token;
    return Object.hashAll([
      l$newpassword,
      l$email,
      l$token,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$PasswordReset<TRes> {
  factory CopyWith$Variables$Mutation$PasswordReset(
    Variables$Mutation$PasswordReset instance,
    TRes Function(Variables$Mutation$PasswordReset) then,
  ) = _CopyWithImpl$Variables$Mutation$PasswordReset;

  factory CopyWith$Variables$Mutation$PasswordReset.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PasswordReset;

  TRes call({
    String? newpassword,
    String? email,
    String? token,
  });
}

class _CopyWithImpl$Variables$Mutation$PasswordReset<TRes>
    implements CopyWith$Variables$Mutation$PasswordReset<TRes> {
  _CopyWithImpl$Variables$Mutation$PasswordReset(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PasswordReset _instance;

  final TRes Function(Variables$Mutation$PasswordReset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newpassword = _undefined,
    Object? email = _undefined,
    Object? token = _undefined,
  }) =>
      _then(Variables$Mutation$PasswordReset._({
        ..._instance._$data,
        if (newpassword != _undefined && newpassword != null)
          'newpassword': (newpassword as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$PasswordReset<TRes>
    implements CopyWith$Variables$Mutation$PasswordReset<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PasswordReset(this._res);

  TRes _res;

  call({
    String? newpassword,
    String? email,
    String? token,
  }) =>
      _res;
}

class Mutation$PasswordReset {
  Mutation$PasswordReset({
    this.passwordReset,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PasswordReset.fromJson(Map<String, dynamic> json) {
    final l$passwordReset = json['passwordReset'];
    final l$$__typename = json['__typename'];
    return Mutation$PasswordReset(
      passwordReset: l$passwordReset == null
          ? null
          : Mutation$PasswordReset$passwordReset.fromJson(
              (l$passwordReset as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PasswordReset$passwordReset? passwordReset;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$passwordReset = passwordReset;
    _resultData['passwordReset'] = l$passwordReset?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$passwordReset = passwordReset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$passwordReset,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PasswordReset || runtimeType != other.runtimeType) {
      return false;
    }
    final l$passwordReset = passwordReset;
    final lOther$passwordReset = other.passwordReset;
    if (l$passwordReset != lOther$passwordReset) {
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

extension UtilityExtension$Mutation$PasswordReset on Mutation$PasswordReset {
  CopyWith$Mutation$PasswordReset<Mutation$PasswordReset> get copyWith =>
      CopyWith$Mutation$PasswordReset(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PasswordReset<TRes> {
  factory CopyWith$Mutation$PasswordReset(
    Mutation$PasswordReset instance,
    TRes Function(Mutation$PasswordReset) then,
  ) = _CopyWithImpl$Mutation$PasswordReset;

  factory CopyWith$Mutation$PasswordReset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PasswordReset;

  TRes call({
    Mutation$PasswordReset$passwordReset? passwordReset,
    String? $__typename,
  });
  CopyWith$Mutation$PasswordReset$passwordReset<TRes> get passwordReset;
}

class _CopyWithImpl$Mutation$PasswordReset<TRes>
    implements CopyWith$Mutation$PasswordReset<TRes> {
  _CopyWithImpl$Mutation$PasswordReset(
    this._instance,
    this._then,
  );

  final Mutation$PasswordReset _instance;

  final TRes Function(Mutation$PasswordReset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? passwordReset = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PasswordReset(
        passwordReset: passwordReset == _undefined
            ? _instance.passwordReset
            : (passwordReset as Mutation$PasswordReset$passwordReset?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$PasswordReset$passwordReset<TRes> get passwordReset {
    final local$passwordReset = _instance.passwordReset;
    return local$passwordReset == null
        ? CopyWith$Mutation$PasswordReset$passwordReset.stub(_then(_instance))
        : CopyWith$Mutation$PasswordReset$passwordReset(
            local$passwordReset, (e) => call(passwordReset: e));
  }
}

class _CopyWithStubImpl$Mutation$PasswordReset<TRes>
    implements CopyWith$Mutation$PasswordReset<TRes> {
  _CopyWithStubImpl$Mutation$PasswordReset(this._res);

  TRes _res;

  call({
    Mutation$PasswordReset$passwordReset? passwordReset,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$PasswordReset$passwordReset<TRes> get passwordReset =>
      CopyWith$Mutation$PasswordReset$passwordReset.stub(_res);
}

const documentNodeMutationPasswordReset = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PasswordReset'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newpassword')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'passwordReset'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'newpassword')),
          ),
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'token')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$PasswordReset _parserFn$Mutation$PasswordReset(
        Map<String, dynamic> data) =>
    Mutation$PasswordReset.fromJson(data);
typedef OnMutationCompleted$Mutation$PasswordReset = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$PasswordReset?,
);

class Options$Mutation$PasswordReset
    extends graphql.MutationOptions<Mutation$PasswordReset> {
  Options$Mutation$PasswordReset({
    String? operationName,
    required Variables$Mutation$PasswordReset variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PasswordReset? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PasswordReset? onCompleted,
    graphql.OnMutationUpdate<Mutation$PasswordReset>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$PasswordReset(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPasswordReset,
          parserFn: _parserFn$Mutation$PasswordReset,
        );

  final OnMutationCompleted$Mutation$PasswordReset? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$PasswordReset
    extends graphql.WatchQueryOptions<Mutation$PasswordReset> {
  WatchOptions$Mutation$PasswordReset({
    String? operationName,
    required Variables$Mutation$PasswordReset variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PasswordReset? typedOptimisticResult,
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
          document: documentNodeMutationPasswordReset,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$PasswordReset,
        );
}

extension ClientExtension$Mutation$PasswordReset on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PasswordReset>> mutate$PasswordReset(
          Options$Mutation$PasswordReset options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$PasswordReset> watchMutation$PasswordReset(
          WatchOptions$Mutation$PasswordReset options) =>
      this.watchMutation(options);
}

class Mutation$PasswordReset$passwordReset {
  Mutation$PasswordReset$passwordReset({
    this.message,
    this.$__typename = 'PasswordReset',
  });

  factory Mutation$PasswordReset$passwordReset.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$PasswordReset$passwordReset(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PasswordReset$passwordReset ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$PasswordReset$passwordReset
    on Mutation$PasswordReset$passwordReset {
  CopyWith$Mutation$PasswordReset$passwordReset<
          Mutation$PasswordReset$passwordReset>
      get copyWith => CopyWith$Mutation$PasswordReset$passwordReset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordReset$passwordReset<TRes> {
  factory CopyWith$Mutation$PasswordReset$passwordReset(
    Mutation$PasswordReset$passwordReset instance,
    TRes Function(Mutation$PasswordReset$passwordReset) then,
  ) = _CopyWithImpl$Mutation$PasswordReset$passwordReset;

  factory CopyWith$Mutation$PasswordReset$passwordReset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PasswordReset$passwordReset;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$PasswordReset$passwordReset<TRes>
    implements CopyWith$Mutation$PasswordReset$passwordReset<TRes> {
  _CopyWithImpl$Mutation$PasswordReset$passwordReset(
    this._instance,
    this._then,
  );

  final Mutation$PasswordReset$passwordReset _instance;

  final TRes Function(Mutation$PasswordReset$passwordReset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PasswordReset$passwordReset(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$PasswordReset$passwordReset<TRes>
    implements CopyWith$Mutation$PasswordReset$passwordReset<TRes> {
  _CopyWithStubImpl$Mutation$PasswordReset$passwordReset(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ResetPassword {
  factory Variables$Mutation$ResetPassword({String? email}) =>
      Variables$Mutation$ResetPassword._({
        if (email != null) r'email': email,
      });

  Variables$Mutation$ResetPassword._(this._$data);

  factory Variables$Mutation$ResetPassword.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    return Variables$Mutation$ResetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetPassword<Variables$Mutation$ResetPassword>
      get copyWith => CopyWith$Variables$Mutation$ResetPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ResetPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    return Object.hashAll([_$data.containsKey('email') ? l$email : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ResetPassword<TRes> {
  factory CopyWith$Variables$Mutation$ResetPassword(
    Variables$Mutation$ResetPassword instance,
    TRes Function(Variables$Mutation$ResetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetPassword;

  factory CopyWith$Variables$Mutation$ResetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetPassword;

  TRes call({String? email});
}

class _CopyWithImpl$Variables$Mutation$ResetPassword<TRes>
    implements CopyWith$Variables$Mutation$ResetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetPassword _instance;

  final TRes Function(Variables$Mutation$ResetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined}) =>
      _then(Variables$Mutation$ResetPassword._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetPassword<TRes>
    implements CopyWith$Variables$Mutation$ResetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetPassword(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Mutation$ResetPassword {
  Mutation$ResetPassword({
    this.resetPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResetPassword.fromJson(Map<String, dynamic> json) {
    final l$resetPassword = json['resetPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetPassword(
      resetPassword: l$resetPassword == null
          ? null
          : Mutation$ResetPassword$resetPassword.fromJson(
              (l$resetPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ResetPassword$resetPassword? resetPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resetPassword = resetPassword;
    _resultData['resetPassword'] = l$resetPassword?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resetPassword = resetPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ResetPassword || runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetPassword = resetPassword;
    final lOther$resetPassword = other.resetPassword;
    if (l$resetPassword != lOther$resetPassword) {
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

extension UtilityExtension$Mutation$ResetPassword on Mutation$ResetPassword {
  CopyWith$Mutation$ResetPassword<Mutation$ResetPassword> get copyWith =>
      CopyWith$Mutation$ResetPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ResetPassword<TRes> {
  factory CopyWith$Mutation$ResetPassword(
    Mutation$ResetPassword instance,
    TRes Function(Mutation$ResetPassword) then,
  ) = _CopyWithImpl$Mutation$ResetPassword;

  factory CopyWith$Mutation$ResetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword;

  TRes call({
    Mutation$ResetPassword$resetPassword? resetPassword,
    String? $__typename,
  });
  CopyWith$Mutation$ResetPassword$resetPassword<TRes> get resetPassword;
}

class _CopyWithImpl$Mutation$ResetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword<TRes> {
  _CopyWithImpl$Mutation$ResetPassword(
    this._instance,
    this._then,
  );

  final Mutation$ResetPassword _instance;

  final TRes Function(Mutation$ResetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? resetPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetPassword(
        resetPassword: resetPassword == _undefined
            ? _instance.resetPassword
            : (resetPassword as Mutation$ResetPassword$resetPassword?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ResetPassword$resetPassword<TRes> get resetPassword {
    final local$resetPassword = _instance.resetPassword;
    return local$resetPassword == null
        ? CopyWith$Mutation$ResetPassword$resetPassword.stub(_then(_instance))
        : CopyWith$Mutation$ResetPassword$resetPassword(
            local$resetPassword, (e) => call(resetPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$ResetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword<TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword(this._res);

  TRes _res;

  call({
    Mutation$ResetPassword$resetPassword? resetPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ResetPassword$resetPassword<TRes> get resetPassword =>
      CopyWith$Mutation$ResetPassword$resetPassword.stub(_res);
}

const documentNodeMutationResetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resetPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$ResetPassword _parserFn$Mutation$ResetPassword(
        Map<String, dynamic> data) =>
    Mutation$ResetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetPassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ResetPassword?,
);

class Options$Mutation$ResetPassword
    extends graphql.MutationOptions<Mutation$ResetPassword> {
  Options$Mutation$ResetPassword({
    String? operationName,
    Variables$Mutation$ResetPassword? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetPassword>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ResetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetPassword,
          parserFn: _parserFn$Mutation$ResetPassword,
        );

  final OnMutationCompleted$Mutation$ResetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetPassword
    extends graphql.WatchQueryOptions<Mutation$ResetPassword> {
  WatchOptions$Mutation$ResetPassword({
    String? operationName,
    Variables$Mutation$ResetPassword? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetPassword? typedOptimisticResult,
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
          document: documentNodeMutationResetPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetPassword,
        );
}

extension ClientExtension$Mutation$ResetPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetPassword>> mutate$ResetPassword(
          [Options$Mutation$ResetPassword? options]) async =>
      await this.mutate(options ?? Options$Mutation$ResetPassword());
  graphql.ObservableQuery<Mutation$ResetPassword> watchMutation$ResetPassword(
          [WatchOptions$Mutation$ResetPassword? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ResetPassword());
}

class Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword({
    this.message,
    this.$__typename = 'ResetPassword',
  });

  factory Mutation$ResetPassword$resetPassword.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetPassword$resetPassword(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ResetPassword$resetPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$ResetPassword$resetPassword
    on Mutation$ResetPassword$resetPassword {
  CopyWith$Mutation$ResetPassword$resetPassword<
          Mutation$ResetPassword$resetPassword>
      get copyWith => CopyWith$Mutation$ResetPassword$resetPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword<TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword(
    Mutation$ResetPassword$resetPassword instance,
    TRes Function(Mutation$ResetPassword$resetPassword) then,
  ) = _CopyWithImpl$Mutation$ResetPassword$resetPassword;

  factory CopyWith$Mutation$ResetPassword$resetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword$resetPassword<TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword(
    this._instance,
    this._then,
  );

  final Mutation$ResetPassword$resetPassword _instance;

  final TRes Function(Mutation$ResetPassword$resetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetPassword$resetPassword(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword$resetPassword<TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ChangeEmail {
  factory Variables$Mutation$ChangeEmail({String? email}) =>
      Variables$Mutation$ChangeEmail._({
        if (email != null) r'email': email,
      });

  Variables$Mutation$ChangeEmail._(this._$data);

  factory Variables$Mutation$ChangeEmail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    return Variables$Mutation$ChangeEmail._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ChangeEmail<Variables$Mutation$ChangeEmail>
      get copyWith => CopyWith$Variables$Mutation$ChangeEmail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ChangeEmail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    return Object.hashAll([_$data.containsKey('email') ? l$email : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ChangeEmail<TRes> {
  factory CopyWith$Variables$Mutation$ChangeEmail(
    Variables$Mutation$ChangeEmail instance,
    TRes Function(Variables$Mutation$ChangeEmail) then,
  ) = _CopyWithImpl$Variables$Mutation$ChangeEmail;

  factory CopyWith$Variables$Mutation$ChangeEmail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ChangeEmail;

  TRes call({String? email});
}

class _CopyWithImpl$Variables$Mutation$ChangeEmail<TRes>
    implements CopyWith$Variables$Mutation$ChangeEmail<TRes> {
  _CopyWithImpl$Variables$Mutation$ChangeEmail(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ChangeEmail _instance;

  final TRes Function(Variables$Mutation$ChangeEmail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined}) =>
      _then(Variables$Mutation$ChangeEmail._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ChangeEmail<TRes>
    implements CopyWith$Variables$Mutation$ChangeEmail<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ChangeEmail(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Mutation$ChangeEmail {
  Mutation$ChangeEmail({
    this.changeEmail,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ChangeEmail.fromJson(Map<String, dynamic> json) {
    final l$changeEmail = json['changeEmail'];
    final l$$__typename = json['__typename'];
    return Mutation$ChangeEmail(
      changeEmail: l$changeEmail == null
          ? null
          : Mutation$ChangeEmail$changeEmail.fromJson(
              (l$changeEmail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ChangeEmail$changeEmail? changeEmail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeEmail = changeEmail;
    _resultData['changeEmail'] = l$changeEmail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeEmail = changeEmail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$changeEmail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ChangeEmail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeEmail = changeEmail;
    final lOther$changeEmail = other.changeEmail;
    if (l$changeEmail != lOther$changeEmail) {
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

extension UtilityExtension$Mutation$ChangeEmail on Mutation$ChangeEmail {
  CopyWith$Mutation$ChangeEmail<Mutation$ChangeEmail> get copyWith =>
      CopyWith$Mutation$ChangeEmail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ChangeEmail<TRes> {
  factory CopyWith$Mutation$ChangeEmail(
    Mutation$ChangeEmail instance,
    TRes Function(Mutation$ChangeEmail) then,
  ) = _CopyWithImpl$Mutation$ChangeEmail;

  factory CopyWith$Mutation$ChangeEmail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChangeEmail;

  TRes call({
    Mutation$ChangeEmail$changeEmail? changeEmail,
    String? $__typename,
  });
  CopyWith$Mutation$ChangeEmail$changeEmail<TRes> get changeEmail;
}

class _CopyWithImpl$Mutation$ChangeEmail<TRes>
    implements CopyWith$Mutation$ChangeEmail<TRes> {
  _CopyWithImpl$Mutation$ChangeEmail(
    this._instance,
    this._then,
  );

  final Mutation$ChangeEmail _instance;

  final TRes Function(Mutation$ChangeEmail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeEmail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ChangeEmail(
        changeEmail: changeEmail == _undefined
            ? _instance.changeEmail
            : (changeEmail as Mutation$ChangeEmail$changeEmail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ChangeEmail$changeEmail<TRes> get changeEmail {
    final local$changeEmail = _instance.changeEmail;
    return local$changeEmail == null
        ? CopyWith$Mutation$ChangeEmail$changeEmail.stub(_then(_instance))
        : CopyWith$Mutation$ChangeEmail$changeEmail(
            local$changeEmail, (e) => call(changeEmail: e));
  }
}

class _CopyWithStubImpl$Mutation$ChangeEmail<TRes>
    implements CopyWith$Mutation$ChangeEmail<TRes> {
  _CopyWithStubImpl$Mutation$ChangeEmail(this._res);

  TRes _res;

  call({
    Mutation$ChangeEmail$changeEmail? changeEmail,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ChangeEmail$changeEmail<TRes> get changeEmail =>
      CopyWith$Mutation$ChangeEmail$changeEmail.stub(_res);
}

const documentNodeMutationChangeEmail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ChangeEmail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'changeEmail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
Mutation$ChangeEmail _parserFn$Mutation$ChangeEmail(
        Map<String, dynamic> data) =>
    Mutation$ChangeEmail.fromJson(data);
typedef OnMutationCompleted$Mutation$ChangeEmail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ChangeEmail?,
);

class Options$Mutation$ChangeEmail
    extends graphql.MutationOptions<Mutation$ChangeEmail> {
  Options$Mutation$ChangeEmail({
    String? operationName,
    Variables$Mutation$ChangeEmail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeEmail? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ChangeEmail? onCompleted,
    graphql.OnMutationUpdate<Mutation$ChangeEmail>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$ChangeEmail(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationChangeEmail,
          parserFn: _parserFn$Mutation$ChangeEmail,
        );

  final OnMutationCompleted$Mutation$ChangeEmail? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ChangeEmail
    extends graphql.WatchQueryOptions<Mutation$ChangeEmail> {
  WatchOptions$Mutation$ChangeEmail({
    String? operationName,
    Variables$Mutation$ChangeEmail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeEmail? typedOptimisticResult,
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
          document: documentNodeMutationChangeEmail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ChangeEmail,
        );
}

extension ClientExtension$Mutation$ChangeEmail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ChangeEmail>> mutate$ChangeEmail(
          [Options$Mutation$ChangeEmail? options]) async =>
      await this.mutate(options ?? Options$Mutation$ChangeEmail());
  graphql.ObservableQuery<Mutation$ChangeEmail> watchMutation$ChangeEmail(
          [WatchOptions$Mutation$ChangeEmail? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ChangeEmail());
}

class Mutation$ChangeEmail$changeEmail {
  Mutation$ChangeEmail$changeEmail({
    this.message,
    this.$__typename = 'ChangeEmail',
  });

  factory Mutation$ChangeEmail$changeEmail.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$ChangeEmail$changeEmail(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ChangeEmail$changeEmail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$ChangeEmail$changeEmail
    on Mutation$ChangeEmail$changeEmail {
  CopyWith$Mutation$ChangeEmail$changeEmail<Mutation$ChangeEmail$changeEmail>
      get copyWith => CopyWith$Mutation$ChangeEmail$changeEmail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ChangeEmail$changeEmail<TRes> {
  factory CopyWith$Mutation$ChangeEmail$changeEmail(
    Mutation$ChangeEmail$changeEmail instance,
    TRes Function(Mutation$ChangeEmail$changeEmail) then,
  ) = _CopyWithImpl$Mutation$ChangeEmail$changeEmail;

  factory CopyWith$Mutation$ChangeEmail$changeEmail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChangeEmail$changeEmail;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ChangeEmail$changeEmail<TRes>
    implements CopyWith$Mutation$ChangeEmail$changeEmail<TRes> {
  _CopyWithImpl$Mutation$ChangeEmail$changeEmail(
    this._instance,
    this._then,
  );

  final Mutation$ChangeEmail$changeEmail _instance;

  final TRes Function(Mutation$ChangeEmail$changeEmail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ChangeEmail$changeEmail(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ChangeEmail$changeEmail<TRes>
    implements CopyWith$Mutation$ChangeEmail$changeEmail<TRes> {
  _CopyWithStubImpl$Mutation$ChangeEmail$changeEmail(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$VerifyEmail {
  factory Variables$Mutation$VerifyEmail({
    required String code,
    required String email,
  }) =>
      Variables$Mutation$VerifyEmail._({
        r'code': code,
        r'email': email,
      });

  Variables$Mutation$VerifyEmail._(this._$data);

  factory Variables$Mutation$VerifyEmail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Variables$Mutation$VerifyEmail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  String get email => (_$data['email'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyEmail<Variables$Mutation$VerifyEmail>
      get copyWith => CopyWith$Variables$Mutation$VerifyEmail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$VerifyEmail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$email = email;
    return Object.hashAll([
      l$code,
      l$email,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyEmail<TRes> {
  factory CopyWith$Variables$Mutation$VerifyEmail(
    Variables$Mutation$VerifyEmail instance,
    TRes Function(Variables$Mutation$VerifyEmail) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyEmail;

  factory CopyWith$Variables$Mutation$VerifyEmail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyEmail;

  TRes call({
    String? code,
    String? email,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyEmail<TRes>
    implements CopyWith$Variables$Mutation$VerifyEmail<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyEmail(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyEmail _instance;

  final TRes Function(Variables$Mutation$VerifyEmail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyEmail._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyEmail<TRes>
    implements CopyWith$Variables$Mutation$VerifyEmail<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyEmail(this._res);

  TRes _res;

  call({
    String? code,
    String? email,
  }) =>
      _res;
}

class Mutation$VerifyEmail {
  Mutation$VerifyEmail({
    this.verifyEmail,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyEmail.fromJson(Map<String, dynamic> json) {
    final l$verifyEmail = json['verifyEmail'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyEmail(
      verifyEmail: l$verifyEmail == null
          ? null
          : Mutation$VerifyEmail$verifyEmail.fromJson(
              (l$verifyEmail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$VerifyEmail$verifyEmail? verifyEmail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyEmail = verifyEmail;
    _resultData['verifyEmail'] = l$verifyEmail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyEmail = verifyEmail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyEmail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VerifyEmail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyEmail = verifyEmail;
    final lOther$verifyEmail = other.verifyEmail;
    if (l$verifyEmail != lOther$verifyEmail) {
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

extension UtilityExtension$Mutation$VerifyEmail on Mutation$VerifyEmail {
  CopyWith$Mutation$VerifyEmail<Mutation$VerifyEmail> get copyWith =>
      CopyWith$Mutation$VerifyEmail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyEmail<TRes> {
  factory CopyWith$Mutation$VerifyEmail(
    Mutation$VerifyEmail instance,
    TRes Function(Mutation$VerifyEmail) then,
  ) = _CopyWithImpl$Mutation$VerifyEmail;

  factory CopyWith$Mutation$VerifyEmail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyEmail;

  TRes call({
    Mutation$VerifyEmail$verifyEmail? verifyEmail,
    String? $__typename,
  });
  CopyWith$Mutation$VerifyEmail$verifyEmail<TRes> get verifyEmail;
}

class _CopyWithImpl$Mutation$VerifyEmail<TRes>
    implements CopyWith$Mutation$VerifyEmail<TRes> {
  _CopyWithImpl$Mutation$VerifyEmail(
    this._instance,
    this._then,
  );

  final Mutation$VerifyEmail _instance;

  final TRes Function(Mutation$VerifyEmail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyEmail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyEmail(
        verifyEmail: verifyEmail == _undefined
            ? _instance.verifyEmail
            : (verifyEmail as Mutation$VerifyEmail$verifyEmail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$VerifyEmail$verifyEmail<TRes> get verifyEmail {
    final local$verifyEmail = _instance.verifyEmail;
    return local$verifyEmail == null
        ? CopyWith$Mutation$VerifyEmail$verifyEmail.stub(_then(_instance))
        : CopyWith$Mutation$VerifyEmail$verifyEmail(
            local$verifyEmail, (e) => call(verifyEmail: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyEmail<TRes>
    implements CopyWith$Mutation$VerifyEmail<TRes> {
  _CopyWithStubImpl$Mutation$VerifyEmail(this._res);

  TRes _res;

  call({
    Mutation$VerifyEmail$verifyEmail? verifyEmail,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$VerifyEmail$verifyEmail<TRes> get verifyEmail =>
      CopyWith$Mutation$VerifyEmail$verifyEmail.stub(_res);
}

const documentNodeMutationVerifyEmail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyEmail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'verifyEmail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'restToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
Mutation$VerifyEmail _parserFn$Mutation$VerifyEmail(
        Map<String, dynamic> data) =>
    Mutation$VerifyEmail.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyEmail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyEmail?,
);

class Options$Mutation$VerifyEmail
    extends graphql.MutationOptions<Mutation$VerifyEmail> {
  Options$Mutation$VerifyEmail({
    String? operationName,
    required Variables$Mutation$VerifyEmail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyEmail? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyEmail? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyEmail>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$VerifyEmail(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyEmail,
          parserFn: _parserFn$Mutation$VerifyEmail,
        );

  final OnMutationCompleted$Mutation$VerifyEmail? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyEmail
    extends graphql.WatchQueryOptions<Mutation$VerifyEmail> {
  WatchOptions$Mutation$VerifyEmail({
    String? operationName,
    required Variables$Mutation$VerifyEmail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyEmail? typedOptimisticResult,
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
          document: documentNodeMutationVerifyEmail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyEmail,
        );
}

extension ClientExtension$Mutation$VerifyEmail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyEmail>> mutate$VerifyEmail(
          Options$Mutation$VerifyEmail options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyEmail> watchMutation$VerifyEmail(
          WatchOptions$Mutation$VerifyEmail options) =>
      this.watchMutation(options);
}

class Mutation$VerifyEmail$verifyEmail {
  Mutation$VerifyEmail$verifyEmail({
    this.token,
    this.restToken,
    this.user,
    this.$__typename = 'VerifyEmail',
  });

  factory Mutation$VerifyEmail$verifyEmail.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$restToken = json['restToken'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyEmail$verifyEmail(
      token: (l$token as String?),
      restToken: (l$restToken as String?),
      user: l$user == null
          ? null
          : Mutation$VerifyEmail$verifyEmail$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? token;

  final String? restToken;

  final Mutation$VerifyEmail$verifyEmail$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$restToken = restToken;
    _resultData['restToken'] = l$restToken;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$restToken = restToken;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$restToken,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VerifyEmail$verifyEmail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$restToken = restToken;
    final lOther$restToken = other.restToken;
    if (l$restToken != lOther$restToken) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$VerifyEmail$verifyEmail
    on Mutation$VerifyEmail$verifyEmail {
  CopyWith$Mutation$VerifyEmail$verifyEmail<Mutation$VerifyEmail$verifyEmail>
      get copyWith => CopyWith$Mutation$VerifyEmail$verifyEmail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$VerifyEmail$verifyEmail<TRes> {
  factory CopyWith$Mutation$VerifyEmail$verifyEmail(
    Mutation$VerifyEmail$verifyEmail instance,
    TRes Function(Mutation$VerifyEmail$verifyEmail) then,
  ) = _CopyWithImpl$Mutation$VerifyEmail$verifyEmail;

  factory CopyWith$Mutation$VerifyEmail$verifyEmail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyEmail$verifyEmail;

  TRes call({
    String? token,
    String? restToken,
    Mutation$VerifyEmail$verifyEmail$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$VerifyEmail$verifyEmail$user<TRes> get user;
}

class _CopyWithImpl$Mutation$VerifyEmail$verifyEmail<TRes>
    implements CopyWith$Mutation$VerifyEmail$verifyEmail<TRes> {
  _CopyWithImpl$Mutation$VerifyEmail$verifyEmail(
    this._instance,
    this._then,
  );

  final Mutation$VerifyEmail$verifyEmail _instance;

  final TRes Function(Mutation$VerifyEmail$verifyEmail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? restToken = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyEmail$verifyEmail(
        token: token == _undefined ? _instance.token : (token as String?),
        restToken: restToken == _undefined
            ? _instance.restToken
            : (restToken as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Mutation$VerifyEmail$verifyEmail$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$VerifyEmail$verifyEmail$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$VerifyEmail$verifyEmail$user.stub(_then(_instance))
        : CopyWith$Mutation$VerifyEmail$verifyEmail$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyEmail$verifyEmail<TRes>
    implements CopyWith$Mutation$VerifyEmail$verifyEmail<TRes> {
  _CopyWithStubImpl$Mutation$VerifyEmail$verifyEmail(this._res);

  TRes _res;

  call({
    String? token,
    String? restToken,
    Mutation$VerifyEmail$verifyEmail$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$VerifyEmail$verifyEmail$user<TRes> get user =>
      CopyWith$Mutation$VerifyEmail$verifyEmail$user.stub(_res);
}

class Mutation$VerifyEmail$verifyEmail$user {
  Mutation$VerifyEmail$verifyEmail$user({
    this.username,
    this.$__typename = 'UserType',
  });

  factory Mutation$VerifyEmail$verifyEmail$user.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyEmail$verifyEmail$user(
      username: (l$username as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VerifyEmail$verifyEmail$user ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$VerifyEmail$verifyEmail$user
    on Mutation$VerifyEmail$verifyEmail$user {
  CopyWith$Mutation$VerifyEmail$verifyEmail$user<
          Mutation$VerifyEmail$verifyEmail$user>
      get copyWith => CopyWith$Mutation$VerifyEmail$verifyEmail$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$VerifyEmail$verifyEmail$user<TRes> {
  factory CopyWith$Mutation$VerifyEmail$verifyEmail$user(
    Mutation$VerifyEmail$verifyEmail$user instance,
    TRes Function(Mutation$VerifyEmail$verifyEmail$user) then,
  ) = _CopyWithImpl$Mutation$VerifyEmail$verifyEmail$user;

  factory CopyWith$Mutation$VerifyEmail$verifyEmail$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyEmail$verifyEmail$user;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$VerifyEmail$verifyEmail$user<TRes>
    implements CopyWith$Mutation$VerifyEmail$verifyEmail$user<TRes> {
  _CopyWithImpl$Mutation$VerifyEmail$verifyEmail$user(
    this._instance,
    this._then,
  );

  final Mutation$VerifyEmail$verifyEmail$user _instance;

  final TRes Function(Mutation$VerifyEmail$verifyEmail$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyEmail$verifyEmail$user(
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$VerifyEmail$verifyEmail$user<TRes>
    implements CopyWith$Mutation$VerifyEmail$verifyEmail$user<TRes> {
  _CopyWithStubImpl$Mutation$VerifyEmail$verifyEmail$user(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}
