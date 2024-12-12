import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:prelura_app/modules/model/product/product_model.dart'
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
    required this.payload,
    required this.refreshExpiresIn,
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
      refreshExpiresIn: (l$refreshExpiresIn as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final dynamic payload;

  final int refreshExpiresIn;

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
    dynamic? payload,
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
        payload: payload == _undefined || payload == null
            ? _instance.payload
            : (payload as dynamic),
        refreshExpiresIn:
            refreshExpiresIn == _undefined || refreshExpiresIn == null
                ? _instance.refreshExpiresIn
                : (refreshExpiresIn as int),
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
    dynamic? payload,
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
    Enum$SizeEnum? size,
    required int subCategory,
    required String name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
  }) =>
      Variables$Mutation$CreateProduct._({
        r'category': category,
        if (condition != null) r'condition': condition,
        r'description': description,
        r'imageUrl': imageUrl,
        r'price': price,
        if (size != null) r'size': size,
        r'subCategory': subCategory,
        r'name': name,
        if (parcelSize != null) r'parcelSize': parcelSize,
        if (discount != null) r'discount': discount,
        if (color != null) r'color': color,
        if (brand != null) r'brand': brand,
        if (materials != null) r'materials': materials,
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
      result$data['size'] =
          l$size == null ? null : fromJson$Enum$SizeEnum((l$size as String));
    }
    final l$subCategory = data['subCategory'];
    result$data['subCategory'] = (l$subCategory as int);
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

  Enum$SizeEnum? get size => (_$data['size'] as Enum$SizeEnum?);

  int get subCategory => (_$data['subCategory'] as int);

  String get name => (_$data['name'] as String);

  Enum$ParcelSizeEnum? get parcelSize =>
      (_$data['parcelSize'] as Enum$ParcelSizeEnum?);

  double? get discount => (_$data['discount'] as double?);

  List<String?>? get color => (_$data['color'] as List<String?>?);

  int? get brand => (_$data['brand'] as int?);

  List<int?>? get materials => (_$data['materials'] as List<int?>?);

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
      result$data['size'] =
          l$size == null ? null : toJson$Enum$SizeEnum(l$size);
    }
    final l$subCategory = subCategory;
    result$data['subCategory'] = l$subCategory;
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
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (l$subCategory != lOther$subCategory) {
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
    final l$subCategory = subCategory;
    final l$name = name;
    final l$parcelSize = parcelSize;
    final l$discount = discount;
    final l$color = color;
    final l$brand = brand;
    final l$materials = materials;
    return Object.hashAll([
      l$category,
      _$data.containsKey('condition') ? l$condition : const {},
      l$description,
      Object.hashAll(l$imageUrl.map((v) => v)),
      l$price,
      _$data.containsKey('size') ? l$size : const {},
      l$subCategory,
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
    Enum$SizeEnum? size,
    int? subCategory,
    String? name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
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
    Object? subCategory = _undefined,
    Object? name = _undefined,
    Object? parcelSize = _undefined,
    Object? discount = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? materials = _undefined,
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
        if (size != _undefined) 'size': (size as Enum$SizeEnum?),
        if (subCategory != _undefined && subCategory != null)
          'subCategory': (subCategory as int),
        if (name != _undefined && name != null) 'name': (name as String),
        if (parcelSize != _undefined)
          'parcelSize': (parcelSize as Enum$ParcelSizeEnum?),
        if (discount != _undefined) 'discount': (discount as double?),
        if (color != _undefined) 'color': (color as List<String?>?),
        if (brand != _undefined) 'brand': (brand as int?),
        if (materials != _undefined) 'materials': (materials as List<int?>?),
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
    Enum$SizeEnum? size,
    int? subCategory,
    String? name,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
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
          name: NameNode(value: 'SizeEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subCategory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
            name: NameNode(value: 'subCategory'),
            value: VariableNode(name: NameNode(value: 'subCategory')),
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
    Enum$ParcelSizeEnum? parcelSize,
    double? price,
    required int productId,
    Enum$SizeEnum? size,
    int? subCategory,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
  }) =>
      Variables$Mutation$UpdateProduct._({
        if (category != null) r'category': category,
        if (condition != null) r'condition': condition,
        if (description != null) r'description': description,
        if (discount != null) r'discount': discount,
        if (name != null) r'name': name,
        if (parcelSize != null) r'parcelSize': parcelSize,
        if (price != null) r'price': price,
        r'productId': productId,
        if (size != null) r'size': size,
        if (subCategory != null) r'subCategory': subCategory,
        if (color != null) r'color': color,
        if (brand != null) r'brand': brand,
        if (materials != null) r'materials': materials,
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
      result$data['size'] =
          l$size == null ? null : fromJson$Enum$SizeEnum((l$size as String));
    }
    if (data.containsKey('subCategory')) {
      final l$subCategory = data['subCategory'];
      result$data['subCategory'] = (l$subCategory as int?);
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
    return Variables$Mutation$UpdateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get category => (_$data['category'] as int?);

  EnumImport$ConditionEnum.ConditionsEnum? get condition =>
      (_$data['condition'] as EnumImport$ConditionEnum.ConditionsEnum?);

  String? get description => (_$data['description'] as String?);

  double? get discount => (_$data['discount'] as double?);

  String? get name => (_$data['name'] as String?);

  Enum$ParcelSizeEnum? get parcelSize =>
      (_$data['parcelSize'] as Enum$ParcelSizeEnum?);

  double? get price => (_$data['price'] as double?);

  int get productId => (_$data['productId'] as int);

  Enum$SizeEnum? get size => (_$data['size'] as Enum$SizeEnum?);

  int? get subCategory => (_$data['subCategory'] as int?);

  List<String?>? get color => (_$data['color'] as List<String?>?);

  int? get brand => (_$data['brand'] as int?);

  List<int?>? get materials => (_$data['materials'] as List<int?>?);

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
      result$data['size'] =
          l$size == null ? null : toJson$Enum$SizeEnum(l$size);
    }
    if (_$data.containsKey('subCategory')) {
      final l$subCategory = subCategory;
      result$data['subCategory'] = l$subCategory;
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
    final l$subCategory = subCategory;
    final lOther$subCategory = other.subCategory;
    if (_$data.containsKey('subCategory') !=
        other._$data.containsKey('subCategory')) {
      return false;
    }
    if (l$subCategory != lOther$subCategory) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$condition = condition;
    final l$description = description;
    final l$discount = discount;
    final l$name = name;
    final l$parcelSize = parcelSize;
    final l$price = price;
    final l$productId = productId;
    final l$size = size;
    final l$subCategory = subCategory;
    final l$color = color;
    final l$brand = brand;
    final l$materials = materials;
    return Object.hashAll([
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('discount') ? l$discount : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('parcelSize') ? l$parcelSize : const {},
      _$data.containsKey('price') ? l$price : const {},
      l$productId,
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('subCategory') ? l$subCategory : const {},
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
    Enum$ParcelSizeEnum? parcelSize,
    double? price,
    int? productId,
    Enum$SizeEnum? size,
    int? subCategory,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
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
    Object? parcelSize = _undefined,
    Object? price = _undefined,
    Object? productId = _undefined,
    Object? size = _undefined,
    Object? subCategory = _undefined,
    Object? color = _undefined,
    Object? brand = _undefined,
    Object? materials = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProduct._({
        ..._instance._$data,
        if (category != _undefined) 'category': (category as int?),
        if (condition != _undefined)
          'condition': (condition as EnumImport$ConditionEnum.ConditionsEnum?),
        if (description != _undefined) 'description': (description as String?),
        if (discount != _undefined) 'discount': (discount as double?),
        if (name != _undefined) 'name': (name as String?),
        if (parcelSize != _undefined)
          'parcelSize': (parcelSize as Enum$ParcelSizeEnum?),
        if (price != _undefined) 'price': (price as double?),
        if (productId != _undefined && productId != null)
          'productId': (productId as int),
        if (size != _undefined) 'size': (size as Enum$SizeEnum?),
        if (subCategory != _undefined) 'subCategory': (subCategory as int?),
        if (color != _undefined) 'color': (color as List<String?>?),
        if (brand != _undefined) 'brand': (brand as int?),
        if (materials != _undefined) 'materials': (materials as List<int?>?),
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
    Enum$ParcelSizeEnum? parcelSize,
    double? price,
    int? productId,
    Enum$SizeEnum? size,
    int? subCategory,
    List<String?>? color,
    int? brand,
    List<int?>? materials,
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
          name: NameNode(value: 'SizeEnum'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subCategory')),
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
            name: NameNode(value: 'discount'),
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
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'size'),
            value: VariableNode(name: NameNode(value: 'size')),
          ),
          ArgumentNode(
            name: NameNode(value: 'subCategory'),
            value: VariableNode(name: NameNode(value: 'subCategory')),
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
    DateTime? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    String? profilePictureUrl,
    String? thumbnailUrl,
    bool? use2fa,
    String? username,
    Input$LocationInputType? location,
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
        if (profilePictureUrl != null) r'profilePictureUrl': profilePictureUrl,
        if (thumbnailUrl != null) r'thumbnailUrl': thumbnailUrl,
        if (use2fa != null) r'use2fa': use2fa,
        if (username != null) r'username': username,
        if (location != null) r'location': location,
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
      result$data['dob'] =
          l$dob == null ? null : DateTime.parse((l$dob as String));
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
    if (data.containsKey('profilePictureUrl')) {
      final l$profilePictureUrl = data['profilePictureUrl'];
      result$data['profilePictureUrl'] = (l$profilePictureUrl as String?);
    }
    if (data.containsKey('thumbnailUrl')) {
      final l$thumbnailUrl = data['thumbnailUrl'];
      result$data['thumbnailUrl'] = (l$thumbnailUrl as String?);
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
    return Variables$Mutation$UpdateProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bio => (_$data['bio'] as String?);

  String? get country => (_$data['country'] as String?);

  String? get displayName => (_$data['displayName'] as String?);

  DateTime? get dob => (_$data['dob'] as DateTime?);

  String? get firstName => (_$data['firstName'] as String?);

  String? get gender => (_$data['gender'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get otp => (_$data['otp'] as String?);

  Input$PhoneInputType? get phoneNumber =>
      (_$data['phoneNumber'] as Input$PhoneInputType?);

  String? get postCode => (_$data['postCode'] as String?);

  String? get profilePictureUrl => (_$data['profilePictureUrl'] as String?);

  String? get thumbnailUrl => (_$data['thumbnailUrl'] as String?);

  bool? get use2fa => (_$data['use2fa'] as bool?);

  String? get username => (_$data['username'] as String?);

  Input$LocationInputType? get location =>
      (_$data['location'] as Input$LocationInputType?);

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
      result$data['dob'] = l$dob?.toIso8601String();
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
    if (_$data.containsKey('profilePictureUrl')) {
      final l$profilePictureUrl = profilePictureUrl;
      result$data['profilePictureUrl'] = l$profilePictureUrl;
    }
    if (_$data.containsKey('thumbnailUrl')) {
      final l$thumbnailUrl = thumbnailUrl;
      result$data['thumbnailUrl'] = l$thumbnailUrl;
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
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (_$data.containsKey('profilePictureUrl') !=
        other._$data.containsKey('profilePictureUrl')) {
      return false;
    }
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (_$data.containsKey('thumbnailUrl') !=
        other._$data.containsKey('thumbnailUrl')) {
      return false;
    }
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
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
    final l$profilePictureUrl = profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    final l$use2fa = use2fa;
    final l$username = username;
    final l$location = location;
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
      _$data.containsKey('profilePictureUrl') ? l$profilePictureUrl : const {},
      _$data.containsKey('thumbnailUrl') ? l$thumbnailUrl : const {},
      _$data.containsKey('use2fa') ? l$use2fa : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('location') ? l$location : const {},
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
    DateTime? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    String? profilePictureUrl,
    String? thumbnailUrl,
    bool? use2fa,
    String? username,
    Input$LocationInputType? location,
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
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? use2fa = _undefined,
    Object? username = _undefined,
    Object? location = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProfile._({
        ..._instance._$data,
        if (bio != _undefined) 'bio': (bio as String?),
        if (country != _undefined) 'country': (country as String?),
        if (displayName != _undefined) 'displayName': (displayName as String?),
        if (dob != _undefined) 'dob': (dob as DateTime?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (gender != _undefined) 'gender': (gender as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (otp != _undefined) 'otp': (otp as String?),
        if (phoneNumber != _undefined)
          'phoneNumber': (phoneNumber as Input$PhoneInputType?),
        if (postCode != _undefined) 'postCode': (postCode as String?),
        if (profilePictureUrl != _undefined)
          'profilePictureUrl': (profilePictureUrl as String?),
        if (thumbnailUrl != _undefined)
          'thumbnailUrl': (thumbnailUrl as String?),
        if (use2fa != _undefined) 'use2fa': (use2fa as bool?),
        if (username != _undefined) 'username': (username as String?),
        if (location != _undefined)
          'location': (location as Input$LocationInputType?),
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
    DateTime? dob,
    String? firstName,
    String? gender,
    String? lastName,
    String? otp,
    Input$PhoneInputType? phoneNumber,
    String? postCode,
    String? profilePictureUrl,
    String? thumbnailUrl,
    bool? use2fa,
    String? username,
    Input$LocationInputType? location,
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
          name: NameNode(value: 'Date'),
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
        variable: VariableNode(name: NameNode(value: 'profilePictureUrl')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'thumbnailUrl')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
            name: NameNode(value: 'profilePictureUrl'),
            value: VariableNode(name: NameNode(value: 'profilePictureUrl')),
          ),
          ArgumentNode(
            name: NameNode(value: 'thumbnailUrl'),
            value: VariableNode(name: NameNode(value: 'thumbnailUrl')),
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
