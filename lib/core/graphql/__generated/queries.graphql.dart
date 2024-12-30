// ignore_for_file: type=lint
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
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationName'),
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
            name: NameNode(value: 'noOfFollowing'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'noOfFollowers'),
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
    this.location,
    this.noOfFollowing,
    this.noOfFollowers,
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
    final l$location = json['location'];
    final l$noOfFollowing = json['noOfFollowing'];
    final l$noOfFollowers = json['noOfFollowers'];
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
      location: l$location == null
          ? null
          : Query$ViewMe$viewMe$location.fromJson(
              (l$location as Map<String, dynamic>)),
      noOfFollowing: (l$noOfFollowing as int?),
      noOfFollowers: (l$noOfFollowers as int?),
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

  final Query$ViewMe$viewMe$location? location;

  final int? noOfFollowing;

  final int? noOfFollowers;

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
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$noOfFollowing = noOfFollowing;
    _resultData['noOfFollowing'] = l$noOfFollowing;
    final l$noOfFollowers = noOfFollowers;
    _resultData['noOfFollowers'] = l$noOfFollowers;
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
    final l$location = location;
    final l$noOfFollowing = noOfFollowing;
    final l$noOfFollowers = noOfFollowers;
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
      l$location,
      l$noOfFollowing,
      l$noOfFollowers,
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
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$noOfFollowing = noOfFollowing;
    final lOther$noOfFollowing = other.noOfFollowing;
    if (l$noOfFollowing != lOther$noOfFollowing) {
      return false;
    }
    final l$noOfFollowers = noOfFollowers;
    final lOther$noOfFollowers = other.noOfFollowers;
    if (l$noOfFollowers != lOther$noOfFollowers) {
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
    Query$ViewMe$viewMe$location? location,
    int? noOfFollowing,
    int? noOfFollowers,
    Query$ViewMe$viewMe$phone? phone,
    String? $__typename,
  });
  CopyWith$Query$ViewMe$viewMe$location<TRes> get location;
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
    Object? location = _undefined,
    Object? noOfFollowing = _undefined,
    Object? noOfFollowers = _undefined,
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
        location: location == _undefined
            ? _instance.location
            : (location as Query$ViewMe$viewMe$location?),
        noOfFollowing: noOfFollowing == _undefined
            ? _instance.noOfFollowing
            : (noOfFollowing as int?),
        noOfFollowers: noOfFollowers == _undefined
            ? _instance.noOfFollowers
            : (noOfFollowers as int?),
        phone: phone == _undefined
            ? _instance.phone
            : (phone as Query$ViewMe$viewMe$phone?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ViewMe$viewMe$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$ViewMe$viewMe$location.stub(_then(_instance))
        : CopyWith$Query$ViewMe$viewMe$location(
            local$location, (e) => call(location: e));
  }

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
    Query$ViewMe$viewMe$location? location,
    int? noOfFollowing,
    int? noOfFollowers,
    Query$ViewMe$viewMe$phone? phone,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ViewMe$viewMe$location<TRes> get location =>
      CopyWith$Query$ViewMe$viewMe$location.stub(_res);

  CopyWith$Query$ViewMe$viewMe$phone<TRes> get phone =>
      CopyWith$Query$ViewMe$viewMe$phone.stub(_res);
}

class Query$ViewMe$viewMe$location {
  Query$ViewMe$viewMe$location({
    this.latitude,
    this.longitude,
    this.locationName,
    this.$__typename = 'LocationType',
  });

  factory Query$ViewMe$viewMe$location.fromJson(Map<String, dynamic> json) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$locationName = json['locationName'];
    final l$$__typename = json['__typename'];
    return Query$ViewMe$viewMe$location(
      latitude: (l$latitude as String?),
      longitude: (l$longitude as String?),
      locationName: (l$locationName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? latitude;

  final String? longitude;

  final String? locationName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$locationName = locationName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$latitude,
      l$longitude,
      l$locationName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ViewMe$viewMe$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
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

extension UtilityExtension$Query$ViewMe$viewMe$location
    on Query$ViewMe$viewMe$location {
  CopyWith$Query$ViewMe$viewMe$location<Query$ViewMe$viewMe$location>
      get copyWith => CopyWith$Query$ViewMe$viewMe$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ViewMe$viewMe$location<TRes> {
  factory CopyWith$Query$ViewMe$viewMe$location(
    Query$ViewMe$viewMe$location instance,
    TRes Function(Query$ViewMe$viewMe$location) then,
  ) = _CopyWithImpl$Query$ViewMe$viewMe$location;

  factory CopyWith$Query$ViewMe$viewMe$location.stub(TRes res) =
      _CopyWithStubImpl$Query$ViewMe$viewMe$location;

  TRes call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ViewMe$viewMe$location<TRes>
    implements CopyWith$Query$ViewMe$viewMe$location<TRes> {
  _CopyWithImpl$Query$ViewMe$viewMe$location(
    this._instance,
    this._then,
  );

  final Query$ViewMe$viewMe$location _instance;

  final TRes Function(Query$ViewMe$viewMe$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? locationName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ViewMe$viewMe$location(
        latitude:
            latitude == _undefined ? _instance.latitude : (latitude as String?),
        longitude: longitude == _undefined
            ? _instance.longitude
            : (longitude as String?),
        locationName: locationName == _undefined
            ? _instance.locationName
            : (locationName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ViewMe$viewMe$location<TRes>
    implements CopyWith$Query$ViewMe$viewMe$location<TRes> {
  _CopyWithStubImpl$Query$ViewMe$viewMe$location(this._res);

  TRes _res;

  call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  }) =>
      _res;
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
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationName'),
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
            name: NameNode(value: 'noOfFollowing'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'noOfFollowers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFollowing'),
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
    this.location,
    this.noOfFollowing,
    this.noOfFollowers,
    this.isFollowing,
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
    final l$location = json['location'];
    final l$noOfFollowing = json['noOfFollowing'];
    final l$noOfFollowers = json['noOfFollowers'];
    final l$isFollowing = json['isFollowing'];
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
      location: l$location == null
          ? null
          : Query$GetUser$getUser$location.fromJson(
              (l$location as Map<String, dynamic>)),
      noOfFollowing: (l$noOfFollowing as int?),
      noOfFollowers: (l$noOfFollowers as int?),
      isFollowing: (l$isFollowing as bool?),
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

  final Query$GetUser$getUser$location? location;

  final int? noOfFollowing;

  final int? noOfFollowers;

  final bool? isFollowing;

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
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$noOfFollowing = noOfFollowing;
    _resultData['noOfFollowing'] = l$noOfFollowing;
    final l$noOfFollowers = noOfFollowers;
    _resultData['noOfFollowers'] = l$noOfFollowers;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
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
    final l$location = location;
    final l$noOfFollowing = noOfFollowing;
    final l$noOfFollowers = noOfFollowers;
    final l$isFollowing = isFollowing;
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
      l$location,
      l$noOfFollowing,
      l$noOfFollowers,
      l$isFollowing,
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
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$noOfFollowing = noOfFollowing;
    final lOther$noOfFollowing = other.noOfFollowing;
    if (l$noOfFollowing != lOther$noOfFollowing) {
      return false;
    }
    final l$noOfFollowers = noOfFollowers;
    final lOther$noOfFollowers = other.noOfFollowers;
    if (l$noOfFollowers != lOther$noOfFollowers) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
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
    Query$GetUser$getUser$location? location,
    int? noOfFollowing,
    int? noOfFollowers,
    bool? isFollowing,
    Query$GetUser$getUser$phone? phone,
    String? $__typename,
  });
  CopyWith$Query$GetUser$getUser$location<TRes> get location;
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
    Object? location = _undefined,
    Object? noOfFollowing = _undefined,
    Object? noOfFollowers = _undefined,
    Object? isFollowing = _undefined,
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
        location: location == _undefined
            ? _instance.location
            : (location as Query$GetUser$getUser$location?),
        noOfFollowing: noOfFollowing == _undefined
            ? _instance.noOfFollowing
            : (noOfFollowing as int?),
        noOfFollowers: noOfFollowers == _undefined
            ? _instance.noOfFollowers
            : (noOfFollowers as int?),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        phone: phone == _undefined
            ? _instance.phone
            : (phone as Query$GetUser$getUser$phone?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUser$getUser$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$GetUser$getUser$location.stub(_then(_instance))
        : CopyWith$Query$GetUser$getUser$location(
            local$location, (e) => call(location: e));
  }

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
    Query$GetUser$getUser$location? location,
    int? noOfFollowing,
    int? noOfFollowers,
    bool? isFollowing,
    Query$GetUser$getUser$phone? phone,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUser$getUser$location<TRes> get location =>
      CopyWith$Query$GetUser$getUser$location.stub(_res);

  CopyWith$Query$GetUser$getUser$phone<TRes> get phone =>
      CopyWith$Query$GetUser$getUser$phone.stub(_res);
}

class Query$GetUser$getUser$location {
  Query$GetUser$getUser$location({
    this.latitude,
    this.longitude,
    this.locationName,
    this.$__typename = 'LocationType',
  });

  factory Query$GetUser$getUser$location.fromJson(Map<String, dynamic> json) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$locationName = json['locationName'];
    final l$$__typename = json['__typename'];
    return Query$GetUser$getUser$location(
      latitude: (l$latitude as String?),
      longitude: (l$longitude as String?),
      locationName: (l$locationName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? latitude;

  final String? longitude;

  final String? locationName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$locationName = locationName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$latitude,
      l$longitude,
      l$locationName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser$getUser$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
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

extension UtilityExtension$Query$GetUser$getUser$location
    on Query$GetUser$getUser$location {
  CopyWith$Query$GetUser$getUser$location<Query$GetUser$getUser$location>
      get copyWith => CopyWith$Query$GetUser$getUser$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUser$getUser$location<TRes> {
  factory CopyWith$Query$GetUser$getUser$location(
    Query$GetUser$getUser$location instance,
    TRes Function(Query$GetUser$getUser$location) then,
  ) = _CopyWithImpl$Query$GetUser$getUser$location;

  factory CopyWith$Query$GetUser$getUser$location.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser$getUser$location;

  TRes call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUser$getUser$location<TRes>
    implements CopyWith$Query$GetUser$getUser$location<TRes> {
  _CopyWithImpl$Query$GetUser$getUser$location(
    this._instance,
    this._then,
  );

  final Query$GetUser$getUser$location _instance;

  final TRes Function(Query$GetUser$getUser$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? locationName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser$getUser$location(
        latitude:
            latitude == _undefined ? _instance.latitude : (latitude as String?),
        longitude: longitude == _undefined
            ? _instance.longitude
            : (longitude as String?),
        locationName: locationName == _undefined
            ? _instance.locationName
            : (locationName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUser$getUser$location<TRes>
    implements CopyWith$Query$GetUser$getUser$location<TRes> {
  _CopyWithStubImpl$Query$GetUser$getUser$location(this._res);

  TRes _res;

  call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  }) =>
      _res;
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
            name: NameNode(value: 'style'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'materials'),
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
            name: NameNode(value: 'customBrand'),
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
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.style,
    this.materials,
    this.customBrand,
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
    final l$style = json['style'];
    final l$materials = json['materials'];
    final l$customBrand = json['customBrand'];
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
      price: (l$price as num?)?.toDouble(),
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
      style: l$style == null
          ? null
          : fromJson$Enum$ProductsProductStyleChoices((l$style as String)),
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Product$product$materials.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      customBrand: (l$customBrand as String?),
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

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Enum$ProductsProductStyleChoices? style;

  final List<Query$Product$product$materials?>? materials;

  final String? customBrand;

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
    final l$style = style;
    _resultData['style'] = l$style == null
        ? null
        : toJson$Enum$ProductsProductStyleChoices(l$style);
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
    final l$customBrand = customBrand;
    _resultData['customBrand'] = l$customBrand;
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
    final l$style = style;
    final l$materials = materials;
    final l$customBrand = customBrand;
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
      l$style,
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$customBrand,
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
    final l$style = style;
    final lOther$style = other.style;
    if (l$style != lOther$style) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (l$customBrand != lOther$customBrand) {
      return false;
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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$Product$product$materials?>? materials,
    String? customBrand,
    Query$Product$product$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$Product$product$category<TRes> get category;
  CopyWith$Query$Product$product$subCategory<TRes> get subCategory;
  CopyWith$Query$Product$product$seller<TRes> get seller;
  TRes materials(
      Iterable<Query$Product$product$materials?>? Function(
              Iterable<
                  CopyWith$Query$Product$product$materials<
                      Query$Product$product$materials>?>?)
          _fn);
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
    Object? style = _undefined,
    Object? materials = _undefined,
    Object? customBrand = _undefined,
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
        price: price == _undefined ? _instance.price : (price as double?),
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
        style: style == _undefined
            ? _instance.style
            : (style as Enum$ProductsProductStyleChoices?),
        materials: materials == _undefined
            ? _instance.materials
            : (materials as List<Query$Product$product$materials?>?),
        customBrand: customBrand == _undefined
            ? _instance.customBrand
            : (customBrand as String?),
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

  TRes materials(
          Iterable<Query$Product$product$materials?>? Function(
                  Iterable<
                      CopyWith$Query$Product$product$materials<
                          Query$Product$product$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$Product$product$materials(
                  e,
                  (i) => i,
                )))?.toList());

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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$Product$product$materials?>? materials,
    String? customBrand,
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

  materials(_fn) => _res;

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

class Query$Product$product$materials {
  Query$Product$product$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$Product$product$materials.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Product$product$materials(
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
    if (other is! Query$Product$product$materials ||
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

extension UtilityExtension$Query$Product$product$materials
    on Query$Product$product$materials {
  CopyWith$Query$Product$product$materials<Query$Product$product$materials>
      get copyWith => CopyWith$Query$Product$product$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Product$product$materials<TRes> {
  factory CopyWith$Query$Product$product$materials(
    Query$Product$product$materials instance,
    TRes Function(Query$Product$product$materials) then,
  ) = _CopyWithImpl$Query$Product$product$materials;

  factory CopyWith$Query$Product$product$materials.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product$materials<TRes>
    implements CopyWith$Query$Product$product$materials<TRes> {
  _CopyWithImpl$Query$Product$product$materials(
    this._instance,
    this._then,
  );

  final Query$Product$product$materials _instance;

  final TRes Function(Query$Product$product$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Product$product$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Product$product$materials<TRes>
    implements CopyWith$Query$Product$product$materials<TRes> {
  _CopyWithStubImpl$Query$Product$product$materials(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
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

class Query$RecentlyViewedproducts {
  Query$RecentlyViewedproducts({
    this.recentlyViewedProducts,
    this.$__typename = 'Query',
  });

  factory Query$RecentlyViewedproducts.fromJson(Map<String, dynamic> json) {
    final l$recentlyViewedProducts = json['recentlyViewedProducts'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts(
      recentlyViewedProducts: (l$recentlyViewedProducts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$RecentlyViewedproducts$recentlyViewedProducts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RecentlyViewedproducts$recentlyViewedProducts?>?
      recentlyViewedProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recentlyViewedProducts = recentlyViewedProducts;
    _resultData['recentlyViewedProducts'] =
        l$recentlyViewedProducts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recentlyViewedProducts = recentlyViewedProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$recentlyViewedProducts == null
          ? null
          : Object.hashAll(l$recentlyViewedProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RecentlyViewedproducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recentlyViewedProducts = recentlyViewedProducts;
    final lOther$recentlyViewedProducts = other.recentlyViewedProducts;
    if (l$recentlyViewedProducts != null &&
        lOther$recentlyViewedProducts != null) {
      if (l$recentlyViewedProducts.length !=
          lOther$recentlyViewedProducts.length) {
        return false;
      }
      for (int i = 0; i < l$recentlyViewedProducts.length; i++) {
        final l$recentlyViewedProducts$entry = l$recentlyViewedProducts[i];
        final lOther$recentlyViewedProducts$entry =
            lOther$recentlyViewedProducts[i];
        if (l$recentlyViewedProducts$entry !=
            lOther$recentlyViewedProducts$entry) {
          return false;
        }
      }
    } else if (l$recentlyViewedProducts != lOther$recentlyViewedProducts) {
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

extension UtilityExtension$Query$RecentlyViewedproducts
    on Query$RecentlyViewedproducts {
  CopyWith$Query$RecentlyViewedproducts<Query$RecentlyViewedproducts>
      get copyWith => CopyWith$Query$RecentlyViewedproducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts<TRes> {
  factory CopyWith$Query$RecentlyViewedproducts(
    Query$RecentlyViewedproducts instance,
    TRes Function(Query$RecentlyViewedproducts) then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts;

  factory CopyWith$Query$RecentlyViewedproducts.stub(TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts;

  TRes call({
    List<Query$RecentlyViewedproducts$recentlyViewedProducts?>?
        recentlyViewedProducts,
    String? $__typename,
  });
  TRes recentlyViewedProducts(
      Iterable<Query$RecentlyViewedproducts$recentlyViewedProducts?>? Function(
              Iterable<
                  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts<
                      Query$RecentlyViewedproducts$recentlyViewedProducts>?>?)
          _fn);
}

class _CopyWithImpl$Query$RecentlyViewedproducts<TRes>
    implements CopyWith$Query$RecentlyViewedproducts<TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts _instance;

  final TRes Function(Query$RecentlyViewedproducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recentlyViewedProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts(
        recentlyViewedProducts: recentlyViewedProducts == _undefined
            ? _instance.recentlyViewedProducts
            : (recentlyViewedProducts
                as List<Query$RecentlyViewedproducts$recentlyViewedProducts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes recentlyViewedProducts(
          Iterable<Query$RecentlyViewedproducts$recentlyViewedProducts?>? Function(
                  Iterable<
                      CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts<
                          Query$RecentlyViewedproducts$recentlyViewedProducts>?>?)
              _fn) =>
      call(
          recentlyViewedProducts:
              _fn(_instance.recentlyViewedProducts?.map((e) => e == null
                  ? null
                  : CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$RecentlyViewedproducts<TRes>
    implements CopyWith$Query$RecentlyViewedproducts<TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts(this._res);

  TRes _res;

  call({
    List<Query$RecentlyViewedproducts$recentlyViewedProducts?>?
        recentlyViewedProducts,
    String? $__typename,
  }) =>
      _res;

  recentlyViewedProducts(_fn) => _res;
}

const documentNodeQueryRecentlyViewedproducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RecentlyViewedproducts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'recentlyViewedProducts'),
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
            name: NameNode(value: 'style'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'materials'),
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
            name: NameNode(value: 'customBrand'),
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
Query$RecentlyViewedproducts _parserFn$Query$RecentlyViewedproducts(
        Map<String, dynamic> data) =>
    Query$RecentlyViewedproducts.fromJson(data);
typedef OnQueryComplete$Query$RecentlyViewedproducts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RecentlyViewedproducts?,
);

class Options$Query$RecentlyViewedproducts
    extends graphql.QueryOptions<Query$RecentlyViewedproducts> {
  Options$Query$RecentlyViewedproducts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RecentlyViewedproducts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RecentlyViewedproducts? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$RecentlyViewedproducts(data),
                  ),
          onError: onError,
          document: documentNodeQueryRecentlyViewedproducts,
          parserFn: _parserFn$Query$RecentlyViewedproducts,
        );

  final OnQueryComplete$Query$RecentlyViewedproducts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RecentlyViewedproducts
    extends graphql.WatchQueryOptions<Query$RecentlyViewedproducts> {
  WatchOptions$Query$RecentlyViewedproducts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RecentlyViewedproducts? typedOptimisticResult,
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
          document: documentNodeQueryRecentlyViewedproducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RecentlyViewedproducts,
        );
}

class FetchMoreOptions$Query$RecentlyViewedproducts
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RecentlyViewedproducts(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryRecentlyViewedproducts,
        );
}

extension ClientExtension$Query$RecentlyViewedproducts
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RecentlyViewedproducts>>
      query$RecentlyViewedproducts(
              [Options$Query$RecentlyViewedproducts? options]) async =>
          await this.query(options ?? Options$Query$RecentlyViewedproducts());
  graphql.ObservableQuery<
      Query$RecentlyViewedproducts> watchQuery$RecentlyViewedproducts(
          [WatchOptions$Query$RecentlyViewedproducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RecentlyViewedproducts());
  void writeQuery$RecentlyViewedproducts({
    required Query$RecentlyViewedproducts data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryRecentlyViewedproducts)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RecentlyViewedproducts? readQuery$RecentlyViewedproducts(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryRecentlyViewedproducts)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$RecentlyViewedproducts.fromJson(result);
  }
}

class Query$RecentlyViewedproducts$recentlyViewedProducts {
  Query$RecentlyViewedproducts$recentlyViewedProducts({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.style,
    this.materials,
    this.customBrand,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$RecentlyViewedproducts$recentlyViewedProducts.fromJson(
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
    final l$userLiked = json['userLiked'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$color = json['color'];
    final l$style = json['style'];
    final l$materials = json['materials'];
    final l$customBrand = json['customBrand'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts$recentlyViewedProducts(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$RecentlyViewedproducts$recentlyViewedProducts$category
              .fromJson((l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory
              .fromJson((l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$RecentlyViewedproducts$recentlyViewedProducts$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as num?)?.toDouble(),
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
      style: l$style == null
          ? null
          : fromJson$Enum$ProductsProductStyleChoices((l$style as String)),
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$RecentlyViewedproducts$recentlyViewedProducts$materials
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      customBrand: (l$customBrand as String?),
      brand: l$brand == null
          ? null
          : Query$RecentlyViewedproducts$recentlyViewedProducts$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$RecentlyViewedproducts$recentlyViewedProducts$category? category;

  final Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory?
      subCategory;

  final Query$RecentlyViewedproducts$recentlyViewedProducts$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Enum$ProductsProductStyleChoices? style;

  final List<Query$RecentlyViewedproducts$recentlyViewedProducts$materials?>?
      materials;

  final String? customBrand;

  final Query$RecentlyViewedproducts$recentlyViewedProducts$brand? brand;

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
    final l$style = style;
    _resultData['style'] = l$style == null
        ? null
        : toJson$Enum$ProductsProductStyleChoices(l$style);
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
    final l$customBrand = customBrand;
    _resultData['customBrand'] = l$customBrand;
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
    final l$style = style;
    final l$materials = materials;
    final l$customBrand = customBrand;
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
      l$style,
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$customBrand,
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RecentlyViewedproducts$recentlyViewedProducts ||
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
    final l$style = style;
    final lOther$style = other.style;
    if (l$style != lOther$style) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (l$customBrand != lOther$customBrand) {
      return false;
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

extension UtilityExtension$Query$RecentlyViewedproducts$recentlyViewedProducts
    on Query$RecentlyViewedproducts$recentlyViewedProducts {
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts<
          Query$RecentlyViewedproducts$recentlyViewedProducts>
      get copyWith =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts<
    TRes> {
  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts(
    Query$RecentlyViewedproducts$recentlyViewedProducts instance,
    TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts) then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts;

  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$RecentlyViewedproducts$recentlyViewedProducts$category? category,
    Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory?
        subCategory,
    Query$RecentlyViewedproducts$recentlyViewedProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$RecentlyViewedproducts$recentlyViewedProducts$materials?>?
        materials,
    String? customBrand,
    Query$RecentlyViewedproducts$recentlyViewedProducts$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<TRes>
      get category;
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<TRes>
      get subCategory;
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<TRes>
      get seller;
  TRes materials(
      Iterable<Query$RecentlyViewedproducts$recentlyViewedProducts$materials?>? Function(
              Iterable<
                  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
                      Query$RecentlyViewedproducts$recentlyViewedProducts$materials>?>?)
          _fn);
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<TRes>
      get brand;
}

class _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts<TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts<TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts$recentlyViewedProducts _instance;

  final TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts)
      _then;

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
    Object? style = _undefined,
    Object? materials = _undefined,
    Object? customBrand = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts$recentlyViewedProducts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category
                as Query$RecentlyViewedproducts$recentlyViewedProducts$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory
                as Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller
                as Query$RecentlyViewedproducts$recentlyViewedProducts$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined ? _instance.price : (price as double?),
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
        style: style == _undefined
            ? _instance.style
            : (style as Enum$ProductsProductStyleChoices?),
        materials: materials == _undefined
            ? _instance.materials
            : (materials as List<
                Query$RecentlyViewedproducts$recentlyViewedProducts$materials?>?),
        customBrand: customBrand == _undefined
            ? _instance.customBrand
            : (customBrand as String?),
        brand: brand == _undefined
            ? _instance.brand
            : (brand
                as Query$RecentlyViewedproducts$recentlyViewedProducts$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category
            .stub(_then(_instance))
        : CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<TRes>
      get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory
            .stub(_then(_instance))
        : CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<TRes>
      get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller
            .stub(_then(_instance))
        : CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
            local$seller, (e) => call(seller: e));
  }

  TRes materials(
          Iterable<Query$RecentlyViewedproducts$recentlyViewedProducts$materials?>? Function(
                  Iterable<
                      CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
                          Query$RecentlyViewedproducts$recentlyViewedProducts$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<TRes>
      get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand
            .stub(_then(_instance))
        : CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts<TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$RecentlyViewedproducts$recentlyViewedProducts$category? category,
    Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory?
        subCategory,
    Query$RecentlyViewedproducts$recentlyViewedProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$RecentlyViewedproducts$recentlyViewedProducts$materials?>?
        materials,
    String? customBrand,
    Query$RecentlyViewedproducts$recentlyViewedProducts$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<TRes>
      get category =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category
              .stub(_res);

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<TRes>
      get subCategory =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory
              .stub(_res);

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<TRes>
      get seller =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller
              .stub(_res);

  materials(_fn) => _res;

  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<TRes>
      get brand =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand
              .stub(_res);
}

class Query$RecentlyViewedproducts$recentlyViewedProducts$category {
  Query$RecentlyViewedproducts$recentlyViewedProducts$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$RecentlyViewedproducts$recentlyViewedProducts$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts$recentlyViewedProducts$category(
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
            is! Query$RecentlyViewedproducts$recentlyViewedProducts$category ||
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

extension UtilityExtension$Query$RecentlyViewedproducts$recentlyViewedProducts$category
    on Query$RecentlyViewedproducts$recentlyViewedProducts$category {
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<
          Query$RecentlyViewedproducts$recentlyViewedProducts$category>
      get copyWith =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<
    TRes> {
  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category(
    Query$RecentlyViewedproducts$recentlyViewedProducts$category instance,
    TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts$category)
        then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$category;

  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$category<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<
            TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$category(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts$recentlyViewedProducts$category _instance;

  final TRes Function(
      Query$RecentlyViewedproducts$recentlyViewedProducts$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts$recentlyViewedProducts$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$category<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$category<
            TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory {
  Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
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
            is! Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory ||
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

extension UtilityExtension$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory
    on Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory {
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<
          Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory>
      get copyWith =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<
    TRes> {
  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
    Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory instance,
    TRes Function(
            Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory)
        then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory;

  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<
            TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory
      _instance;

  final TRes Function(
      Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory<
            TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$subCategory(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$RecentlyViewedproducts$recentlyViewedProducts$seller {
  Query$RecentlyViewedproducts$recentlyViewedProducts$seller({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.$__typename = 'UserType',
  });

  factory Query$RecentlyViewedproducts$recentlyViewedProducts$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
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
    if (other is! Query$RecentlyViewedproducts$recentlyViewedProducts$seller ||
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

extension UtilityExtension$Query$RecentlyViewedproducts$recentlyViewedProducts$seller
    on Query$RecentlyViewedproducts$recentlyViewedProducts$seller {
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<
          Query$RecentlyViewedproducts$recentlyViewedProducts$seller>
      get copyWith =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<
    TRes> {
  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
    Query$RecentlyViewedproducts$recentlyViewedProducts$seller instance,
    TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts$seller)
        then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$seller;

  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$seller;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<
            TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts$recentlyViewedProducts$seller _instance;

  final TRes Function(
      Query$RecentlyViewedproducts$recentlyViewedProducts$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
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

class _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$seller<
            TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$seller(
      this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$RecentlyViewedproducts$recentlyViewedProducts$materials {
  Query$RecentlyViewedproducts$recentlyViewedProducts$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$RecentlyViewedproducts$recentlyViewedProducts$materials.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
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
            is! Query$RecentlyViewedproducts$recentlyViewedProducts$materials ||
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

extension UtilityExtension$Query$RecentlyViewedproducts$recentlyViewedProducts$materials
    on Query$RecentlyViewedproducts$recentlyViewedProducts$materials {
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
          Query$RecentlyViewedproducts$recentlyViewedProducts$materials>
      get copyWith =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
    TRes> {
  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
    Query$RecentlyViewedproducts$recentlyViewedProducts$materials instance,
    TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts$materials)
        then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$materials;

  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
            TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts$recentlyViewedProducts$materials _instance;

  final TRes Function(
      Query$RecentlyViewedproducts$recentlyViewedProducts$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$materials<
            TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$materials(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$RecentlyViewedproducts$recentlyViewedProducts$brand {
  Query$RecentlyViewedproducts$recentlyViewedProducts$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$RecentlyViewedproducts$recentlyViewedProducts$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
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
    if (other is! Query$RecentlyViewedproducts$recentlyViewedProducts$brand ||
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

extension UtilityExtension$Query$RecentlyViewedproducts$recentlyViewedProducts$brand
    on Query$RecentlyViewedproducts$recentlyViewedProducts$brand {
  CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<
          Query$RecentlyViewedproducts$recentlyViewedProducts$brand>
      get copyWith =>
          CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<
    TRes> {
  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
    Query$RecentlyViewedproducts$recentlyViewedProducts$brand instance,
    TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts$brand)
        then,
  ) = _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$brand;

  factory CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<
            TRes> {
  _CopyWithImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
    this._instance,
    this._then,
  );

  final Query$RecentlyViewedproducts$recentlyViewedProducts$brand _instance;

  final TRes Function(Query$RecentlyViewedproducts$recentlyViewedProducts$brand)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<
        TRes>
    implements
        CopyWith$Query$RecentlyViewedproducts$recentlyViewedProducts$brand<
            TRes> {
  _CopyWithStubImpl$Query$RecentlyViewedproducts$recentlyViewedProducts$brand(
      this._res);

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
            name: NameNode(value: 'style'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'materials'),
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
            name: NameNode(value: 'customBrand'),
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
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.style,
    this.materials,
    this.customBrand,
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
    final l$style = json['style'];
    final l$materials = json['materials'];
    final l$customBrand = json['customBrand'];
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
      price: (l$price as num?)?.toDouble(),
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
      style: l$style == null
          ? null
          : fromJson$Enum$ProductsProductStyleChoices((l$style as String)),
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserProducts$userProducts$materials.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      customBrand: (l$customBrand as String?),
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

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Enum$ProductsProductStyleChoices? style;

  final List<Query$UserProducts$userProducts$materials?>? materials;

  final String? customBrand;

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
    final l$style = style;
    _resultData['style'] = l$style == null
        ? null
        : toJson$Enum$ProductsProductStyleChoices(l$style);
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
    final l$customBrand = customBrand;
    _resultData['customBrand'] = l$customBrand;
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
    final l$style = style;
    final l$materials = materials;
    final l$customBrand = customBrand;
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
      l$style,
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$customBrand,
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
    final l$style = style;
    final lOther$style = other.style;
    if (l$style != lOther$style) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (l$customBrand != lOther$customBrand) {
      return false;
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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$UserProducts$userProducts$materials?>? materials,
    String? customBrand,
    Query$UserProducts$userProducts$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$UserProducts$userProducts$category<TRes> get category;
  CopyWith$Query$UserProducts$userProducts$subCategory<TRes> get subCategory;
  CopyWith$Query$UserProducts$userProducts$seller<TRes> get seller;
  TRes materials(
      Iterable<Query$UserProducts$userProducts$materials?>? Function(
              Iterable<
                  CopyWith$Query$UserProducts$userProducts$materials<
                      Query$UserProducts$userProducts$materials>?>?)
          _fn);
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
    Object? style = _undefined,
    Object? materials = _undefined,
    Object? customBrand = _undefined,
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
        price: price == _undefined ? _instance.price : (price as double?),
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
        style: style == _undefined
            ? _instance.style
            : (style as Enum$ProductsProductStyleChoices?),
        materials: materials == _undefined
            ? _instance.materials
            : (materials as List<Query$UserProducts$userProducts$materials?>?),
        customBrand: customBrand == _undefined
            ? _instance.customBrand
            : (customBrand as String?),
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

  TRes materials(
          Iterable<Query$UserProducts$userProducts$materials?>? Function(
                  Iterable<
                      CopyWith$Query$UserProducts$userProducts$materials<
                          Query$UserProducts$userProducts$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$UserProducts$userProducts$materials(
                  e,
                  (i) => i,
                )))?.toList());

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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$UserProducts$userProducts$materials?>? materials,
    String? customBrand,
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

  materials(_fn) => _res;

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

class Query$UserProducts$userProducts$materials {
  Query$UserProducts$userProducts$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$UserProducts$userProducts$materials.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$UserProducts$userProducts$materials(
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
    if (other is! Query$UserProducts$userProducts$materials ||
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

extension UtilityExtension$Query$UserProducts$userProducts$materials
    on Query$UserProducts$userProducts$materials {
  CopyWith$Query$UserProducts$userProducts$materials<
          Query$UserProducts$userProducts$materials>
      get copyWith => CopyWith$Query$UserProducts$userProducts$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserProducts$userProducts$materials<TRes> {
  factory CopyWith$Query$UserProducts$userProducts$materials(
    Query$UserProducts$userProducts$materials instance,
    TRes Function(Query$UserProducts$userProducts$materials) then,
  ) = _CopyWithImpl$Query$UserProducts$userProducts$materials;

  factory CopyWith$Query$UserProducts$userProducts$materials.stub(TRes res) =
      _CopyWithStubImpl$Query$UserProducts$userProducts$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserProducts$userProducts$materials<TRes>
    implements CopyWith$Query$UserProducts$userProducts$materials<TRes> {
  _CopyWithImpl$Query$UserProducts$userProducts$materials(
    this._instance,
    this._then,
  );

  final Query$UserProducts$userProducts$materials _instance;

  final TRes Function(Query$UserProducts$userProducts$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserProducts$userProducts$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserProducts$userProducts$materials<TRes>
    implements CopyWith$Query$UserProducts$userProducts$materials<TRes> {
  _CopyWithStubImpl$Query$UserProducts$userProducts$materials(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
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
    Input$ProductFiltersInput? filters,
  }) =>
      Variables$Query$AllProducts._({
        if (search != null) r'search': search,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
        if (filters != null) r'filters': filters,
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
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = l$filters == null
          ? null
          : Input$ProductFiltersInput.fromJson(
              (l$filters as Map<String, dynamic>));
    }
    return Variables$Query$AllProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Input$ProductFiltersInput? get filters =>
      (_$data['filters'] as Input$ProductFiltersInput?);

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
    if (_$data.containsKey('filters')) {
      final l$filters = filters;
      result$data['filters'] = l$filters?.toJson();
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
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (_$data.containsKey('filters') != other._$data.containsKey('filters')) {
      return false;
    }
    if (l$filters != lOther$filters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    final l$filters = filters;
    return Object.hashAll([
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
      _$data.containsKey('filters') ? l$filters : const {},
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
    Input$ProductFiltersInput? filters,
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
    Object? filters = _undefined,
  }) =>
      _then(Variables$Query$AllProducts._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
        if (filters != _undefined)
          'filters': (filters as Input$ProductFiltersInput?),
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
    Input$ProductFiltersInput? filters,
  }) =>
      _res;
}

class Query$AllProducts {
  Query$AllProducts({
    this.allProducts,
    this.allProductsTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$AllProducts.fromJson(Map<String, dynamic> json) {
    final l$allProducts = json['allProducts'];
    final l$allProductsTotalNumber = json['allProductsTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts(
      allProducts: (l$allProducts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllProducts$allProducts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      allProductsTotalNumber: (l$allProductsTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AllProducts$allProducts?>? allProducts;

  final int? allProductsTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allProducts = allProducts;
    _resultData['allProducts'] =
        l$allProducts?.map((e) => e?.toJson()).toList();
    final l$allProductsTotalNumber = allProductsTotalNumber;
    _resultData['allProductsTotalNumber'] = l$allProductsTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allProducts = allProducts;
    final l$allProductsTotalNumber = allProductsTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allProducts == null
          ? null
          : Object.hashAll(l$allProducts.map((v) => v)),
      l$allProductsTotalNumber,
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
    final l$allProductsTotalNumber = allProductsTotalNumber;
    final lOther$allProductsTotalNumber = other.allProductsTotalNumber;
    if (l$allProductsTotalNumber != lOther$allProductsTotalNumber) {
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
    int? allProductsTotalNumber,
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
    Object? allProductsTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts(
        allProducts: allProducts == _undefined
            ? _instance.allProducts
            : (allProducts as List<Query$AllProducts$allProducts?>?),
        allProductsTotalNumber: allProductsTotalNumber == _undefined
            ? _instance.allProductsTotalNumber
            : (allProductsTotalNumber as int?),
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
    int? allProductsTotalNumber,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filters')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductFiltersInput'),
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
          ArgumentNode(
            name: NameNode(value: 'filters'),
            value: VariableNode(name: NameNode(value: 'filters')),
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
            name: NameNode(value: 'style'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'materials'),
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
            name: NameNode(value: 'customBrand'),
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
        name: NameNode(value: 'allProductsTotalNumber'),
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
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.style,
    this.materials,
    this.customBrand,
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
    final l$style = json['style'];
    final l$materials = json['materials'];
    final l$customBrand = json['customBrand'];
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
      price: (l$price as num?)?.toDouble(),
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
      style: l$style == null
          ? null
          : fromJson$Enum$ProductsProductStyleChoices((l$style as String)),
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllProducts$allProducts$materials.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      customBrand: (l$customBrand as String?),
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

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Enum$ProductsProductStyleChoices? style;

  final List<Query$AllProducts$allProducts$materials?>? materials;

  final String? customBrand;

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
    final l$style = style;
    _resultData['style'] = l$style == null
        ? null
        : toJson$Enum$ProductsProductStyleChoices(l$style);
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
    final l$customBrand = customBrand;
    _resultData['customBrand'] = l$customBrand;
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
    final l$style = style;
    final l$materials = materials;
    final l$customBrand = customBrand;
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
      l$style,
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$customBrand,
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
    final l$style = style;
    final lOther$style = other.style;
    if (l$style != lOther$style) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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
    final l$customBrand = customBrand;
    final lOther$customBrand = other.customBrand;
    if (l$customBrand != lOther$customBrand) {
      return false;
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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$AllProducts$allProducts$materials?>? materials,
    String? customBrand,
    Query$AllProducts$allProducts$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$AllProducts$allProducts$category<TRes> get category;
  CopyWith$Query$AllProducts$allProducts$subCategory<TRes> get subCategory;
  CopyWith$Query$AllProducts$allProducts$seller<TRes> get seller;
  TRes materials(
      Iterable<Query$AllProducts$allProducts$materials?>? Function(
              Iterable<
                  CopyWith$Query$AllProducts$allProducts$materials<
                      Query$AllProducts$allProducts$materials>?>?)
          _fn);
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
    Object? style = _undefined,
    Object? materials = _undefined,
    Object? customBrand = _undefined,
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
        price: price == _undefined ? _instance.price : (price as double?),
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
        style: style == _undefined
            ? _instance.style
            : (style as Enum$ProductsProductStyleChoices?),
        materials: materials == _undefined
            ? _instance.materials
            : (materials as List<Query$AllProducts$allProducts$materials?>?),
        customBrand: customBrand == _undefined
            ? _instance.customBrand
            : (customBrand as String?),
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

  TRes materials(
          Iterable<Query$AllProducts$allProducts$materials?>? Function(
                  Iterable<
                      CopyWith$Query$AllProducts$allProducts$materials<
                          Query$AllProducts$allProducts$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$AllProducts$allProducts$materials(
                  e,
                  (i) => i,
                )))?.toList());

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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$AllProducts$allProducts$materials?>? materials,
    String? customBrand,
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

  materials(_fn) => _res;

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
    this.profilePictureUrl,
    this.$__typename = 'UserType',
  });

  factory Query$AllProducts$allProducts$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$seller(
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
    String? profilePictureUrl,
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
    Object? profilePictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$seller(
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

class _CopyWithStubImpl$Query$AllProducts$allProducts$seller<TRes>
    implements CopyWith$Query$AllProducts$allProducts$seller<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$seller(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllProducts$allProducts$materials {
  Query$AllProducts$allProducts$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$AllProducts$allProducts$materials.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$allProducts$materials(
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
    if (other is! Query$AllProducts$allProducts$materials ||
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

extension UtilityExtension$Query$AllProducts$allProducts$materials
    on Query$AllProducts$allProducts$materials {
  CopyWith$Query$AllProducts$allProducts$materials<
          Query$AllProducts$allProducts$materials>
      get copyWith => CopyWith$Query$AllProducts$allProducts$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllProducts$allProducts$materials<TRes> {
  factory CopyWith$Query$AllProducts$allProducts$materials(
    Query$AllProducts$allProducts$materials instance,
    TRes Function(Query$AllProducts$allProducts$materials) then,
  ) = _CopyWithImpl$Query$AllProducts$allProducts$materials;

  factory CopyWith$Query$AllProducts$allProducts$materials.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$allProducts$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$allProducts$materials<TRes>
    implements CopyWith$Query$AllProducts$allProducts$materials<TRes> {
  _CopyWithImpl$Query$AllProducts$allProducts$materials(
    this._instance,
    this._then,
  );

  final Query$AllProducts$allProducts$materials _instance;

  final TRes Function(Query$AllProducts$allProducts$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllProducts$allProducts$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllProducts$allProducts$materials<TRes>
    implements CopyWith$Query$AllProducts$allProducts$materials<TRes> {
  _CopyWithStubImpl$Query$AllProducts$allProducts$materials(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
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
                name: NameNode(value: 'style'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'materials'),
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
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    this.userLiked,
    required this.color,
    this.style,
    this.materials,
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
    final l$style = json['style'];
    final l$materials = json['materials'];
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
      price: (l$price as num?)?.toDouble(),
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
      style: l$style == null
          ? null
          : fromJson$Enum$ProductsProductStyleChoices((l$style as String)),
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$likedProducts$likedProducts$product$materials.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
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

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final bool? userLiked;

  final List<String> color;

  final Enum$ProductsProductStyleChoices? style;

  final List<Query$likedProducts$likedProducts$product$materials?>? materials;

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
    final l$style = style;
    _resultData['style'] = l$style == null
        ? null
        : toJson$Enum$ProductsProductStyleChoices(l$style);
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
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
    final l$style = style;
    final l$materials = materials;
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
      l$style,
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
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
    final l$style = style;
    final lOther$style = other.style;
    if (l$style != lOther$style) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? userLiked,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$likedProducts$likedProducts$product$materials?>? materials,
    Query$likedProducts$likedProducts$product$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$likedProducts$likedProducts$product$category<TRes>
      get category;
  CopyWith$Query$likedProducts$likedProducts$product$subCategory<TRes>
      get subCategory;
  CopyWith$Query$likedProducts$likedProducts$product$seller<TRes> get seller;
  TRes materials(
      Iterable<Query$likedProducts$likedProducts$product$materials?>? Function(
              Iterable<
                  CopyWith$Query$likedProducts$likedProducts$product$materials<
                      Query$likedProducts$likedProducts$product$materials>?>?)
          _fn);
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
    Object? style = _undefined,
    Object? materials = _undefined,
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
        price: price == _undefined ? _instance.price : (price as double?),
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
        style: style == _undefined
            ? _instance.style
            : (style as Enum$ProductsProductStyleChoices?),
        materials: materials == _undefined
            ? _instance.materials
            : (materials
                as List<Query$likedProducts$likedProducts$product$materials?>?),
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

  TRes materials(
          Iterable<Query$likedProducts$likedProducts$product$materials?>? Function(
                  Iterable<
                      CopyWith$Query$likedProducts$likedProducts$product$materials<
                          Query$likedProducts$likedProducts$product$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$likedProducts$likedProducts$product$materials(
                  e,
                  (i) => i,
                )))?.toList());

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
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? userLiked,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$likedProducts$likedProducts$product$materials?>? materials,
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

  materials(_fn) => _res;

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

class Query$likedProducts$likedProducts$product$materials {
  Query$likedProducts$likedProducts$product$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$likedProducts$likedProducts$product$materials.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$likedProducts$likedProducts$product$materials(
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
    if (other is! Query$likedProducts$likedProducts$product$materials ||
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

extension UtilityExtension$Query$likedProducts$likedProducts$product$materials
    on Query$likedProducts$likedProducts$product$materials {
  CopyWith$Query$likedProducts$likedProducts$product$materials<
          Query$likedProducts$likedProducts$product$materials>
      get copyWith =>
          CopyWith$Query$likedProducts$likedProducts$product$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$likedProducts$likedProducts$product$materials<
    TRes> {
  factory CopyWith$Query$likedProducts$likedProducts$product$materials(
    Query$likedProducts$likedProducts$product$materials instance,
    TRes Function(Query$likedProducts$likedProducts$product$materials) then,
  ) = _CopyWithImpl$Query$likedProducts$likedProducts$product$materials;

  factory CopyWith$Query$likedProducts$likedProducts$product$materials.stub(
          TRes res) =
      _CopyWithStubImpl$Query$likedProducts$likedProducts$product$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$likedProducts$likedProducts$product$materials<TRes>
    implements
        CopyWith$Query$likedProducts$likedProducts$product$materials<TRes> {
  _CopyWithImpl$Query$likedProducts$likedProducts$product$materials(
    this._instance,
    this._then,
  );

  final Query$likedProducts$likedProducts$product$materials _instance;

  final TRes Function(Query$likedProducts$likedProducts$product$materials)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$likedProducts$likedProducts$product$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$likedProducts$likedProducts$product$materials<
        TRes>
    implements
        CopyWith$Query$likedProducts$likedProducts$product$materials<TRes> {
  _CopyWithStubImpl$Query$likedProducts$likedProducts$product$materials(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
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

class Variables$Query$Materials {
  factory Variables$Query$Materials({
    String? search,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$Materials._({
        if (search != null) r'search': search,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$Materials._(this._$data);

  factory Variables$Query$Materials.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$Materials._(result$data);
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

  CopyWith$Variables$Query$Materials<Variables$Query$Materials> get copyWith =>
      CopyWith$Variables$Query$Materials(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Materials ||
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

abstract class CopyWith$Variables$Query$Materials<TRes> {
  factory CopyWith$Variables$Query$Materials(
    Variables$Query$Materials instance,
    TRes Function(Variables$Query$Materials) then,
  ) = _CopyWithImpl$Variables$Query$Materials;

  factory CopyWith$Variables$Query$Materials.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Materials;

  TRes call({
    String? search,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$Materials<TRes>
    implements CopyWith$Variables$Query$Materials<TRes> {
  _CopyWithImpl$Variables$Query$Materials(
    this._instance,
    this._then,
  );

  final Variables$Query$Materials _instance;

  final TRes Function(Variables$Query$Materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$Materials._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Materials<TRes>
    implements CopyWith$Variables$Query$Materials<TRes> {
  _CopyWithStubImpl$Variables$Query$Materials(this._res);

  TRes _res;

  call({
    String? search,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$Materials {
  Query$Materials({
    this.materials,
    this.materialsTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$Materials.fromJson(Map<String, dynamic> json) {
    final l$materials = json['materials'];
    final l$materialsTotalNumber = json['materialsTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$Materials(
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Materials$materials.fromJson((e as Map<String, dynamic>)))
          .toList(),
      materialsTotalNumber: (l$materialsTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Materials$materials?>? materials;

  final int? materialsTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
    final l$materialsTotalNumber = materialsTotalNumber;
    _resultData['materialsTotalNumber'] = l$materialsTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$materials = materials;
    final l$materialsTotalNumber = materialsTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$materialsTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Materials || runtimeType != other.runtimeType) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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
    final l$materialsTotalNumber = materialsTotalNumber;
    final lOther$materialsTotalNumber = other.materialsTotalNumber;
    if (l$materialsTotalNumber != lOther$materialsTotalNumber) {
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

extension UtilityExtension$Query$Materials on Query$Materials {
  CopyWith$Query$Materials<Query$Materials> get copyWith =>
      CopyWith$Query$Materials(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Materials<TRes> {
  factory CopyWith$Query$Materials(
    Query$Materials instance,
    TRes Function(Query$Materials) then,
  ) = _CopyWithImpl$Query$Materials;

  factory CopyWith$Query$Materials.stub(TRes res) =
      _CopyWithStubImpl$Query$Materials;

  TRes call({
    List<Query$Materials$materials?>? materials,
    int? materialsTotalNumber,
    String? $__typename,
  });
  TRes materials(
      Iterable<Query$Materials$materials?>? Function(
              Iterable<
                  CopyWith$Query$Materials$materials<
                      Query$Materials$materials>?>?)
          _fn);
}

class _CopyWithImpl$Query$Materials<TRes>
    implements CopyWith$Query$Materials<TRes> {
  _CopyWithImpl$Query$Materials(
    this._instance,
    this._then,
  );

  final Query$Materials _instance;

  final TRes Function(Query$Materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? materials = _undefined,
    Object? materialsTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Materials(
        materials: materials == _undefined
            ? _instance.materials
            : (materials as List<Query$Materials$materials?>?),
        materialsTotalNumber: materialsTotalNumber == _undefined
            ? _instance.materialsTotalNumber
            : (materialsTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes materials(
          Iterable<Query$Materials$materials?>? Function(
                  Iterable<
                      CopyWith$Query$Materials$materials<
                          Query$Materials$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$Materials$materials(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Materials<TRes>
    implements CopyWith$Query$Materials<TRes> {
  _CopyWithStubImpl$Query$Materials(this._res);

  TRes _res;

  call({
    List<Query$Materials$materials?>? materials,
    int? materialsTotalNumber,
    String? $__typename,
  }) =>
      _res;

  materials(_fn) => _res;
}

const documentNodeQueryMaterials = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Materials'),
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
        name: NameNode(value: 'materials'),
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
        name: NameNode(value: 'materialsTotalNumber'),
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
Query$Materials _parserFn$Query$Materials(Map<String, dynamic> data) =>
    Query$Materials.fromJson(data);
typedef OnQueryComplete$Query$Materials = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Materials?,
);

class Options$Query$Materials extends graphql.QueryOptions<Query$Materials> {
  Options$Query$Materials({
    String? operationName,
    Variables$Query$Materials? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Materials? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Materials? onComplete,
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
                    data == null ? null : _parserFn$Query$Materials(data),
                  ),
          onError: onError,
          document: documentNodeQueryMaterials,
          parserFn: _parserFn$Query$Materials,
        );

  final OnQueryComplete$Query$Materials? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Materials
    extends graphql.WatchQueryOptions<Query$Materials> {
  WatchOptions$Query$Materials({
    String? operationName,
    Variables$Query$Materials? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Materials? typedOptimisticResult,
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
          document: documentNodeQueryMaterials,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Materials,
        );
}

class FetchMoreOptions$Query$Materials extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Materials({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Materials? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMaterials,
        );
}

extension ClientExtension$Query$Materials on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Materials>> query$Materials(
          [Options$Query$Materials? options]) async =>
      await this.query(options ?? Options$Query$Materials());
  graphql.ObservableQuery<Query$Materials> watchQuery$Materials(
          [WatchOptions$Query$Materials? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Materials());
  void writeQuery$Materials({
    required Query$Materials data,
    Variables$Query$Materials? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMaterials),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Materials? readQuery$Materials({
    Variables$Query$Materials? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMaterials),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Materials.fromJson(result);
  }
}

class Query$Materials$materials {
  Query$Materials$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$Materials$materials.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Materials$materials(
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
    if (other is! Query$Materials$materials ||
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

extension UtilityExtension$Query$Materials$materials
    on Query$Materials$materials {
  CopyWith$Query$Materials$materials<Query$Materials$materials> get copyWith =>
      CopyWith$Query$Materials$materials(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Materials$materials<TRes> {
  factory CopyWith$Query$Materials$materials(
    Query$Materials$materials instance,
    TRes Function(Query$Materials$materials) then,
  ) = _CopyWithImpl$Query$Materials$materials;

  factory CopyWith$Query$Materials$materials.stub(TRes res) =
      _CopyWithStubImpl$Query$Materials$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Materials$materials<TRes>
    implements CopyWith$Query$Materials$materials<TRes> {
  _CopyWithImpl$Query$Materials$materials(
    this._instance,
    this._then,
  );

  final Query$Materials$materials _instance;

  final TRes Function(Query$Materials$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Materials$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Materials$materials<TRes>
    implements CopyWith$Query$Materials$materials<TRes> {
  _CopyWithStubImpl$Query$Materials$materials(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SimilarProducts {
  factory Variables$Query$SimilarProducts({
    int? productId,
    int? categoryId,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$SimilarProducts._({
        if (productId != null) r'productId': productId,
        if (categoryId != null) r'categoryId': categoryId,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$SimilarProducts._(this._$data);

  factory Variables$Query$SimilarProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('productId')) {
      final l$productId = data['productId'];
      result$data['productId'] = (l$productId as int?);
    }
    if (data.containsKey('categoryId')) {
      final l$categoryId = data['categoryId'];
      result$data['categoryId'] = (l$categoryId as int?);
    }
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$SimilarProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get productId => (_$data['productId'] as int?);

  int? get categoryId => (_$data['categoryId'] as int?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('productId')) {
      final l$productId = productId;
      result$data['productId'] = l$productId;
    }
    if (_$data.containsKey('categoryId')) {
      final l$categoryId = categoryId;
      result$data['categoryId'] = l$categoryId;
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

  CopyWith$Variables$Query$SimilarProducts<Variables$Query$SimilarProducts>
      get copyWith => CopyWith$Variables$Query$SimilarProducts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SimilarProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (_$data.containsKey('productId') !=
        other._$data.containsKey('productId')) {
      return false;
    }
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (_$data.containsKey('categoryId') !=
        other._$data.containsKey('categoryId')) {
      return false;
    }
    if (l$categoryId != lOther$categoryId) {
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
    final l$productId = productId;
    final l$categoryId = categoryId;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      _$data.containsKey('productId') ? l$productId : const {},
      _$data.containsKey('categoryId') ? l$categoryId : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SimilarProducts<TRes> {
  factory CopyWith$Variables$Query$SimilarProducts(
    Variables$Query$SimilarProducts instance,
    TRes Function(Variables$Query$SimilarProducts) then,
  ) = _CopyWithImpl$Variables$Query$SimilarProducts;

  factory CopyWith$Variables$Query$SimilarProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SimilarProducts;

  TRes call({
    int? productId,
    int? categoryId,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$SimilarProducts<TRes>
    implements CopyWith$Variables$Query$SimilarProducts<TRes> {
  _CopyWithImpl$Variables$Query$SimilarProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$SimilarProducts _instance;

  final TRes Function(Variables$Query$SimilarProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? categoryId = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$SimilarProducts._({
        ..._instance._$data,
        if (productId != _undefined) 'productId': (productId as int?),
        if (categoryId != _undefined) 'categoryId': (categoryId as int?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SimilarProducts<TRes>
    implements CopyWith$Variables$Query$SimilarProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$SimilarProducts(this._res);

  TRes _res;

  call({
    int? productId,
    int? categoryId,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$SimilarProducts {
  Query$SimilarProducts({
    this.similarProducts,
    this.$__typename = 'Query',
  });

  factory Query$SimilarProducts.fromJson(Map<String, dynamic> json) {
    final l$similarProducts = json['similarProducts'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts(
      similarProducts: (l$similarProducts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SimilarProducts$similarProducts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SimilarProducts$similarProducts?>? similarProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$similarProducts = similarProducts;
    _resultData['similarProducts'] =
        l$similarProducts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$similarProducts = similarProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$similarProducts == null
          ? null
          : Object.hashAll(l$similarProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SimilarProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$similarProducts = similarProducts;
    final lOther$similarProducts = other.similarProducts;
    if (l$similarProducts != null && lOther$similarProducts != null) {
      if (l$similarProducts.length != lOther$similarProducts.length) {
        return false;
      }
      for (int i = 0; i < l$similarProducts.length; i++) {
        final l$similarProducts$entry = l$similarProducts[i];
        final lOther$similarProducts$entry = lOther$similarProducts[i];
        if (l$similarProducts$entry != lOther$similarProducts$entry) {
          return false;
        }
      }
    } else if (l$similarProducts != lOther$similarProducts) {
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

extension UtilityExtension$Query$SimilarProducts on Query$SimilarProducts {
  CopyWith$Query$SimilarProducts<Query$SimilarProducts> get copyWith =>
      CopyWith$Query$SimilarProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SimilarProducts<TRes> {
  factory CopyWith$Query$SimilarProducts(
    Query$SimilarProducts instance,
    TRes Function(Query$SimilarProducts) then,
  ) = _CopyWithImpl$Query$SimilarProducts;

  factory CopyWith$Query$SimilarProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts;

  TRes call({
    List<Query$SimilarProducts$similarProducts?>? similarProducts,
    String? $__typename,
  });
  TRes similarProducts(
      Iterable<Query$SimilarProducts$similarProducts?>? Function(
              Iterable<
                  CopyWith$Query$SimilarProducts$similarProducts<
                      Query$SimilarProducts$similarProducts>?>?)
          _fn);
}

class _CopyWithImpl$Query$SimilarProducts<TRes>
    implements CopyWith$Query$SimilarProducts<TRes> {
  _CopyWithImpl$Query$SimilarProducts(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts _instance;

  final TRes Function(Query$SimilarProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? similarProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts(
        similarProducts: similarProducts == _undefined
            ? _instance.similarProducts
            : (similarProducts
                as List<Query$SimilarProducts$similarProducts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes similarProducts(
          Iterable<Query$SimilarProducts$similarProducts?>? Function(
                  Iterable<
                      CopyWith$Query$SimilarProducts$similarProducts<
                          Query$SimilarProducts$similarProducts>?>?)
              _fn) =>
      call(
          similarProducts: _fn(_instance.similarProducts?.map((e) => e == null
              ? null
              : CopyWith$Query$SimilarProducts$similarProducts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SimilarProducts<TRes>
    implements CopyWith$Query$SimilarProducts<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts(this._res);

  TRes _res;

  call({
    List<Query$SimilarProducts$similarProducts?>? similarProducts,
    String? $__typename,
  }) =>
      _res;

  similarProducts(_fn) => _res;
}

const documentNodeQuerySimilarProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SimilarProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'categoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        name: NameNode(value: 'similarProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'productId'),
            value: VariableNode(name: NameNode(value: 'productId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'categoryId'),
            value: VariableNode(name: NameNode(value: 'categoryId')),
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
            name: NameNode(value: 'style'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'materials'),
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
Query$SimilarProducts _parserFn$Query$SimilarProducts(
        Map<String, dynamic> data) =>
    Query$SimilarProducts.fromJson(data);
typedef OnQueryComplete$Query$SimilarProducts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SimilarProducts?,
);

class Options$Query$SimilarProducts
    extends graphql.QueryOptions<Query$SimilarProducts> {
  Options$Query$SimilarProducts({
    String? operationName,
    Variables$Query$SimilarProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SimilarProducts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SimilarProducts? onComplete,
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
                    data == null ? null : _parserFn$Query$SimilarProducts(data),
                  ),
          onError: onError,
          document: documentNodeQuerySimilarProducts,
          parserFn: _parserFn$Query$SimilarProducts,
        );

  final OnQueryComplete$Query$SimilarProducts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SimilarProducts
    extends graphql.WatchQueryOptions<Query$SimilarProducts> {
  WatchOptions$Query$SimilarProducts({
    String? operationName,
    Variables$Query$SimilarProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SimilarProducts? typedOptimisticResult,
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
          document: documentNodeQuerySimilarProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SimilarProducts,
        );
}

class FetchMoreOptions$Query$SimilarProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SimilarProducts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SimilarProducts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySimilarProducts,
        );
}

extension ClientExtension$Query$SimilarProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SimilarProducts>> query$SimilarProducts(
          [Options$Query$SimilarProducts? options]) async =>
      await this.query(options ?? Options$Query$SimilarProducts());
  graphql.ObservableQuery<Query$SimilarProducts> watchQuery$SimilarProducts(
          [WatchOptions$Query$SimilarProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SimilarProducts());
  void writeQuery$SimilarProducts({
    required Query$SimilarProducts data,
    Variables$Query$SimilarProducts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySimilarProducts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SimilarProducts? readQuery$SimilarProducts({
    Variables$Query$SimilarProducts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerySimilarProducts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SimilarProducts.fromJson(result);
  }
}

class Query$SimilarProducts$similarProducts {
  Query$SimilarProducts$similarProducts({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.style,
    this.materials,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$SimilarProducts$similarProducts.fromJson(
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
    final l$userLiked = json['userLiked'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$color = json['color'];
    final l$style = json['style'];
    final l$materials = json['materials'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts$similarProducts(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$SimilarProducts$similarProducts$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$SimilarProducts$similarProducts$subCategory.fromJson(
              (l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$SimilarProducts$similarProducts$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as num?)?.toDouble(),
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
      style: l$style == null
          ? null
          : fromJson$Enum$ProductsProductStyleChoices((l$style as String)),
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SimilarProducts$similarProducts$materials.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      brand: l$brand == null
          ? null
          : Query$SimilarProducts$similarProducts$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$SimilarProducts$similarProducts$category? category;

  final Query$SimilarProducts$similarProducts$subCategory? subCategory;

  final Query$SimilarProducts$similarProducts$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final Enum$ProductsProductStyleChoices? style;

  final List<Query$SimilarProducts$similarProducts$materials?>? materials;

  final Query$SimilarProducts$similarProducts$brand? brand;

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
    final l$style = style;
    _resultData['style'] = l$style == null
        ? null
        : toJson$Enum$ProductsProductStyleChoices(l$style);
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
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
    final l$style = style;
    final l$materials = materials;
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
      l$style,
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SimilarProducts$similarProducts ||
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
    final l$style = style;
    final lOther$style = other.style;
    if (l$style != lOther$style) {
      return false;
    }
    final l$materials = materials;
    final lOther$materials = other.materials;
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

extension UtilityExtension$Query$SimilarProducts$similarProducts
    on Query$SimilarProducts$similarProducts {
  CopyWith$Query$SimilarProducts$similarProducts<
          Query$SimilarProducts$similarProducts>
      get copyWith => CopyWith$Query$SimilarProducts$similarProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SimilarProducts$similarProducts<TRes> {
  factory CopyWith$Query$SimilarProducts$similarProducts(
    Query$SimilarProducts$similarProducts instance,
    TRes Function(Query$SimilarProducts$similarProducts) then,
  ) = _CopyWithImpl$Query$SimilarProducts$similarProducts;

  factory CopyWith$Query$SimilarProducts$similarProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts$similarProducts;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$SimilarProducts$similarProducts$category? category,
    Query$SimilarProducts$similarProducts$subCategory? subCategory,
    Query$SimilarProducts$similarProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$SimilarProducts$similarProducts$materials?>? materials,
    Query$SimilarProducts$similarProducts$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$SimilarProducts$similarProducts$category<TRes> get category;
  CopyWith$Query$SimilarProducts$similarProducts$subCategory<TRes>
      get subCategory;
  CopyWith$Query$SimilarProducts$similarProducts$seller<TRes> get seller;
  TRes materials(
      Iterable<Query$SimilarProducts$similarProducts$materials?>? Function(
              Iterable<
                  CopyWith$Query$SimilarProducts$similarProducts$materials<
                      Query$SimilarProducts$similarProducts$materials>?>?)
          _fn);
  CopyWith$Query$SimilarProducts$similarProducts$brand<TRes> get brand;
}

class _CopyWithImpl$Query$SimilarProducts$similarProducts<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts<TRes> {
  _CopyWithImpl$Query$SimilarProducts$similarProducts(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts$similarProducts _instance;

  final TRes Function(Query$SimilarProducts$similarProducts) _then;

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
    Object? style = _undefined,
    Object? materials = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts$similarProducts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category as Query$SimilarProducts$similarProducts$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory
                as Query$SimilarProducts$similarProducts$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller as Query$SimilarProducts$similarProducts$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined ? _instance.price : (price as double?),
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
        style: style == _undefined
            ? _instance.style
            : (style as Enum$ProductsProductStyleChoices?),
        materials: materials == _undefined
            ? _instance.materials
            : (materials
                as List<Query$SimilarProducts$similarProducts$materials?>?),
        brand: brand == _undefined
            ? _instance.brand
            : (brand as Query$SimilarProducts$similarProducts$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SimilarProducts$similarProducts$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$SimilarProducts$similarProducts$category.stub(
            _then(_instance))
        : CopyWith$Query$SimilarProducts$similarProducts$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$SimilarProducts$similarProducts$subCategory<TRes>
      get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$SimilarProducts$similarProducts$subCategory.stub(
            _then(_instance))
        : CopyWith$Query$SimilarProducts$similarProducts$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$SimilarProducts$similarProducts$seller<TRes> get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$SimilarProducts$similarProducts$seller.stub(
            _then(_instance))
        : CopyWith$Query$SimilarProducts$similarProducts$seller(
            local$seller, (e) => call(seller: e));
  }

  TRes materials(
          Iterable<Query$SimilarProducts$similarProducts$materials?>? Function(
                  Iterable<
                      CopyWith$Query$SimilarProducts$similarProducts$materials<
                          Query$SimilarProducts$similarProducts$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$SimilarProducts$similarProducts$materials(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$SimilarProducts$similarProducts$brand<TRes> get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$SimilarProducts$similarProducts$brand.stub(
            _then(_instance))
        : CopyWith$Query$SimilarProducts$similarProducts$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$SimilarProducts$similarProducts<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts$similarProducts(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$SimilarProducts$similarProducts$category? category,
    Query$SimilarProducts$similarProducts$subCategory? subCategory,
    Query$SimilarProducts$similarProducts$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    Enum$ProductsProductStyleChoices? style,
    List<Query$SimilarProducts$similarProducts$materials?>? materials,
    Query$SimilarProducts$similarProducts$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SimilarProducts$similarProducts$category<TRes> get category =>
      CopyWith$Query$SimilarProducts$similarProducts$category.stub(_res);

  CopyWith$Query$SimilarProducts$similarProducts$subCategory<TRes>
      get subCategory =>
          CopyWith$Query$SimilarProducts$similarProducts$subCategory.stub(_res);

  CopyWith$Query$SimilarProducts$similarProducts$seller<TRes> get seller =>
      CopyWith$Query$SimilarProducts$similarProducts$seller.stub(_res);

  materials(_fn) => _res;

  CopyWith$Query$SimilarProducts$similarProducts$brand<TRes> get brand =>
      CopyWith$Query$SimilarProducts$similarProducts$brand.stub(_res);
}

class Query$SimilarProducts$similarProducts$category {
  Query$SimilarProducts$similarProducts$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$SimilarProducts$similarProducts$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts$similarProducts$category(
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
    if (other is! Query$SimilarProducts$similarProducts$category ||
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

extension UtilityExtension$Query$SimilarProducts$similarProducts$category
    on Query$SimilarProducts$similarProducts$category {
  CopyWith$Query$SimilarProducts$similarProducts$category<
          Query$SimilarProducts$similarProducts$category>
      get copyWith => CopyWith$Query$SimilarProducts$similarProducts$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SimilarProducts$similarProducts$category<TRes> {
  factory CopyWith$Query$SimilarProducts$similarProducts$category(
    Query$SimilarProducts$similarProducts$category instance,
    TRes Function(Query$SimilarProducts$similarProducts$category) then,
  ) = _CopyWithImpl$Query$SimilarProducts$similarProducts$category;

  factory CopyWith$Query$SimilarProducts$similarProducts$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts$similarProducts$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SimilarProducts$similarProducts$category<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$category<TRes> {
  _CopyWithImpl$Query$SimilarProducts$similarProducts$category(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts$similarProducts$category _instance;

  final TRes Function(Query$SimilarProducts$similarProducts$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts$similarProducts$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SimilarProducts$similarProducts$category<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$category<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts$similarProducts$category(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SimilarProducts$similarProducts$subCategory {
  Query$SimilarProducts$similarProducts$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$SimilarProducts$similarProducts$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts$similarProducts$subCategory(
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
    if (other is! Query$SimilarProducts$similarProducts$subCategory ||
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

extension UtilityExtension$Query$SimilarProducts$similarProducts$subCategory
    on Query$SimilarProducts$similarProducts$subCategory {
  CopyWith$Query$SimilarProducts$similarProducts$subCategory<
          Query$SimilarProducts$similarProducts$subCategory>
      get copyWith =>
          CopyWith$Query$SimilarProducts$similarProducts$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SimilarProducts$similarProducts$subCategory<
    TRes> {
  factory CopyWith$Query$SimilarProducts$similarProducts$subCategory(
    Query$SimilarProducts$similarProducts$subCategory instance,
    TRes Function(Query$SimilarProducts$similarProducts$subCategory) then,
  ) = _CopyWithImpl$Query$SimilarProducts$similarProducts$subCategory;

  factory CopyWith$Query$SimilarProducts$similarProducts$subCategory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts$similarProducts$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SimilarProducts$similarProducts$subCategory<TRes>
    implements
        CopyWith$Query$SimilarProducts$similarProducts$subCategory<TRes> {
  _CopyWithImpl$Query$SimilarProducts$similarProducts$subCategory(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts$similarProducts$subCategory _instance;

  final TRes Function(Query$SimilarProducts$similarProducts$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts$similarProducts$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SimilarProducts$similarProducts$subCategory<TRes>
    implements
        CopyWith$Query$SimilarProducts$similarProducts$subCategory<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts$similarProducts$subCategory(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SimilarProducts$similarProducts$seller {
  Query$SimilarProducts$similarProducts$seller({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$SimilarProducts$similarProducts$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts$similarProducts$seller(
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
    if (other is! Query$SimilarProducts$similarProducts$seller ||
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

extension UtilityExtension$Query$SimilarProducts$similarProducts$seller
    on Query$SimilarProducts$similarProducts$seller {
  CopyWith$Query$SimilarProducts$similarProducts$seller<
          Query$SimilarProducts$similarProducts$seller>
      get copyWith => CopyWith$Query$SimilarProducts$similarProducts$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SimilarProducts$similarProducts$seller<TRes> {
  factory CopyWith$Query$SimilarProducts$similarProducts$seller(
    Query$SimilarProducts$similarProducts$seller instance,
    TRes Function(Query$SimilarProducts$similarProducts$seller) then,
  ) = _CopyWithImpl$Query$SimilarProducts$similarProducts$seller;

  factory CopyWith$Query$SimilarProducts$similarProducts$seller.stub(TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts$similarProducts$seller;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SimilarProducts$similarProducts$seller<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$seller<TRes> {
  _CopyWithImpl$Query$SimilarProducts$similarProducts$seller(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts$similarProducts$seller _instance;

  final TRes Function(Query$SimilarProducts$similarProducts$seller) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts$similarProducts$seller(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SimilarProducts$similarProducts$seller<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$seller<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts$similarProducts$seller(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Query$SimilarProducts$similarProducts$materials {
  Query$SimilarProducts$similarProducts$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$SimilarProducts$similarProducts$materials.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts$similarProducts$materials(
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
    if (other is! Query$SimilarProducts$similarProducts$materials ||
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

extension UtilityExtension$Query$SimilarProducts$similarProducts$materials
    on Query$SimilarProducts$similarProducts$materials {
  CopyWith$Query$SimilarProducts$similarProducts$materials<
          Query$SimilarProducts$similarProducts$materials>
      get copyWith => CopyWith$Query$SimilarProducts$similarProducts$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SimilarProducts$similarProducts$materials<TRes> {
  factory CopyWith$Query$SimilarProducts$similarProducts$materials(
    Query$SimilarProducts$similarProducts$materials instance,
    TRes Function(Query$SimilarProducts$similarProducts$materials) then,
  ) = _CopyWithImpl$Query$SimilarProducts$similarProducts$materials;

  factory CopyWith$Query$SimilarProducts$similarProducts$materials.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts$similarProducts$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SimilarProducts$similarProducts$materials<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$materials<TRes> {
  _CopyWithImpl$Query$SimilarProducts$similarProducts$materials(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts$similarProducts$materials _instance;

  final TRes Function(Query$SimilarProducts$similarProducts$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts$similarProducts$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SimilarProducts$similarProducts$materials<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$materials<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts$similarProducts$materials(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SimilarProducts$similarProducts$brand {
  Query$SimilarProducts$similarProducts$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$SimilarProducts$similarProducts$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SimilarProducts$similarProducts$brand(
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
    if (other is! Query$SimilarProducts$similarProducts$brand ||
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

extension UtilityExtension$Query$SimilarProducts$similarProducts$brand
    on Query$SimilarProducts$similarProducts$brand {
  CopyWith$Query$SimilarProducts$similarProducts$brand<
          Query$SimilarProducts$similarProducts$brand>
      get copyWith => CopyWith$Query$SimilarProducts$similarProducts$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SimilarProducts$similarProducts$brand<TRes> {
  factory CopyWith$Query$SimilarProducts$similarProducts$brand(
    Query$SimilarProducts$similarProducts$brand instance,
    TRes Function(Query$SimilarProducts$similarProducts$brand) then,
  ) = _CopyWithImpl$Query$SimilarProducts$similarProducts$brand;

  factory CopyWith$Query$SimilarProducts$similarProducts$brand.stub(TRes res) =
      _CopyWithStubImpl$Query$SimilarProducts$similarProducts$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SimilarProducts$similarProducts$brand<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$brand<TRes> {
  _CopyWithImpl$Query$SimilarProducts$similarProducts$brand(
    this._instance,
    this._then,
  );

  final Query$SimilarProducts$similarProducts$brand _instance;

  final TRes Function(Query$SimilarProducts$similarProducts$brand) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SimilarProducts$similarProducts$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SimilarProducts$similarProducts$brand<TRes>
    implements CopyWith$Query$SimilarProducts$similarProducts$brand<TRes> {
  _CopyWithStubImpl$Query$SimilarProducts$similarProducts$brand(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$following {
  factory Variables$Query$following({
    bool? latestFirst,
    String? search,
    int? pageCount,
    int? pageNumber,
    String? username,
  }) =>
      Variables$Query$following._({
        if (latestFirst != null) r'latestFirst': latestFirst,
        if (search != null) r'search': search,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
        if (username != null) r'username': username,
      });

  Variables$Query$following._(this._$data);

  factory Variables$Query$following.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('latestFirst')) {
      final l$latestFirst = data['latestFirst'];
      result$data['latestFirst'] = (l$latestFirst as bool?);
    }
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
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Variables$Query$following._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get latestFirst => (_$data['latestFirst'] as bool?);

  String? get search => (_$data['search'] as String?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  String? get username => (_$data['username'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('latestFirst')) {
      final l$latestFirst = latestFirst;
      result$data['latestFirst'] = l$latestFirst;
    }
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
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith$Variables$Query$following<Variables$Query$following> get copyWith =>
      CopyWith$Variables$Query$following(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$following ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latestFirst = latestFirst;
    final lOther$latestFirst = other.latestFirst;
    if (_$data.containsKey('latestFirst') !=
        other._$data.containsKey('latestFirst')) {
      return false;
    }
    if (l$latestFirst != lOther$latestFirst) {
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
    final l$latestFirst = latestFirst;
    final l$search = search;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('latestFirst') ? l$latestFirst : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$following<TRes> {
  factory CopyWith$Variables$Query$following(
    Variables$Query$following instance,
    TRes Function(Variables$Query$following) then,
  ) = _CopyWithImpl$Variables$Query$following;

  factory CopyWith$Variables$Query$following.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$following;

  TRes call({
    bool? latestFirst,
    String? search,
    int? pageCount,
    int? pageNumber,
    String? username,
  });
}

class _CopyWithImpl$Variables$Query$following<TRes>
    implements CopyWith$Variables$Query$following<TRes> {
  _CopyWithImpl$Variables$Query$following(
    this._instance,
    this._then,
  );

  final Variables$Query$following _instance;

  final TRes Function(Variables$Query$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latestFirst = _undefined,
    Object? search = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Query$following._({
        ..._instance._$data,
        if (latestFirst != _undefined) 'latestFirst': (latestFirst as bool?),
        if (search != _undefined) 'search': (search as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$following<TRes>
    implements CopyWith$Variables$Query$following<TRes> {
  _CopyWithStubImpl$Variables$Query$following(this._res);

  TRes _res;

  call({
    bool? latestFirst,
    String? search,
    int? pageCount,
    int? pageNumber,
    String? username,
  }) =>
      _res;
}

class Query$following {
  Query$following({
    this.following,
    this.$__typename = 'Query',
  });

  factory Query$following.fromJson(Map<String, dynamic> json) {
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$following(
      following: (l$following as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$following$following.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$following$following?>? following;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$following = following;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$following == null ? null : Object.hashAll(l$following.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$following || runtimeType != other.runtimeType) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
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

extension UtilityExtension$Query$following on Query$following {
  CopyWith$Query$following<Query$following> get copyWith =>
      CopyWith$Query$following(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$following<TRes> {
  factory CopyWith$Query$following(
    Query$following instance,
    TRes Function(Query$following) then,
  ) = _CopyWithImpl$Query$following;

  factory CopyWith$Query$following.stub(TRes res) =
      _CopyWithStubImpl$Query$following;

  TRes call({
    List<Query$following$following?>? following,
    String? $__typename,
  });
  TRes following(
      Iterable<Query$following$following?>? Function(
              Iterable<
                  CopyWith$Query$following$following<
                      Query$following$following>?>?)
          _fn);
}

class _CopyWithImpl$Query$following<TRes>
    implements CopyWith$Query$following<TRes> {
  _CopyWithImpl$Query$following(
    this._instance,
    this._then,
  );

  final Query$following _instance;

  final TRes Function(Query$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$following(
        following: following == _undefined
            ? _instance.following
            : (following as List<Query$following$following?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes following(
          Iterable<Query$following$following?>? Function(
                  Iterable<
                      CopyWith$Query$following$following<
                          Query$following$following>?>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) => e == null
              ? null
              : CopyWith$Query$following$following(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$following<TRes>
    implements CopyWith$Query$following<TRes> {
  _CopyWithStubImpl$Query$following(this._res);

  TRes _res;

  call({
    List<Query$following$following?>? following,
    String? $__typename,
  }) =>
      _res;

  following(_fn) => _res;
}

const documentNodeQueryfollowing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'following'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'latestFirst')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'following'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'latestFirst'),
            value: VariableNode(name: NameNode(value: 'latestFirst')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageCount'),
            value: VariableNode(name: NameNode(value: 'pageCount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageNumber'),
            value: VariableNode(name: NameNode(value: 'pageNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
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
            name: NameNode(value: 'username'),
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
            name: NameNode(value: 'profilePictureUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationName'),
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
            name: NameNode(value: 'isFollowing'),
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
Query$following _parserFn$Query$following(Map<String, dynamic> data) =>
    Query$following.fromJson(data);
typedef OnQueryComplete$Query$following = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$following?,
);

class Options$Query$following extends graphql.QueryOptions<Query$following> {
  Options$Query$following({
    String? operationName,
    Variables$Query$following? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$following? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$following? onComplete,
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
                    data == null ? null : _parserFn$Query$following(data),
                  ),
          onError: onError,
          document: documentNodeQueryfollowing,
          parserFn: _parserFn$Query$following,
        );

  final OnQueryComplete$Query$following? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$following
    extends graphql.WatchQueryOptions<Query$following> {
  WatchOptions$Query$following({
    String? operationName,
    Variables$Query$following? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$following? typedOptimisticResult,
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
          document: documentNodeQueryfollowing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$following,
        );
}

class FetchMoreOptions$Query$following extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$following({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$following? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryfollowing,
        );
}

extension ClientExtension$Query$following on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$following>> query$following(
          [Options$Query$following? options]) async =>
      await this.query(options ?? Options$Query$following());
  graphql.ObservableQuery<Query$following> watchQuery$following(
          [WatchOptions$Query$following? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$following());
  void writeQuery$following({
    required Query$following data,
    Variables$Query$following? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryfollowing),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$following? readQuery$following({
    Variables$Query$following? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryfollowing),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$following.fromJson(result);
  }
}

class Query$following$following {
  Query$following$following({
    this.id,
    this.username,
    this.fullName,
    this.listing,
    this.profilePictureUrl,
    this.location,
    this.isFollowing,
    this.$__typename = 'UserType',
  });

  factory Query$following$following.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$fullName = json['fullName'];
    final l$listing = json['listing'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$location = json['location'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$following$following(
      id: (l$id as int?),
      username: (l$username as String?),
      fullName: (l$fullName as String?),
      listing: (l$listing as int?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      location: l$location == null
          ? null
          : Query$following$following$location.fromJson(
              (l$location as Map<String, dynamic>)),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String? fullName;

  final int? listing;

  final String? profilePictureUrl;

  final Query$following$following$location? location;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$listing = listing;
    _resultData['listing'] = l$listing;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$fullName = fullName;
    final l$listing = listing;
    final l$profilePictureUrl = profilePictureUrl;
    final l$location = location;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$fullName,
      l$listing,
      l$profilePictureUrl,
      l$location,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$following$following ||
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
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
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

extension UtilityExtension$Query$following$following
    on Query$following$following {
  CopyWith$Query$following$following<Query$following$following> get copyWith =>
      CopyWith$Query$following$following(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$following$following<TRes> {
  factory CopyWith$Query$following$following(
    Query$following$following instance,
    TRes Function(Query$following$following) then,
  ) = _CopyWithImpl$Query$following$following;

  factory CopyWith$Query$following$following.stub(TRes res) =
      _CopyWithStubImpl$Query$following$following;

  TRes call({
    int? id,
    String? username,
    String? fullName,
    int? listing,
    String? profilePictureUrl,
    Query$following$following$location? location,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$following$following$location<TRes> get location;
}

class _CopyWithImpl$Query$following$following<TRes>
    implements CopyWith$Query$following$following<TRes> {
  _CopyWithImpl$Query$following$following(
    this._instance,
    this._then,
  );

  final Query$following$following _instance;

  final TRes Function(Query$following$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? fullName = _undefined,
    Object? listing = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? location = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$following$following(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        listing: listing == _undefined ? _instance.listing : (listing as int?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        location: location == _undefined
            ? _instance.location
            : (location as Query$following$following$location?),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$following$following$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$following$following$location.stub(_then(_instance))
        : CopyWith$Query$following$following$location(
            local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Query$following$following<TRes>
    implements CopyWith$Query$following$following<TRes> {
  _CopyWithStubImpl$Query$following$following(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? fullName,
    int? listing,
    String? profilePictureUrl,
    Query$following$following$location? location,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$following$following$location<TRes> get location =>
      CopyWith$Query$following$following$location.stub(_res);
}

class Query$following$following$location {
  Query$following$following$location({
    this.latitude,
    this.longitude,
    this.locationName,
    this.$__typename = 'LocationType',
  });

  factory Query$following$following$location.fromJson(
      Map<String, dynamic> json) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$locationName = json['locationName'];
    final l$$__typename = json['__typename'];
    return Query$following$following$location(
      latitude: (l$latitude as String?),
      longitude: (l$longitude as String?),
      locationName: (l$locationName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? latitude;

  final String? longitude;

  final String? locationName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$locationName = locationName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$latitude,
      l$longitude,
      l$locationName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$following$following$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
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

extension UtilityExtension$Query$following$following$location
    on Query$following$following$location {
  CopyWith$Query$following$following$location<
          Query$following$following$location>
      get copyWith => CopyWith$Query$following$following$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$following$following$location<TRes> {
  factory CopyWith$Query$following$following$location(
    Query$following$following$location instance,
    TRes Function(Query$following$following$location) then,
  ) = _CopyWithImpl$Query$following$following$location;

  factory CopyWith$Query$following$following$location.stub(TRes res) =
      _CopyWithStubImpl$Query$following$following$location;

  TRes call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$following$following$location<TRes>
    implements CopyWith$Query$following$following$location<TRes> {
  _CopyWithImpl$Query$following$following$location(
    this._instance,
    this._then,
  );

  final Query$following$following$location _instance;

  final TRes Function(Query$following$following$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? locationName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$following$following$location(
        latitude:
            latitude == _undefined ? _instance.latitude : (latitude as String?),
        longitude: longitude == _undefined
            ? _instance.longitude
            : (longitude as String?),
        locationName: locationName == _undefined
            ? _instance.locationName
            : (locationName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$following$following$location<TRes>
    implements CopyWith$Query$following$following$location<TRes> {
  _CopyWithStubImpl$Query$following$following$location(this._res);

  TRes _res;

  call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$followers {
  factory Variables$Query$followers({
    bool? latestFirst,
    String? search,
    int? pageCount,
    int? pageNumber,
    String? username,
  }) =>
      Variables$Query$followers._({
        if (latestFirst != null) r'latestFirst': latestFirst,
        if (search != null) r'search': search,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
        if (username != null) r'username': username,
      });

  Variables$Query$followers._(this._$data);

  factory Variables$Query$followers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('latestFirst')) {
      final l$latestFirst = data['latestFirst'];
      result$data['latestFirst'] = (l$latestFirst as bool?);
    }
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
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Variables$Query$followers._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get latestFirst => (_$data['latestFirst'] as bool?);

  String? get search => (_$data['search'] as String?);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  String? get username => (_$data['username'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('latestFirst')) {
      final l$latestFirst = latestFirst;
      result$data['latestFirst'] = l$latestFirst;
    }
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
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith$Variables$Query$followers<Variables$Query$followers> get copyWith =>
      CopyWith$Variables$Query$followers(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$followers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latestFirst = latestFirst;
    final lOther$latestFirst = other.latestFirst;
    if (_$data.containsKey('latestFirst') !=
        other._$data.containsKey('latestFirst')) {
      return false;
    }
    if (l$latestFirst != lOther$latestFirst) {
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
    final l$latestFirst = latestFirst;
    final l$search = search;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('latestFirst') ? l$latestFirst : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$followers<TRes> {
  factory CopyWith$Variables$Query$followers(
    Variables$Query$followers instance,
    TRes Function(Variables$Query$followers) then,
  ) = _CopyWithImpl$Variables$Query$followers;

  factory CopyWith$Variables$Query$followers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$followers;

  TRes call({
    bool? latestFirst,
    String? search,
    int? pageCount,
    int? pageNumber,
    String? username,
  });
}

class _CopyWithImpl$Variables$Query$followers<TRes>
    implements CopyWith$Variables$Query$followers<TRes> {
  _CopyWithImpl$Variables$Query$followers(
    this._instance,
    this._then,
  );

  final Variables$Query$followers _instance;

  final TRes Function(Variables$Query$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latestFirst = _undefined,
    Object? search = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Query$followers._({
        ..._instance._$data,
        if (latestFirst != _undefined) 'latestFirst': (latestFirst as bool?),
        if (search != _undefined) 'search': (search as String?),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$followers<TRes>
    implements CopyWith$Variables$Query$followers<TRes> {
  _CopyWithStubImpl$Variables$Query$followers(this._res);

  TRes _res;

  call({
    bool? latestFirst,
    String? search,
    int? pageCount,
    int? pageNumber,
    String? username,
  }) =>
      _res;
}

class Query$followers {
  Query$followers({
    this.followers,
    this.$__typename = 'Query',
  });

  factory Query$followers.fromJson(Map<String, dynamic> json) {
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$followers(
      followers: (l$followers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$followers$followers.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$followers$followers?>? followers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followers = followers;
    _resultData['followers'] = l$followers?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followers = followers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$followers == null ? null : Object.hashAll(l$followers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$followers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != null && lOther$followers != null) {
      if (l$followers.length != lOther$followers.length) {
        return false;
      }
      for (int i = 0; i < l$followers.length; i++) {
        final l$followers$entry = l$followers[i];
        final lOther$followers$entry = lOther$followers[i];
        if (l$followers$entry != lOther$followers$entry) {
          return false;
        }
      }
    } else if (l$followers != lOther$followers) {
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

extension UtilityExtension$Query$followers on Query$followers {
  CopyWith$Query$followers<Query$followers> get copyWith =>
      CopyWith$Query$followers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$followers<TRes> {
  factory CopyWith$Query$followers(
    Query$followers instance,
    TRes Function(Query$followers) then,
  ) = _CopyWithImpl$Query$followers;

  factory CopyWith$Query$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$followers;

  TRes call({
    List<Query$followers$followers?>? followers,
    String? $__typename,
  });
  TRes followers(
      Iterable<Query$followers$followers?>? Function(
              Iterable<
                  CopyWith$Query$followers$followers<
                      Query$followers$followers>?>?)
          _fn);
}

class _CopyWithImpl$Query$followers<TRes>
    implements CopyWith$Query$followers<TRes> {
  _CopyWithImpl$Query$followers(
    this._instance,
    this._then,
  );

  final Query$followers _instance;

  final TRes Function(Query$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followers(
        followers: followers == _undefined
            ? _instance.followers
            : (followers as List<Query$followers$followers?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes followers(
          Iterable<Query$followers$followers?>? Function(
                  Iterable<
                      CopyWith$Query$followers$followers<
                          Query$followers$followers>?>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) => e == null
              ? null
              : CopyWith$Query$followers$followers(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$followers<TRes>
    implements CopyWith$Query$followers<TRes> {
  _CopyWithStubImpl$Query$followers(this._res);

  TRes _res;

  call({
    List<Query$followers$followers?>? followers,
    String? $__typename,
  }) =>
      _res;

  followers(_fn) => _res;
}

const documentNodeQueryfollowers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'followers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'latestFirst')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'followers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'latestFirst'),
            value: VariableNode(name: NameNode(value: 'latestFirst')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageCount'),
            value: VariableNode(name: NameNode(value: 'pageCount')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pageNumber'),
            value: VariableNode(name: NameNode(value: 'pageNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
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
            name: NameNode(value: 'username'),
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
            name: NameNode(value: 'profilePictureUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'latitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longitude'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationName'),
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
            name: NameNode(value: 'isFollowing'),
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
Query$followers _parserFn$Query$followers(Map<String, dynamic> data) =>
    Query$followers.fromJson(data);
typedef OnQueryComplete$Query$followers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$followers?,
);

class Options$Query$followers extends graphql.QueryOptions<Query$followers> {
  Options$Query$followers({
    String? operationName,
    Variables$Query$followers? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$followers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$followers? onComplete,
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
                    data == null ? null : _parserFn$Query$followers(data),
                  ),
          onError: onError,
          document: documentNodeQueryfollowers,
          parserFn: _parserFn$Query$followers,
        );

  final OnQueryComplete$Query$followers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$followers
    extends graphql.WatchQueryOptions<Query$followers> {
  WatchOptions$Query$followers({
    String? operationName,
    Variables$Query$followers? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$followers? typedOptimisticResult,
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
          document: documentNodeQueryfollowers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$followers,
        );
}

class FetchMoreOptions$Query$followers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$followers({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$followers? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryfollowers,
        );
}

extension ClientExtension$Query$followers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$followers>> query$followers(
          [Options$Query$followers? options]) async =>
      await this.query(options ?? Options$Query$followers());
  graphql.ObservableQuery<Query$followers> watchQuery$followers(
          [WatchOptions$Query$followers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$followers());
  void writeQuery$followers({
    required Query$followers data,
    Variables$Query$followers? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryfollowers),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$followers? readQuery$followers({
    Variables$Query$followers? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryfollowers),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$followers.fromJson(result);
  }
}

class Query$followers$followers {
  Query$followers$followers({
    this.id,
    this.username,
    this.fullName,
    this.listing,
    this.profilePictureUrl,
    this.location,
    this.isFollowing,
    this.$__typename = 'UserType',
  });

  factory Query$followers$followers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$fullName = json['fullName'];
    final l$listing = json['listing'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$location = json['location'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$followers$followers(
      id: (l$id as int?),
      username: (l$username as String?),
      fullName: (l$fullName as String?),
      listing: (l$listing as int?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      location: l$location == null
          ? null
          : Query$followers$followers$location.fromJson(
              (l$location as Map<String, dynamic>)),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? username;

  final String? fullName;

  final int? listing;

  final String? profilePictureUrl;

  final Query$followers$followers$location? location;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$listing = listing;
    _resultData['listing'] = l$listing;
    final l$profilePictureUrl = profilePictureUrl;
    _resultData['profilePictureUrl'] = l$profilePictureUrl;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$fullName = fullName;
    final l$listing = listing;
    final l$profilePictureUrl = profilePictureUrl;
    final l$location = location;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$fullName,
      l$listing,
      l$profilePictureUrl,
      l$location,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$followers$followers ||
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
    final l$profilePictureUrl = profilePictureUrl;
    final lOther$profilePictureUrl = other.profilePictureUrl;
    if (l$profilePictureUrl != lOther$profilePictureUrl) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
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

extension UtilityExtension$Query$followers$followers
    on Query$followers$followers {
  CopyWith$Query$followers$followers<Query$followers$followers> get copyWith =>
      CopyWith$Query$followers$followers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$followers$followers<TRes> {
  factory CopyWith$Query$followers$followers(
    Query$followers$followers instance,
    TRes Function(Query$followers$followers) then,
  ) = _CopyWithImpl$Query$followers$followers;

  factory CopyWith$Query$followers$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$followers$followers;

  TRes call({
    int? id,
    String? username,
    String? fullName,
    int? listing,
    String? profilePictureUrl,
    Query$followers$followers$location? location,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$followers$followers$location<TRes> get location;
}

class _CopyWithImpl$Query$followers$followers<TRes>
    implements CopyWith$Query$followers$followers<TRes> {
  _CopyWithImpl$Query$followers$followers(
    this._instance,
    this._then,
  );

  final Query$followers$followers _instance;

  final TRes Function(Query$followers$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? fullName = _undefined,
    Object? listing = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? location = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followers$followers(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        listing: listing == _undefined ? _instance.listing : (listing as int?),
        profilePictureUrl: profilePictureUrl == _undefined
            ? _instance.profilePictureUrl
            : (profilePictureUrl as String?),
        location: location == _undefined
            ? _instance.location
            : (location as Query$followers$followers$location?),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$followers$followers$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$followers$followers$location.stub(_then(_instance))
        : CopyWith$Query$followers$followers$location(
            local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Query$followers$followers<TRes>
    implements CopyWith$Query$followers$followers<TRes> {
  _CopyWithStubImpl$Query$followers$followers(this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? fullName,
    int? listing,
    String? profilePictureUrl,
    Query$followers$followers$location? location,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$followers$followers$location<TRes> get location =>
      CopyWith$Query$followers$followers$location.stub(_res);
}

class Query$followers$followers$location {
  Query$followers$followers$location({
    this.latitude,
    this.longitude,
    this.locationName,
    this.$__typename = 'LocationType',
  });

  factory Query$followers$followers$location.fromJson(
      Map<String, dynamic> json) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$locationName = json['locationName'];
    final l$$__typename = json['__typename'];
    return Query$followers$followers$location(
      latitude: (l$latitude as String?),
      longitude: (l$longitude as String?),
      locationName: (l$locationName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? latitude;

  final String? longitude;

  final String? locationName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$locationName = locationName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$latitude,
      l$longitude,
      l$locationName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$followers$followers$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
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

extension UtilityExtension$Query$followers$followers$location
    on Query$followers$followers$location {
  CopyWith$Query$followers$followers$location<
          Query$followers$followers$location>
      get copyWith => CopyWith$Query$followers$followers$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$followers$followers$location<TRes> {
  factory CopyWith$Query$followers$followers$location(
    Query$followers$followers$location instance,
    TRes Function(Query$followers$followers$location) then,
  ) = _CopyWithImpl$Query$followers$followers$location;

  factory CopyWith$Query$followers$followers$location.stub(TRes res) =
      _CopyWithStubImpl$Query$followers$followers$location;

  TRes call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$followers$followers$location<TRes>
    implements CopyWith$Query$followers$followers$location<TRes> {
  _CopyWithImpl$Query$followers$followers$location(
    this._instance,
    this._then,
  );

  final Query$followers$followers$location _instance;

  final TRes Function(Query$followers$followers$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? locationName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followers$followers$location(
        latitude:
            latitude == _undefined ? _instance.latitude : (latitude as String?),
        longitude: longitude == _undefined
            ? _instance.longitude
            : (longitude as String?),
        locationName: locationName == _undefined
            ? _instance.locationName
            : (locationName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$followers$followers$location<TRes>
    implements CopyWith$Query$followers$followers$location<TRes> {
  _CopyWithStubImpl$Query$followers$followers$location(this._res);

  TRes _res;

  call({
    String? latitude,
    String? longitude,
    String? locationName,
    String? $__typename,
  }) =>
      _res;
}

class Query$followersTotalNumber {
  Query$followersTotalNumber({
    this.followers,
    this.followersTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$followersTotalNumber.fromJson(Map<String, dynamic> json) {
    final l$followers = json['followers'];
    final l$followersTotalNumber = json['followersTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$followersTotalNumber(
      followers: (l$followers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$followersTotalNumber$followers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      followersTotalNumber: (l$followersTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$followersTotalNumber$followers?>? followers;

  final int? followersTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followers = followers;
    _resultData['followers'] = l$followers?.map((e) => e?.toJson()).toList();
    final l$followersTotalNumber = followersTotalNumber;
    _resultData['followersTotalNumber'] = l$followersTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followers = followers;
    final l$followersTotalNumber = followersTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$followers == null ? null : Object.hashAll(l$followers.map((v) => v)),
      l$followersTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$followersTotalNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != null && lOther$followers != null) {
      if (l$followers.length != lOther$followers.length) {
        return false;
      }
      for (int i = 0; i < l$followers.length; i++) {
        final l$followers$entry = l$followers[i];
        final lOther$followers$entry = lOther$followers[i];
        if (l$followers$entry != lOther$followers$entry) {
          return false;
        }
      }
    } else if (l$followers != lOther$followers) {
      return false;
    }
    final l$followersTotalNumber = followersTotalNumber;
    final lOther$followersTotalNumber = other.followersTotalNumber;
    if (l$followersTotalNumber != lOther$followersTotalNumber) {
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

extension UtilityExtension$Query$followersTotalNumber
    on Query$followersTotalNumber {
  CopyWith$Query$followersTotalNumber<Query$followersTotalNumber>
      get copyWith => CopyWith$Query$followersTotalNumber(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$followersTotalNumber<TRes> {
  factory CopyWith$Query$followersTotalNumber(
    Query$followersTotalNumber instance,
    TRes Function(Query$followersTotalNumber) then,
  ) = _CopyWithImpl$Query$followersTotalNumber;

  factory CopyWith$Query$followersTotalNumber.stub(TRes res) =
      _CopyWithStubImpl$Query$followersTotalNumber;

  TRes call({
    List<Query$followersTotalNumber$followers?>? followers,
    int? followersTotalNumber,
    String? $__typename,
  });
  TRes followers(
      Iterable<Query$followersTotalNumber$followers?>? Function(
              Iterable<
                  CopyWith$Query$followersTotalNumber$followers<
                      Query$followersTotalNumber$followers>?>?)
          _fn);
}

class _CopyWithImpl$Query$followersTotalNumber<TRes>
    implements CopyWith$Query$followersTotalNumber<TRes> {
  _CopyWithImpl$Query$followersTotalNumber(
    this._instance,
    this._then,
  );

  final Query$followersTotalNumber _instance;

  final TRes Function(Query$followersTotalNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followers = _undefined,
    Object? followersTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followersTotalNumber(
        followers: followers == _undefined
            ? _instance.followers
            : (followers as List<Query$followersTotalNumber$followers?>?),
        followersTotalNumber: followersTotalNumber == _undefined
            ? _instance.followersTotalNumber
            : (followersTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes followers(
          Iterable<Query$followersTotalNumber$followers?>? Function(
                  Iterable<
                      CopyWith$Query$followersTotalNumber$followers<
                          Query$followersTotalNumber$followers>?>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) => e == null
              ? null
              : CopyWith$Query$followersTotalNumber$followers(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$followersTotalNumber<TRes>
    implements CopyWith$Query$followersTotalNumber<TRes> {
  _CopyWithStubImpl$Query$followersTotalNumber(this._res);

  TRes _res;

  call({
    List<Query$followersTotalNumber$followers?>? followers,
    int? followersTotalNumber,
    String? $__typename,
  }) =>
      _res;

  followers(_fn) => _res;
}

const documentNodeQueryfollowersTotalNumber = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'followersTotalNumber'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'followers'),
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
        name: NameNode(value: 'followersTotalNumber'),
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
Query$followersTotalNumber _parserFn$Query$followersTotalNumber(
        Map<String, dynamic> data) =>
    Query$followersTotalNumber.fromJson(data);
typedef OnQueryComplete$Query$followersTotalNumber = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$followersTotalNumber?,
);

class Options$Query$followersTotalNumber
    extends graphql.QueryOptions<Query$followersTotalNumber> {
  Options$Query$followersTotalNumber({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$followersTotalNumber? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$followersTotalNumber? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$followersTotalNumber(data),
                  ),
          onError: onError,
          document: documentNodeQueryfollowersTotalNumber,
          parserFn: _parserFn$Query$followersTotalNumber,
        );

  final OnQueryComplete$Query$followersTotalNumber? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$followersTotalNumber
    extends graphql.WatchQueryOptions<Query$followersTotalNumber> {
  WatchOptions$Query$followersTotalNumber({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$followersTotalNumber? typedOptimisticResult,
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
          document: documentNodeQueryfollowersTotalNumber,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$followersTotalNumber,
        );
}

class FetchMoreOptions$Query$followersTotalNumber
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$followersTotalNumber(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryfollowersTotalNumber,
        );
}

extension ClientExtension$Query$followersTotalNumber on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$followersTotalNumber>>
      query$followersTotalNumber(
              [Options$Query$followersTotalNumber? options]) async =>
          await this.query(options ?? Options$Query$followersTotalNumber());
  graphql.ObservableQuery<Query$followersTotalNumber>
      watchQuery$followersTotalNumber(
              [WatchOptions$Query$followersTotalNumber? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$followersTotalNumber());
  void writeQuery$followersTotalNumber({
    required Query$followersTotalNumber data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryfollowersTotalNumber)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$followersTotalNumber? readQuery$followersTotalNumber(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryfollowersTotalNumber)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$followersTotalNumber.fromJson(result);
  }
}

class Query$followersTotalNumber$followers {
  Query$followersTotalNumber$followers({
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$followersTotalNumber$followers.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$followersTotalNumber$followers(
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
    if (other is! Query$followersTotalNumber$followers ||
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

extension UtilityExtension$Query$followersTotalNumber$followers
    on Query$followersTotalNumber$followers {
  CopyWith$Query$followersTotalNumber$followers<
          Query$followersTotalNumber$followers>
      get copyWith => CopyWith$Query$followersTotalNumber$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$followersTotalNumber$followers<TRes> {
  factory CopyWith$Query$followersTotalNumber$followers(
    Query$followersTotalNumber$followers instance,
    TRes Function(Query$followersTotalNumber$followers) then,
  ) = _CopyWithImpl$Query$followersTotalNumber$followers;

  factory CopyWith$Query$followersTotalNumber$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$followersTotalNumber$followers;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$followersTotalNumber$followers<TRes>
    implements CopyWith$Query$followersTotalNumber$followers<TRes> {
  _CopyWithImpl$Query$followersTotalNumber$followers(
    this._instance,
    this._then,
  );

  final Query$followersTotalNumber$followers _instance;

  final TRes Function(Query$followersTotalNumber$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followersTotalNumber$followers(
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$followersTotalNumber$followers<TRes>
    implements CopyWith$Query$followersTotalNumber$followers<TRes> {
  _CopyWithStubImpl$Query$followersTotalNumber$followers(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Query$followingTotalNumber {
  Query$followingTotalNumber({
    this.following,
    this.followingTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$followingTotalNumber.fromJson(Map<String, dynamic> json) {
    final l$following = json['following'];
    final l$followingTotalNumber = json['followingTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$followingTotalNumber(
      following: (l$following as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$followingTotalNumber$following.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      followingTotalNumber: (l$followingTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$followingTotalNumber$following?>? following;

  final int? followingTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e?.toJson()).toList();
    final l$followingTotalNumber = followingTotalNumber;
    _resultData['followingTotalNumber'] = l$followingTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$following = following;
    final l$followingTotalNumber = followingTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$following == null ? null : Object.hashAll(l$following.map((v) => v)),
      l$followingTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$followingTotalNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
      return false;
    }
    final l$followingTotalNumber = followingTotalNumber;
    final lOther$followingTotalNumber = other.followingTotalNumber;
    if (l$followingTotalNumber != lOther$followingTotalNumber) {
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

extension UtilityExtension$Query$followingTotalNumber
    on Query$followingTotalNumber {
  CopyWith$Query$followingTotalNumber<Query$followingTotalNumber>
      get copyWith => CopyWith$Query$followingTotalNumber(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$followingTotalNumber<TRes> {
  factory CopyWith$Query$followingTotalNumber(
    Query$followingTotalNumber instance,
    TRes Function(Query$followingTotalNumber) then,
  ) = _CopyWithImpl$Query$followingTotalNumber;

  factory CopyWith$Query$followingTotalNumber.stub(TRes res) =
      _CopyWithStubImpl$Query$followingTotalNumber;

  TRes call({
    List<Query$followingTotalNumber$following?>? following,
    int? followingTotalNumber,
    String? $__typename,
  });
  TRes following(
      Iterable<Query$followingTotalNumber$following?>? Function(
              Iterable<
                  CopyWith$Query$followingTotalNumber$following<
                      Query$followingTotalNumber$following>?>?)
          _fn);
}

class _CopyWithImpl$Query$followingTotalNumber<TRes>
    implements CopyWith$Query$followingTotalNumber<TRes> {
  _CopyWithImpl$Query$followingTotalNumber(
    this._instance,
    this._then,
  );

  final Query$followingTotalNumber _instance;

  final TRes Function(Query$followingTotalNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? following = _undefined,
    Object? followingTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followingTotalNumber(
        following: following == _undefined
            ? _instance.following
            : (following as List<Query$followingTotalNumber$following?>?),
        followingTotalNumber: followingTotalNumber == _undefined
            ? _instance.followingTotalNumber
            : (followingTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes following(
          Iterable<Query$followingTotalNumber$following?>? Function(
                  Iterable<
                      CopyWith$Query$followingTotalNumber$following<
                          Query$followingTotalNumber$following>?>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) => e == null
              ? null
              : CopyWith$Query$followingTotalNumber$following(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$followingTotalNumber<TRes>
    implements CopyWith$Query$followingTotalNumber<TRes> {
  _CopyWithStubImpl$Query$followingTotalNumber(this._res);

  TRes _res;

  call({
    List<Query$followingTotalNumber$following?>? following,
    int? followingTotalNumber,
    String? $__typename,
  }) =>
      _res;

  following(_fn) => _res;
}

const documentNodeQueryfollowingTotalNumber = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'followingTotalNumber'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'following'),
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
        name: NameNode(value: 'followingTotalNumber'),
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
Query$followingTotalNumber _parserFn$Query$followingTotalNumber(
        Map<String, dynamic> data) =>
    Query$followingTotalNumber.fromJson(data);
typedef OnQueryComplete$Query$followingTotalNumber = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$followingTotalNumber?,
);

class Options$Query$followingTotalNumber
    extends graphql.QueryOptions<Query$followingTotalNumber> {
  Options$Query$followingTotalNumber({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$followingTotalNumber? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$followingTotalNumber? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$followingTotalNumber(data),
                  ),
          onError: onError,
          document: documentNodeQueryfollowingTotalNumber,
          parserFn: _parserFn$Query$followingTotalNumber,
        );

  final OnQueryComplete$Query$followingTotalNumber? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$followingTotalNumber
    extends graphql.WatchQueryOptions<Query$followingTotalNumber> {
  WatchOptions$Query$followingTotalNumber({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$followingTotalNumber? typedOptimisticResult,
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
          document: documentNodeQueryfollowingTotalNumber,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$followingTotalNumber,
        );
}

class FetchMoreOptions$Query$followingTotalNumber
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$followingTotalNumber(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryfollowingTotalNumber,
        );
}

extension ClientExtension$Query$followingTotalNumber on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$followingTotalNumber>>
      query$followingTotalNumber(
              [Options$Query$followingTotalNumber? options]) async =>
          await this.query(options ?? Options$Query$followingTotalNumber());
  graphql.ObservableQuery<Query$followingTotalNumber>
      watchQuery$followingTotalNumber(
              [WatchOptions$Query$followingTotalNumber? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$followingTotalNumber());
  void writeQuery$followingTotalNumber({
    required Query$followingTotalNumber data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryfollowingTotalNumber)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$followingTotalNumber? readQuery$followingTotalNumber(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryfollowingTotalNumber)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$followingTotalNumber.fromJson(result);
  }
}

class Query$followingTotalNumber$following {
  Query$followingTotalNumber$following({
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$followingTotalNumber$following.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$followingTotalNumber$following(
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
    if (other is! Query$followingTotalNumber$following ||
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

extension UtilityExtension$Query$followingTotalNumber$following
    on Query$followingTotalNumber$following {
  CopyWith$Query$followingTotalNumber$following<
          Query$followingTotalNumber$following>
      get copyWith => CopyWith$Query$followingTotalNumber$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$followingTotalNumber$following<TRes> {
  factory CopyWith$Query$followingTotalNumber$following(
    Query$followingTotalNumber$following instance,
    TRes Function(Query$followingTotalNumber$following) then,
  ) = _CopyWithImpl$Query$followingTotalNumber$following;

  factory CopyWith$Query$followingTotalNumber$following.stub(TRes res) =
      _CopyWithStubImpl$Query$followingTotalNumber$following;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$followingTotalNumber$following<TRes>
    implements CopyWith$Query$followingTotalNumber$following<TRes> {
  _CopyWithImpl$Query$followingTotalNumber$following(
    this._instance,
    this._then,
  );

  final Query$followingTotalNumber$following _instance;

  final TRes Function(Query$followingTotalNumber$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$followingTotalNumber$following(
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$followingTotalNumber$following<TRes>
    implements CopyWith$Query$followingTotalNumber$following<TRes> {
  _CopyWithStubImpl$Query$followingTotalNumber$following(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FilterProductsByPrice {
  factory Variables$Query$FilterProductsByPrice({
    required double priceLimit,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$FilterProductsByPrice._({
        r'priceLimit': priceLimit,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$FilterProductsByPrice._(this._$data);

  factory Variables$Query$FilterProductsByPrice.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$priceLimit = data['priceLimit'];
    result$data['priceLimit'] = (l$priceLimit as num).toDouble();
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$FilterProductsByPrice._(result$data);
  }

  Map<String, dynamic> _$data;

  double get priceLimit => (_$data['priceLimit'] as double);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$priceLimit = priceLimit;
    result$data['priceLimit'] = l$priceLimit;
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

  CopyWith$Variables$Query$FilterProductsByPrice<
          Variables$Query$FilterProductsByPrice>
      get copyWith => CopyWith$Variables$Query$FilterProductsByPrice(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FilterProductsByPrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priceLimit = priceLimit;
    final lOther$priceLimit = other.priceLimit;
    if (l$priceLimit != lOther$priceLimit) {
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
    final l$priceLimit = priceLimit;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      l$priceLimit,
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FilterProductsByPrice<TRes> {
  factory CopyWith$Variables$Query$FilterProductsByPrice(
    Variables$Query$FilterProductsByPrice instance,
    TRes Function(Variables$Query$FilterProductsByPrice) then,
  ) = _CopyWithImpl$Variables$Query$FilterProductsByPrice;

  factory CopyWith$Variables$Query$FilterProductsByPrice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FilterProductsByPrice;

  TRes call({
    double? priceLimit,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$FilterProductsByPrice<TRes>
    implements CopyWith$Variables$Query$FilterProductsByPrice<TRes> {
  _CopyWithImpl$Variables$Query$FilterProductsByPrice(
    this._instance,
    this._then,
  );

  final Variables$Query$FilterProductsByPrice _instance;

  final TRes Function(Variables$Query$FilterProductsByPrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priceLimit = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$FilterProductsByPrice._({
        ..._instance._$data,
        if (priceLimit != _undefined && priceLimit != null)
          'priceLimit': (priceLimit as double),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FilterProductsByPrice<TRes>
    implements CopyWith$Variables$Query$FilterProductsByPrice<TRes> {
  _CopyWithStubImpl$Variables$Query$FilterProductsByPrice(this._res);

  TRes _res;

  call({
    double? priceLimit,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$FilterProductsByPrice {
  Query$FilterProductsByPrice({
    this.filterProductsByPrice,
    this.filterProductsByPriceTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$FilterProductsByPrice.fromJson(Map<String, dynamic> json) {
    final l$filterProductsByPrice = json['filterProductsByPrice'];
    final l$filterProductsByPriceTotalNumber =
        json['filterProductsByPriceTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice(
      filterProductsByPrice: (l$filterProductsByPrice as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FilterProductsByPrice$filterProductsByPrice.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      filterProductsByPriceTotalNumber:
          (l$filterProductsByPriceTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FilterProductsByPrice$filterProductsByPrice?>?
      filterProductsByPrice;

  final int? filterProductsByPriceTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$filterProductsByPrice = filterProductsByPrice;
    _resultData['filterProductsByPrice'] =
        l$filterProductsByPrice?.map((e) => e?.toJson()).toList();
    final l$filterProductsByPriceTotalNumber = filterProductsByPriceTotalNumber;
    _resultData['filterProductsByPriceTotalNumber'] =
        l$filterProductsByPriceTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$filterProductsByPrice = filterProductsByPrice;
    final l$filterProductsByPriceTotalNumber = filterProductsByPriceTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$filterProductsByPrice == null
          ? null
          : Object.hashAll(l$filterProductsByPrice.map((v) => v)),
      l$filterProductsByPriceTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FilterProductsByPrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filterProductsByPrice = filterProductsByPrice;
    final lOther$filterProductsByPrice = other.filterProductsByPrice;
    if (l$filterProductsByPrice != null &&
        lOther$filterProductsByPrice != null) {
      if (l$filterProductsByPrice.length !=
          lOther$filterProductsByPrice.length) {
        return false;
      }
      for (int i = 0; i < l$filterProductsByPrice.length; i++) {
        final l$filterProductsByPrice$entry = l$filterProductsByPrice[i];
        final lOther$filterProductsByPrice$entry =
            lOther$filterProductsByPrice[i];
        if (l$filterProductsByPrice$entry !=
            lOther$filterProductsByPrice$entry) {
          return false;
        }
      }
    } else if (l$filterProductsByPrice != lOther$filterProductsByPrice) {
      return false;
    }
    final l$filterProductsByPriceTotalNumber = filterProductsByPriceTotalNumber;
    final lOther$filterProductsByPriceTotalNumber =
        other.filterProductsByPriceTotalNumber;
    if (l$filterProductsByPriceTotalNumber !=
        lOther$filterProductsByPriceTotalNumber) {
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

extension UtilityExtension$Query$FilterProductsByPrice
    on Query$FilterProductsByPrice {
  CopyWith$Query$FilterProductsByPrice<Query$FilterProductsByPrice>
      get copyWith => CopyWith$Query$FilterProductsByPrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice<TRes> {
  factory CopyWith$Query$FilterProductsByPrice(
    Query$FilterProductsByPrice instance,
    TRes Function(Query$FilterProductsByPrice) then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice;

  factory CopyWith$Query$FilterProductsByPrice.stub(TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice;

  TRes call({
    List<Query$FilterProductsByPrice$filterProductsByPrice?>?
        filterProductsByPrice,
    int? filterProductsByPriceTotalNumber,
    String? $__typename,
  });
  TRes filterProductsByPrice(
      Iterable<Query$FilterProductsByPrice$filterProductsByPrice?>? Function(
              Iterable<
                  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice<
                      Query$FilterProductsByPrice$filterProductsByPrice>?>?)
          _fn);
}

class _CopyWithImpl$Query$FilterProductsByPrice<TRes>
    implements CopyWith$Query$FilterProductsByPrice<TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice _instance;

  final TRes Function(Query$FilterProductsByPrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filterProductsByPrice = _undefined,
    Object? filterProductsByPriceTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice(
        filterProductsByPrice: filterProductsByPrice == _undefined
            ? _instance.filterProductsByPrice
            : (filterProductsByPrice
                as List<Query$FilterProductsByPrice$filterProductsByPrice?>?),
        filterProductsByPriceTotalNumber:
            filterProductsByPriceTotalNumber == _undefined
                ? _instance.filterProductsByPriceTotalNumber
                : (filterProductsByPriceTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes filterProductsByPrice(
          Iterable<Query$FilterProductsByPrice$filterProductsByPrice?>? Function(
                  Iterable<
                      CopyWith$Query$FilterProductsByPrice$filterProductsByPrice<
                          Query$FilterProductsByPrice$filterProductsByPrice>?>?)
              _fn) =>
      call(
          filterProductsByPrice:
              _fn(_instance.filterProductsByPrice?.map((e) => e == null
                  ? null
                  : CopyWith$Query$FilterProductsByPrice$filterProductsByPrice(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$FilterProductsByPrice<TRes>
    implements CopyWith$Query$FilterProductsByPrice<TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice(this._res);

  TRes _res;

  call({
    List<Query$FilterProductsByPrice$filterProductsByPrice?>?
        filterProductsByPrice,
    int? filterProductsByPriceTotalNumber,
    String? $__typename,
  }) =>
      _res;

  filterProductsByPrice(_fn) => _res;
}

const documentNodeQueryFilterProductsByPrice = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FilterProductsByPrice'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'priceLimit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
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
        name: NameNode(value: 'filterProductsByPrice'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'priceLimit'),
            value: VariableNode(name: NameNode(value: 'priceLimit')),
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
            name: NameNode(value: 'materials'),
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
        name: NameNode(value: 'filterProductsByPriceTotalNumber'),
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
Query$FilterProductsByPrice _parserFn$Query$FilterProductsByPrice(
        Map<String, dynamic> data) =>
    Query$FilterProductsByPrice.fromJson(data);
typedef OnQueryComplete$Query$FilterProductsByPrice = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FilterProductsByPrice?,
);

class Options$Query$FilterProductsByPrice
    extends graphql.QueryOptions<Query$FilterProductsByPrice> {
  Options$Query$FilterProductsByPrice({
    String? operationName,
    required Variables$Query$FilterProductsByPrice variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FilterProductsByPrice? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FilterProductsByPrice? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$FilterProductsByPrice(data),
                  ),
          onError: onError,
          document: documentNodeQueryFilterProductsByPrice,
          parserFn: _parserFn$Query$FilterProductsByPrice,
        );

  final OnQueryComplete$Query$FilterProductsByPrice? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FilterProductsByPrice
    extends graphql.WatchQueryOptions<Query$FilterProductsByPrice> {
  WatchOptions$Query$FilterProductsByPrice({
    String? operationName,
    required Variables$Query$FilterProductsByPrice variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FilterProductsByPrice? typedOptimisticResult,
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
          document: documentNodeQueryFilterProductsByPrice,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FilterProductsByPrice,
        );
}

class FetchMoreOptions$Query$FilterProductsByPrice
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FilterProductsByPrice({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FilterProductsByPrice variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFilterProductsByPrice,
        );
}

extension ClientExtension$Query$FilterProductsByPrice on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FilterProductsByPrice>>
      query$FilterProductsByPrice(
              Options$Query$FilterProductsByPrice options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$FilterProductsByPrice>
      watchQuery$FilterProductsByPrice(
              WatchOptions$Query$FilterProductsByPrice options) =>
          this.watchQuery(options);
  void writeQuery$FilterProductsByPrice({
    required Query$FilterProductsByPrice data,
    required Variables$Query$FilterProductsByPrice variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFilterProductsByPrice),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FilterProductsByPrice? readQuery$FilterProductsByPrice({
    required Variables$Query$FilterProductsByPrice variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFilterProductsByPrice),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FilterProductsByPrice.fromJson(result);
  }
}

class Query$FilterProductsByPrice$filterProductsByPrice {
  Query$FilterProductsByPrice$filterProductsByPrice({
    required this.id,
    required this.name,
    required this.description,
    this.category,
    this.subCategory,
    this.seller,
    this.condition,
    this.discountPrice,
    this.size,
    this.price,
    this.parcelSize,
    required this.views,
    required this.likes,
    this.userLiked,
    required this.imagesUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.color,
    this.materials,
    this.brand,
    this.$__typename = 'ProductType',
  });

  factory Query$FilterProductsByPrice$filterProductsByPrice.fromJson(
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
    final l$userLiked = json['userLiked'];
    final l$imagesUrl = json['imagesUrl'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$color = json['color'];
    final l$materials = json['materials'];
    final l$brand = json['brand'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice$filterProductsByPrice(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      category: l$category == null
          ? null
          : Query$FilterProductsByPrice$filterProductsByPrice$category.fromJson(
              (l$category as Map<String, dynamic>)),
      subCategory: l$subCategory == null
          ? null
          : Query$FilterProductsByPrice$filterProductsByPrice$subCategory
              .fromJson((l$subCategory as Map<String, dynamic>)),
      seller: l$seller == null
          ? null
          : Query$FilterProductsByPrice$filterProductsByPrice$seller.fromJson(
              (l$seller as Map<String, dynamic>)),
      condition: l$condition == null
          ? null
          : fromJson$Enum$ProductsProductConditionChoices(
              (l$condition as String)),
      discountPrice: (l$discountPrice as String?),
      size: l$size == null
          ? null
          : fromJson$Enum$ProductsProductSizeChoices((l$size as String)),
      price: (l$price as num?)?.toDouble(),
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
      materials: (l$materials as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FilterProductsByPrice$filterProductsByPrice$materials
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      brand: l$brand == null
          ? null
          : Query$FilterProductsByPrice$filterProductsByPrice$brand.fromJson(
              (l$brand as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final Query$FilterProductsByPrice$filterProductsByPrice$category? category;

  final Query$FilterProductsByPrice$filterProductsByPrice$subCategory?
      subCategory;

  final Query$FilterProductsByPrice$filterProductsByPrice$seller? seller;

  final Enum$ProductsProductConditionChoices? condition;

  final String? discountPrice;

  final Enum$ProductsProductSizeChoices? size;

  final double? price;

  final Enum$ProductsProductParcelSizeChoices? parcelSize;

  final int views;

  final int likes;

  final bool? userLiked;

  final List<String> imagesUrl;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<String> color;

  final List<Query$FilterProductsByPrice$filterProductsByPrice$materials?>?
      materials;

  final Query$FilterProductsByPrice$filterProductsByPrice$brand? brand;

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
    final l$materials = materials;
    _resultData['materials'] = l$materials?.map((e) => e?.toJson()).toList();
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
    final l$materials = materials;
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
      l$materials == null ? null : Object.hashAll(l$materials.map((v) => v)),
      l$brand,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FilterProductsByPrice$filterProductsByPrice ||
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
    final l$materials = materials;
    final lOther$materials = other.materials;
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

extension UtilityExtension$Query$FilterProductsByPrice$filterProductsByPrice
    on Query$FilterProductsByPrice$filterProductsByPrice {
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice<
          Query$FilterProductsByPrice$filterProductsByPrice>
      get copyWith =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice$filterProductsByPrice<
    TRes> {
  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice(
    Query$FilterProductsByPrice$filterProductsByPrice instance,
    TRes Function(Query$FilterProductsByPrice$filterProductsByPrice) then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice;

  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$FilterProductsByPrice$filterProductsByPrice$category? category,
    Query$FilterProductsByPrice$filterProductsByPrice$subCategory? subCategory,
    Query$FilterProductsByPrice$filterProductsByPrice$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    List<Query$FilterProductsByPrice$filterProductsByPrice$materials?>?
        materials,
    Query$FilterProductsByPrice$filterProductsByPrice$brand? brand,
    String? $__typename,
  });
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<TRes>
      get category;
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<TRes>
      get subCategory;
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<TRes>
      get seller;
  TRes materials(
      Iterable<Query$FilterProductsByPrice$filterProductsByPrice$materials?>? Function(
              Iterable<
                  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials<
                      Query$FilterProductsByPrice$filterProductsByPrice$materials>?>?)
          _fn);
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<TRes>
      get brand;
}

class _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice<TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice<TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice$filterProductsByPrice _instance;

  final TRes Function(Query$FilterProductsByPrice$filterProductsByPrice) _then;

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
    Object? materials = _undefined,
    Object? brand = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice$filterProductsByPrice(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        category: category == _undefined
            ? _instance.category
            : (category
                as Query$FilterProductsByPrice$filterProductsByPrice$category?),
        subCategory: subCategory == _undefined
            ? _instance.subCategory
            : (subCategory
                as Query$FilterProductsByPrice$filterProductsByPrice$subCategory?),
        seller: seller == _undefined
            ? _instance.seller
            : (seller
                as Query$FilterProductsByPrice$filterProductsByPrice$seller?),
        condition: condition == _undefined
            ? _instance.condition
            : (condition as Enum$ProductsProductConditionChoices?),
        discountPrice: discountPrice == _undefined
            ? _instance.discountPrice
            : (discountPrice as String?),
        size: size == _undefined
            ? _instance.size
            : (size as Enum$ProductsProductSizeChoices?),
        price: price == _undefined ? _instance.price : (price as double?),
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
        materials: materials == _undefined
            ? _instance.materials
            : (materials as List<
                Query$FilterProductsByPrice$filterProductsByPrice$materials?>?),
        brand: brand == _undefined
            ? _instance.brand
            : (brand
                as Query$FilterProductsByPrice$filterProductsByPrice$brand?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<TRes>
      get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category
            .stub(_then(_instance))
        : CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category(
            local$category, (e) => call(category: e));
  }

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<TRes>
      get subCategory {
    final local$subCategory = _instance.subCategory;
    return local$subCategory == null
        ? CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory
            .stub(_then(_instance))
        : CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
            local$subCategory, (e) => call(subCategory: e));
  }

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<TRes>
      get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller
            .stub(_then(_instance))
        : CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller(
            local$seller, (e) => call(seller: e));
  }

  TRes materials(
          Iterable<Query$FilterProductsByPrice$filterProductsByPrice$materials?>? Function(
                  Iterable<
                      CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials<
                          Query$FilterProductsByPrice$filterProductsByPrice$materials>?>?)
              _fn) =>
      call(
          materials: _fn(_instance.materials?.map((e) => e == null
              ? null
              : CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<TRes>
      get brand {
    final local$brand = _instance.brand;
    return local$brand == null
        ? CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand.stub(
            _then(_instance))
        : CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand(
            local$brand, (e) => call(brand: e));
  }
}

class _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice<TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice<TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$FilterProductsByPrice$filterProductsByPrice$category? category,
    Query$FilterProductsByPrice$filterProductsByPrice$subCategory? subCategory,
    Query$FilterProductsByPrice$filterProductsByPrice$seller? seller,
    Enum$ProductsProductConditionChoices? condition,
    String? discountPrice,
    Enum$ProductsProductSizeChoices? size,
    double? price,
    Enum$ProductsProductParcelSizeChoices? parcelSize,
    int? views,
    int? likes,
    bool? userLiked,
    List<String>? imagesUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? color,
    List<Query$FilterProductsByPrice$filterProductsByPrice$materials?>?
        materials,
    Query$FilterProductsByPrice$filterProductsByPrice$brand? brand,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<TRes>
      get category =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category
              .stub(_res);

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<TRes>
      get subCategory =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory
              .stub(_res);

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<TRes>
      get seller =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller
              .stub(_res);

  materials(_fn) => _res;

  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<TRes>
      get brand =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand.stub(
              _res);
}

class Query$FilterProductsByPrice$filterProductsByPrice$category {
  Query$FilterProductsByPrice$filterProductsByPrice$category({
    this.id,
    this.name,
    this.$__typename = 'CategoryType',
  });

  factory Query$FilterProductsByPrice$filterProductsByPrice$category.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice$filterProductsByPrice$category(
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
    if (other is! Query$FilterProductsByPrice$filterProductsByPrice$category ||
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

extension UtilityExtension$Query$FilterProductsByPrice$filterProductsByPrice$category
    on Query$FilterProductsByPrice$filterProductsByPrice$category {
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<
          Query$FilterProductsByPrice$filterProductsByPrice$category>
      get copyWith =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<
    TRes> {
  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category(
    Query$FilterProductsByPrice$filterProductsByPrice$category instance,
    TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$category)
        then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$category;

  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$category;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$category<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<
            TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$category(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice$filterProductsByPrice$category _instance;

  final TRes Function(
      Query$FilterProductsByPrice$filterProductsByPrice$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice$filterProductsByPrice$category(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$category<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$category<
            TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$category(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FilterProductsByPrice$filterProductsByPrice$subCategory {
  Query$FilterProductsByPrice$filterProductsByPrice$subCategory({
    this.id,
    this.name,
    this.$__typename = 'SubCategoryType',
  });

  factory Query$FilterProductsByPrice$filterProductsByPrice$subCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
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
            is! Query$FilterProductsByPrice$filterProductsByPrice$subCategory ||
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

extension UtilityExtension$Query$FilterProductsByPrice$filterProductsByPrice$subCategory
    on Query$FilterProductsByPrice$filterProductsByPrice$subCategory {
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<
          Query$FilterProductsByPrice$filterProductsByPrice$subCategory>
      get copyWith =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<
    TRes> {
  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
    Query$FilterProductsByPrice$filterProductsByPrice$subCategory instance,
    TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$subCategory)
        then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$subCategory;

  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$subCategory;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<
            TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice$filterProductsByPrice$subCategory _instance;

  final TRes Function(
      Query$FilterProductsByPrice$filterProductsByPrice$subCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$subCategory<
            TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$subCategory(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FilterProductsByPrice$filterProductsByPrice$seller {
  Query$FilterProductsByPrice$filterProductsByPrice$seller({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.$__typename = 'UserType',
  });

  factory Query$FilterProductsByPrice$filterProductsByPrice$seller.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice$filterProductsByPrice$seller(
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
    if (other is! Query$FilterProductsByPrice$filterProductsByPrice$seller ||
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

extension UtilityExtension$Query$FilterProductsByPrice$filterProductsByPrice$seller
    on Query$FilterProductsByPrice$filterProductsByPrice$seller {
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<
          Query$FilterProductsByPrice$filterProductsByPrice$seller>
      get copyWith =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<
    TRes> {
  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller(
    Query$FilterProductsByPrice$filterProductsByPrice$seller instance,
    TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$seller)
        then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$seller;

  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$seller;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$seller<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<
            TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$seller(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice$filterProductsByPrice$seller _instance;

  final TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$seller)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice$filterProductsByPrice$seller(
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

class _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$seller<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$seller<
            TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$seller(
      this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$FilterProductsByPrice$filterProductsByPrice$materials {
  Query$FilterProductsByPrice$filterProductsByPrice$materials({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$FilterProductsByPrice$filterProductsByPrice$materials.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice$filterProductsByPrice$materials(
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
    if (other is! Query$FilterProductsByPrice$filterProductsByPrice$materials ||
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

extension UtilityExtension$Query$FilterProductsByPrice$filterProductsByPrice$materials
    on Query$FilterProductsByPrice$filterProductsByPrice$materials {
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials<
          Query$FilterProductsByPrice$filterProductsByPrice$materials>
      get copyWith =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials<
    TRes> {
  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials(
    Query$FilterProductsByPrice$filterProductsByPrice$materials instance,
    TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$materials)
        then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$materials;

  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$materials;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$materials<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials<
            TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$materials(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice$filterProductsByPrice$materials _instance;

  final TRes Function(
      Query$FilterProductsByPrice$filterProductsByPrice$materials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice$filterProductsByPrice$materials(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$materials<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$materials<
            TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$materials(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FilterProductsByPrice$filterProductsByPrice$brand {
  Query$FilterProductsByPrice$filterProductsByPrice$brand({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$FilterProductsByPrice$filterProductsByPrice$brand.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FilterProductsByPrice$filterProductsByPrice$brand(
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
    if (other is! Query$FilterProductsByPrice$filterProductsByPrice$brand ||
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

extension UtilityExtension$Query$FilterProductsByPrice$filterProductsByPrice$brand
    on Query$FilterProductsByPrice$filterProductsByPrice$brand {
  CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<
          Query$FilterProductsByPrice$filterProductsByPrice$brand>
      get copyWith =>
          CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<
    TRes> {
  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand(
    Query$FilterProductsByPrice$filterProductsByPrice$brand instance,
    TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$brand) then,
  ) = _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$brand;

  factory CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$brand;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$brand<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<TRes> {
  _CopyWithImpl$Query$FilterProductsByPrice$filterProductsByPrice$brand(
    this._instance,
    this._then,
  );

  final Query$FilterProductsByPrice$filterProductsByPrice$brand _instance;

  final TRes Function(Query$FilterProductsByPrice$filterProductsByPrice$brand)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterProductsByPrice$filterProductsByPrice$brand(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$brand<
        TRes>
    implements
        CopyWith$Query$FilterProductsByPrice$filterProductsByPrice$brand<TRes> {
  _CopyWithStubImpl$Query$FilterProductsByPrice$filterProductsByPrice$brand(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$PopularBrands {
  factory Variables$Query$PopularBrands({required int top}) =>
      Variables$Query$PopularBrands._({
        r'top': top,
      });

  Variables$Query$PopularBrands._(this._$data);

  factory Variables$Query$PopularBrands.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$top = data['top'];
    result$data['top'] = (l$top as int);
    return Variables$Query$PopularBrands._(result$data);
  }

  Map<String, dynamic> _$data;

  int get top => (_$data['top'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$top = top;
    result$data['top'] = l$top;
    return result$data;
  }

  CopyWith$Variables$Query$PopularBrands<Variables$Query$PopularBrands>
      get copyWith => CopyWith$Variables$Query$PopularBrands(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PopularBrands ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$top = top;
    final lOther$top = other.top;
    if (l$top != lOther$top) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$top = top;
    return Object.hashAll([l$top]);
  }
}

abstract class CopyWith$Variables$Query$PopularBrands<TRes> {
  factory CopyWith$Variables$Query$PopularBrands(
    Variables$Query$PopularBrands instance,
    TRes Function(Variables$Query$PopularBrands) then,
  ) = _CopyWithImpl$Variables$Query$PopularBrands;

  factory CopyWith$Variables$Query$PopularBrands.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PopularBrands;

  TRes call({int? top});
}

class _CopyWithImpl$Variables$Query$PopularBrands<TRes>
    implements CopyWith$Variables$Query$PopularBrands<TRes> {
  _CopyWithImpl$Variables$Query$PopularBrands(
    this._instance,
    this._then,
  );

  final Variables$Query$PopularBrands _instance;

  final TRes Function(Variables$Query$PopularBrands) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? top = _undefined}) =>
      _then(Variables$Query$PopularBrands._({
        ..._instance._$data,
        if (top != _undefined && top != null) 'top': (top as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$PopularBrands<TRes>
    implements CopyWith$Variables$Query$PopularBrands<TRes> {
  _CopyWithStubImpl$Variables$Query$PopularBrands(this._res);

  TRes _res;

  call({int? top}) => _res;
}

class Query$PopularBrands {
  Query$PopularBrands({
    this.popularBrands,
    this.$__typename = 'Query',
  });

  factory Query$PopularBrands.fromJson(Map<String, dynamic> json) {
    final l$popularBrands = json['popularBrands'];
    final l$$__typename = json['__typename'];
    return Query$PopularBrands(
      popularBrands: (l$popularBrands as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$PopularBrands$popularBrands.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PopularBrands$popularBrands?>? popularBrands;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$popularBrands = popularBrands;
    _resultData['popularBrands'] =
        l$popularBrands?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$popularBrands = popularBrands;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$popularBrands == null
          ? null
          : Object.hashAll(l$popularBrands.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PopularBrands || runtimeType != other.runtimeType) {
      return false;
    }
    final l$popularBrands = popularBrands;
    final lOther$popularBrands = other.popularBrands;
    if (l$popularBrands != null && lOther$popularBrands != null) {
      if (l$popularBrands.length != lOther$popularBrands.length) {
        return false;
      }
      for (int i = 0; i < l$popularBrands.length; i++) {
        final l$popularBrands$entry = l$popularBrands[i];
        final lOther$popularBrands$entry = lOther$popularBrands[i];
        if (l$popularBrands$entry != lOther$popularBrands$entry) {
          return false;
        }
      }
    } else if (l$popularBrands != lOther$popularBrands) {
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

extension UtilityExtension$Query$PopularBrands on Query$PopularBrands {
  CopyWith$Query$PopularBrands<Query$PopularBrands> get copyWith =>
      CopyWith$Query$PopularBrands(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PopularBrands<TRes> {
  factory CopyWith$Query$PopularBrands(
    Query$PopularBrands instance,
    TRes Function(Query$PopularBrands) then,
  ) = _CopyWithImpl$Query$PopularBrands;

  factory CopyWith$Query$PopularBrands.stub(TRes res) =
      _CopyWithStubImpl$Query$PopularBrands;

  TRes call({
    List<Query$PopularBrands$popularBrands?>? popularBrands,
    String? $__typename,
  });
  TRes popularBrands(
      Iterable<Query$PopularBrands$popularBrands?>? Function(
              Iterable<
                  CopyWith$Query$PopularBrands$popularBrands<
                      Query$PopularBrands$popularBrands>?>?)
          _fn);
}

class _CopyWithImpl$Query$PopularBrands<TRes>
    implements CopyWith$Query$PopularBrands<TRes> {
  _CopyWithImpl$Query$PopularBrands(
    this._instance,
    this._then,
  );

  final Query$PopularBrands _instance;

  final TRes Function(Query$PopularBrands) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? popularBrands = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PopularBrands(
        popularBrands: popularBrands == _undefined
            ? _instance.popularBrands
            : (popularBrands as List<Query$PopularBrands$popularBrands?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes popularBrands(
          Iterable<Query$PopularBrands$popularBrands?>? Function(
                  Iterable<
                      CopyWith$Query$PopularBrands$popularBrands<
                          Query$PopularBrands$popularBrands>?>?)
              _fn) =>
      call(
          popularBrands: _fn(_instance.popularBrands?.map((e) => e == null
              ? null
              : CopyWith$Query$PopularBrands$popularBrands(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$PopularBrands<TRes>
    implements CopyWith$Query$PopularBrands<TRes> {
  _CopyWithStubImpl$Query$PopularBrands(this._res);

  TRes _res;

  call({
    List<Query$PopularBrands$popularBrands?>? popularBrands,
    String? $__typename,
  }) =>
      _res;

  popularBrands(_fn) => _res;
}

const documentNodeQueryPopularBrands = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PopularBrands'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'top')),
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
        name: NameNode(value: 'popularBrands'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'top'),
            value: VariableNode(name: NameNode(value: 'top')),
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
Query$PopularBrands _parserFn$Query$PopularBrands(Map<String, dynamic> data) =>
    Query$PopularBrands.fromJson(data);
typedef OnQueryComplete$Query$PopularBrands = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PopularBrands?,
);

class Options$Query$PopularBrands
    extends graphql.QueryOptions<Query$PopularBrands> {
  Options$Query$PopularBrands({
    String? operationName,
    required Variables$Query$PopularBrands variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PopularBrands? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PopularBrands? onComplete,
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
                    data == null ? null : _parserFn$Query$PopularBrands(data),
                  ),
          onError: onError,
          document: documentNodeQueryPopularBrands,
          parserFn: _parserFn$Query$PopularBrands,
        );

  final OnQueryComplete$Query$PopularBrands? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PopularBrands
    extends graphql.WatchQueryOptions<Query$PopularBrands> {
  WatchOptions$Query$PopularBrands({
    String? operationName,
    required Variables$Query$PopularBrands variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PopularBrands? typedOptimisticResult,
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
          document: documentNodeQueryPopularBrands,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PopularBrands,
        );
}

class FetchMoreOptions$Query$PopularBrands extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PopularBrands({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PopularBrands variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPopularBrands,
        );
}

extension ClientExtension$Query$PopularBrands on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PopularBrands>> query$PopularBrands(
          Options$Query$PopularBrands options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$PopularBrands> watchQuery$PopularBrands(
          WatchOptions$Query$PopularBrands options) =>
      this.watchQuery(options);
  void writeQuery$PopularBrands({
    required Query$PopularBrands data,
    required Variables$Query$PopularBrands variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPopularBrands),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PopularBrands? readQuery$PopularBrands({
    required Variables$Query$PopularBrands variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPopularBrands),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PopularBrands.fromJson(result);
  }
}

class Query$PopularBrands$popularBrands {
  Query$PopularBrands$popularBrands({
    this.id,
    this.name,
    this.$__typename = 'BrandType',
  });

  factory Query$PopularBrands$popularBrands.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PopularBrands$popularBrands(
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
    if (other is! Query$PopularBrands$popularBrands ||
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

extension UtilityExtension$Query$PopularBrands$popularBrands
    on Query$PopularBrands$popularBrands {
  CopyWith$Query$PopularBrands$popularBrands<Query$PopularBrands$popularBrands>
      get copyWith => CopyWith$Query$PopularBrands$popularBrands(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PopularBrands$popularBrands<TRes> {
  factory CopyWith$Query$PopularBrands$popularBrands(
    Query$PopularBrands$popularBrands instance,
    TRes Function(Query$PopularBrands$popularBrands) then,
  ) = _CopyWithImpl$Query$PopularBrands$popularBrands;

  factory CopyWith$Query$PopularBrands$popularBrands.stub(TRes res) =
      _CopyWithStubImpl$Query$PopularBrands$popularBrands;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PopularBrands$popularBrands<TRes>
    implements CopyWith$Query$PopularBrands$popularBrands<TRes> {
  _CopyWithImpl$Query$PopularBrands$popularBrands(
    this._instance,
    this._then,
  );

  final Query$PopularBrands$popularBrands _instance;

  final TRes Function(Query$PopularBrands$popularBrands) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PopularBrands$popularBrands(
        id: id == _undefined ? _instance.id : (id as int?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PopularBrands$popularBrands<TRes>
    implements CopyWith$Query$PopularBrands$popularBrands<TRes> {
  _CopyWithStubImpl$Query$PopularBrands$popularBrands(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Conversation {
  factory Variables$Query$Conversation({
    required String id,
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$Conversation._({
        r'id': id,
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$Conversation._(this._$data);

  factory Variables$Query$Conversation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$Conversation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  int? get pageCount => (_$data['pageCount'] as int?);

  int? get pageNumber => (_$data['pageNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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

  CopyWith$Variables$Query$Conversation<Variables$Query$Conversation>
      get copyWith => CopyWith$Variables$Query$Conversation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Conversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$pageCount = pageCount;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      l$id,
      _$data.containsKey('pageCount') ? l$pageCount : const {},
      _$data.containsKey('pageNumber') ? l$pageNumber : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Conversation<TRes> {
  factory CopyWith$Variables$Query$Conversation(
    Variables$Query$Conversation instance,
    TRes Function(Variables$Query$Conversation) then,
  ) = _CopyWithImpl$Variables$Query$Conversation;

  factory CopyWith$Variables$Query$Conversation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Conversation;

  TRes call({
    String? id,
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$Conversation<TRes>
    implements CopyWith$Variables$Query$Conversation<TRes> {
  _CopyWithImpl$Variables$Query$Conversation(
    this._instance,
    this._then,
  );

  final Variables$Query$Conversation _instance;

  final TRes Function(Variables$Query$Conversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$Conversation._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Conversation<TRes>
    implements CopyWith$Variables$Query$Conversation<TRes> {
  _CopyWithStubImpl$Variables$Query$Conversation(this._res);

  TRes _res;

  call({
    String? id,
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$Conversation {
  Query$Conversation({
    this.conversation,
    this.conversationTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$Conversation.fromJson(Map<String, dynamic> json) {
    final l$conversation = json['conversation'];
    final l$conversationTotalNumber = json['conversationTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$Conversation(
      conversation: (l$conversation as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Conversation$conversation.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      conversationTotalNumber: (l$conversationTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Conversation$conversation?>? conversation;

  final int? conversationTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conversation = conversation;
    _resultData['conversation'] =
        l$conversation?.map((e) => e?.toJson()).toList();
    final l$conversationTotalNumber = conversationTotalNumber;
    _resultData['conversationTotalNumber'] = l$conversationTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conversation = conversation;
    final l$conversationTotalNumber = conversationTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$conversation == null
          ? null
          : Object.hashAll(l$conversation.map((v) => v)),
      l$conversationTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversation = conversation;
    final lOther$conversation = other.conversation;
    if (l$conversation != null && lOther$conversation != null) {
      if (l$conversation.length != lOther$conversation.length) {
        return false;
      }
      for (int i = 0; i < l$conversation.length; i++) {
        final l$conversation$entry = l$conversation[i];
        final lOther$conversation$entry = lOther$conversation[i];
        if (l$conversation$entry != lOther$conversation$entry) {
          return false;
        }
      }
    } else if (l$conversation != lOther$conversation) {
      return false;
    }
    final l$conversationTotalNumber = conversationTotalNumber;
    final lOther$conversationTotalNumber = other.conversationTotalNumber;
    if (l$conversationTotalNumber != lOther$conversationTotalNumber) {
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

extension UtilityExtension$Query$Conversation on Query$Conversation {
  CopyWith$Query$Conversation<Query$Conversation> get copyWith =>
      CopyWith$Query$Conversation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Conversation<TRes> {
  factory CopyWith$Query$Conversation(
    Query$Conversation instance,
    TRes Function(Query$Conversation) then,
  ) = _CopyWithImpl$Query$Conversation;

  factory CopyWith$Query$Conversation.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversation;

  TRes call({
    List<Query$Conversation$conversation?>? conversation,
    int? conversationTotalNumber,
    String? $__typename,
  });
  TRes conversation(
      Iterable<Query$Conversation$conversation?>? Function(
              Iterable<
                  CopyWith$Query$Conversation$conversation<
                      Query$Conversation$conversation>?>?)
          _fn);
}

class _CopyWithImpl$Query$Conversation<TRes>
    implements CopyWith$Query$Conversation<TRes> {
  _CopyWithImpl$Query$Conversation(
    this._instance,
    this._then,
  );

  final Query$Conversation _instance;

  final TRes Function(Query$Conversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? conversation = _undefined,
    Object? conversationTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversation(
        conversation: conversation == _undefined
            ? _instance.conversation
            : (conversation as List<Query$Conversation$conversation?>?),
        conversationTotalNumber: conversationTotalNumber == _undefined
            ? _instance.conversationTotalNumber
            : (conversationTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes conversation(
          Iterable<Query$Conversation$conversation?>? Function(
                  Iterable<
                      CopyWith$Query$Conversation$conversation<
                          Query$Conversation$conversation>?>?)
              _fn) =>
      call(
          conversation: _fn(_instance.conversation?.map((e) => e == null
              ? null
              : CopyWith$Query$Conversation$conversation(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Conversation<TRes>
    implements CopyWith$Query$Conversation<TRes> {
  _CopyWithStubImpl$Query$Conversation(this._res);

  TRes _res;

  call({
    List<Query$Conversation$conversation?>? conversation,
    int? conversationTotalNumber,
    String? $__typename,
  }) =>
      _res;

  conversation(_fn) => _res;
}

const documentNodeQueryConversation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Conversation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
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
        name: NameNode(value: 'conversation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'read'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deleted'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isItem'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'itemId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'itemType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyTo'),
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
        name: NameNode(value: 'conversationTotalNumber'),
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
Query$Conversation _parserFn$Query$Conversation(Map<String, dynamic> data) =>
    Query$Conversation.fromJson(data);
typedef OnQueryComplete$Query$Conversation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Conversation?,
);

class Options$Query$Conversation
    extends graphql.QueryOptions<Query$Conversation> {
  Options$Query$Conversation({
    String? operationName,
    required Variables$Query$Conversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Conversation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Conversation? onComplete,
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
                    data == null ? null : _parserFn$Query$Conversation(data),
                  ),
          onError: onError,
          document: documentNodeQueryConversation,
          parserFn: _parserFn$Query$Conversation,
        );

  final OnQueryComplete$Query$Conversation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Conversation
    extends graphql.WatchQueryOptions<Query$Conversation> {
  WatchOptions$Query$Conversation({
    String? operationName,
    required Variables$Query$Conversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Conversation? typedOptimisticResult,
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
          document: documentNodeQueryConversation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Conversation,
        );
}

class FetchMoreOptions$Query$Conversation extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Conversation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Conversation variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryConversation,
        );
}

extension ClientExtension$Query$Conversation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Conversation>> query$Conversation(
          Options$Query$Conversation options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Conversation> watchQuery$Conversation(
          WatchOptions$Query$Conversation options) =>
      this.watchQuery(options);
  void writeQuery$Conversation({
    required Query$Conversation data,
    required Variables$Query$Conversation variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryConversation),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Conversation? readQuery$Conversation({
    required Variables$Query$Conversation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryConversation),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Conversation.fromJson(result);
  }
}

class Query$Conversation$conversation {
  Query$Conversation$conversation({
    required this.id,
    required this.text,
    this.attachment,
    this.attachmentType,
    required this.read,
    required this.deleted,
    required this.isItem,
    this.itemId,
    this.itemType,
    this.replyTo,
    this.sender,
    this.$__typename = 'MessageType',
  });

  factory Query$Conversation$conversation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$attachment = json['attachment'];
    final l$attachmentType = json['attachmentType'];
    final l$read = json['read'];
    final l$deleted = json['deleted'];
    final l$isItem = json['isItem'];
    final l$itemId = json['itemId'];
    final l$itemType = json['itemType'];
    final l$replyTo = json['replyTo'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Query$Conversation$conversation(
      id: (l$id as String),
      text: (l$text as String),
      attachment: (l$attachment as String?),
      attachmentType: l$attachmentType == null
          ? null
          : fromJson$Enum$ChatsMessageAttachmentTypeChoices(
              (l$attachmentType as String)),
      read: (l$read as bool),
      deleted: (l$deleted as bool),
      isItem: (l$isItem as bool),
      itemId: (l$itemId as int?),
      itemType: (l$itemType as String?),
      replyTo: l$replyTo == null
          ? null
          : Query$Conversation$conversation$replyTo.fromJson(
              (l$replyTo as Map<String, dynamic>)),
      sender: l$sender == null
          ? null
          : Query$Conversation$conversation$sender.fromJson(
              (l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String? attachment;

  final Enum$ChatsMessageAttachmentTypeChoices? attachmentType;

  final bool read;

  final bool deleted;

  final bool isItem;

  final int? itemId;

  final String? itemType;

  final Query$Conversation$conversation$replyTo? replyTo;

  final Query$Conversation$conversation$sender? sender;

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
    final l$read = read;
    _resultData['read'] = l$read;
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$isItem = isItem;
    _resultData['isItem'] = l$isItem;
    final l$itemId = itemId;
    _resultData['itemId'] = l$itemId;
    final l$itemType = itemType;
    _resultData['itemType'] = l$itemType;
    final l$replyTo = replyTo;
    _resultData['replyTo'] = l$replyTo?.toJson();
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
    final l$read = read;
    final l$deleted = deleted;
    final l$isItem = isItem;
    final l$itemId = itemId;
    final l$itemType = itemType;
    final l$replyTo = replyTo;
    final l$sender = sender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$attachment,
      l$attachmentType,
      l$read,
      l$deleted,
      l$isItem,
      l$itemId,
      l$itemType,
      l$replyTo,
      l$sender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversation$conversation ||
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
    final l$read = read;
    final lOther$read = other.read;
    if (l$read != lOther$read) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
      return false;
    }
    final l$isItem = isItem;
    final lOther$isItem = other.isItem;
    if (l$isItem != lOther$isItem) {
      return false;
    }
    final l$itemId = itemId;
    final lOther$itemId = other.itemId;
    if (l$itemId != lOther$itemId) {
      return false;
    }
    final l$itemType = itemType;
    final lOther$itemType = other.itemType;
    if (l$itemType != lOther$itemType) {
      return false;
    }
    final l$replyTo = replyTo;
    final lOther$replyTo = other.replyTo;
    if (l$replyTo != lOther$replyTo) {
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

extension UtilityExtension$Query$Conversation$conversation
    on Query$Conversation$conversation {
  CopyWith$Query$Conversation$conversation<Query$Conversation$conversation>
      get copyWith => CopyWith$Query$Conversation$conversation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversation$conversation<TRes> {
  factory CopyWith$Query$Conversation$conversation(
    Query$Conversation$conversation instance,
    TRes Function(Query$Conversation$conversation) then,
  ) = _CopyWithImpl$Query$Conversation$conversation;

  factory CopyWith$Query$Conversation$conversation.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversation$conversation;

  TRes call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    bool? read,
    bool? deleted,
    bool? isItem,
    int? itemId,
    String? itemType,
    Query$Conversation$conversation$replyTo? replyTo,
    Query$Conversation$conversation$sender? sender,
    String? $__typename,
  });
  CopyWith$Query$Conversation$conversation$replyTo<TRes> get replyTo;
  CopyWith$Query$Conversation$conversation$sender<TRes> get sender;
}

class _CopyWithImpl$Query$Conversation$conversation<TRes>
    implements CopyWith$Query$Conversation$conversation<TRes> {
  _CopyWithImpl$Query$Conversation$conversation(
    this._instance,
    this._then,
  );

  final Query$Conversation$conversation _instance;

  final TRes Function(Query$Conversation$conversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? attachment = _undefined,
    Object? attachmentType = _undefined,
    Object? read = _undefined,
    Object? deleted = _undefined,
    Object? isItem = _undefined,
    Object? itemId = _undefined,
    Object? itemType = _undefined,
    Object? replyTo = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversation$conversation(
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
        read: read == _undefined || read == null
            ? _instance.read
            : (read as bool),
        deleted: deleted == _undefined || deleted == null
            ? _instance.deleted
            : (deleted as bool),
        isItem: isItem == _undefined || isItem == null
            ? _instance.isItem
            : (isItem as bool),
        itemId: itemId == _undefined ? _instance.itemId : (itemId as int?),
        itemType:
            itemType == _undefined ? _instance.itemType : (itemType as String?),
        replyTo: replyTo == _undefined
            ? _instance.replyTo
            : (replyTo as Query$Conversation$conversation$replyTo?),
        sender: sender == _undefined
            ? _instance.sender
            : (sender as Query$Conversation$conversation$sender?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Conversation$conversation$replyTo<TRes> get replyTo {
    final local$replyTo = _instance.replyTo;
    return local$replyTo == null
        ? CopyWith$Query$Conversation$conversation$replyTo.stub(
            _then(_instance))
        : CopyWith$Query$Conversation$conversation$replyTo(
            local$replyTo, (e) => call(replyTo: e));
  }

  CopyWith$Query$Conversation$conversation$sender<TRes> get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Query$Conversation$conversation$sender.stub(_then(_instance))
        : CopyWith$Query$Conversation$conversation$sender(
            local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Query$Conversation$conversation<TRes>
    implements CopyWith$Query$Conversation$conversation<TRes> {
  _CopyWithStubImpl$Query$Conversation$conversation(this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    bool? read,
    bool? deleted,
    bool? isItem,
    int? itemId,
    String? itemType,
    Query$Conversation$conversation$replyTo? replyTo,
    Query$Conversation$conversation$sender? sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Conversation$conversation$replyTo<TRes> get replyTo =>
      CopyWith$Query$Conversation$conversation$replyTo.stub(_res);

  CopyWith$Query$Conversation$conversation$sender<TRes> get sender =>
      CopyWith$Query$Conversation$conversation$sender.stub(_res);
}

class Query$Conversation$conversation$replyTo {
  Query$Conversation$conversation$replyTo({
    required this.id,
    required this.text,
    this.attachment,
    this.attachmentType,
    this.sender,
    this.$__typename = 'MessageType',
  });

  factory Query$Conversation$conversation$replyTo.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$attachment = json['attachment'];
    final l$attachmentType = json['attachmentType'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Query$Conversation$conversation$replyTo(
      id: (l$id as String),
      text: (l$text as String),
      attachment: (l$attachment as String?),
      attachmentType: l$attachmentType == null
          ? null
          : fromJson$Enum$ChatsMessageAttachmentTypeChoices(
              (l$attachmentType as String)),
      sender: l$sender == null
          ? null
          : Query$Conversation$conversation$replyTo$sender.fromJson(
              (l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String? attachment;

  final Enum$ChatsMessageAttachmentTypeChoices? attachmentType;

  final Query$Conversation$conversation$replyTo$sender? sender;

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
    if (other is! Query$Conversation$conversation$replyTo ||
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

extension UtilityExtension$Query$Conversation$conversation$replyTo
    on Query$Conversation$conversation$replyTo {
  CopyWith$Query$Conversation$conversation$replyTo<
          Query$Conversation$conversation$replyTo>
      get copyWith => CopyWith$Query$Conversation$conversation$replyTo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversation$conversation$replyTo<TRes> {
  factory CopyWith$Query$Conversation$conversation$replyTo(
    Query$Conversation$conversation$replyTo instance,
    TRes Function(Query$Conversation$conversation$replyTo) then,
  ) = _CopyWithImpl$Query$Conversation$conversation$replyTo;

  factory CopyWith$Query$Conversation$conversation$replyTo.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversation$conversation$replyTo;

  TRes call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    Query$Conversation$conversation$replyTo$sender? sender,
    String? $__typename,
  });
  CopyWith$Query$Conversation$conversation$replyTo$sender<TRes> get sender;
}

class _CopyWithImpl$Query$Conversation$conversation$replyTo<TRes>
    implements CopyWith$Query$Conversation$conversation$replyTo<TRes> {
  _CopyWithImpl$Query$Conversation$conversation$replyTo(
    this._instance,
    this._then,
  );

  final Query$Conversation$conversation$replyTo _instance;

  final TRes Function(Query$Conversation$conversation$replyTo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? attachment = _undefined,
    Object? attachmentType = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversation$conversation$replyTo(
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
            : (sender as Query$Conversation$conversation$replyTo$sender?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Conversation$conversation$replyTo$sender<TRes> get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Query$Conversation$conversation$replyTo$sender.stub(
            _then(_instance))
        : CopyWith$Query$Conversation$conversation$replyTo$sender(
            local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Query$Conversation$conversation$replyTo<TRes>
    implements CopyWith$Query$Conversation$conversation$replyTo<TRes> {
  _CopyWithStubImpl$Query$Conversation$conversation$replyTo(this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    Query$Conversation$conversation$replyTo$sender? sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Conversation$conversation$replyTo$sender<TRes> get sender =>
      CopyWith$Query$Conversation$conversation$replyTo$sender.stub(_res);
}

class Query$Conversation$conversation$replyTo$sender {
  Query$Conversation$conversation$replyTo$sender({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.$__typename = 'UserType',
  });

  factory Query$Conversation$conversation$replyTo$sender.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Query$Conversation$conversation$replyTo$sender(
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
    if (other is! Query$Conversation$conversation$replyTo$sender ||
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

extension UtilityExtension$Query$Conversation$conversation$replyTo$sender
    on Query$Conversation$conversation$replyTo$sender {
  CopyWith$Query$Conversation$conversation$replyTo$sender<
          Query$Conversation$conversation$replyTo$sender>
      get copyWith => CopyWith$Query$Conversation$conversation$replyTo$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversation$conversation$replyTo$sender<TRes> {
  factory CopyWith$Query$Conversation$conversation$replyTo$sender(
    Query$Conversation$conversation$replyTo$sender instance,
    TRes Function(Query$Conversation$conversation$replyTo$sender) then,
  ) = _CopyWithImpl$Query$Conversation$conversation$replyTo$sender;

  factory CopyWith$Query$Conversation$conversation$replyTo$sender.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Conversation$conversation$replyTo$sender;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? displayName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversation$conversation$replyTo$sender<TRes>
    implements CopyWith$Query$Conversation$conversation$replyTo$sender<TRes> {
  _CopyWithImpl$Query$Conversation$conversation$replyTo$sender(
    this._instance,
    this._then,
  );

  final Query$Conversation$conversation$replyTo$sender _instance;

  final TRes Function(Query$Conversation$conversation$replyTo$sender) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversation$conversation$replyTo$sender(
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

class _CopyWithStubImpl$Query$Conversation$conversation$replyTo$sender<TRes>
    implements CopyWith$Query$Conversation$conversation$replyTo$sender<TRes> {
  _CopyWithStubImpl$Query$Conversation$conversation$replyTo$sender(this._res);

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

class Query$Conversation$conversation$sender {
  Query$Conversation$conversation$sender({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.$__typename = 'UserType',
  });

  factory Query$Conversation$conversation$sender.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Query$Conversation$conversation$sender(
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
    if (other is! Query$Conversation$conversation$sender ||
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

extension UtilityExtension$Query$Conversation$conversation$sender
    on Query$Conversation$conversation$sender {
  CopyWith$Query$Conversation$conversation$sender<
          Query$Conversation$conversation$sender>
      get copyWith => CopyWith$Query$Conversation$conversation$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversation$conversation$sender<TRes> {
  factory CopyWith$Query$Conversation$conversation$sender(
    Query$Conversation$conversation$sender instance,
    TRes Function(Query$Conversation$conversation$sender) then,
  ) = _CopyWithImpl$Query$Conversation$conversation$sender;

  factory CopyWith$Query$Conversation$conversation$sender.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversation$conversation$sender;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? displayName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversation$conversation$sender<TRes>
    implements CopyWith$Query$Conversation$conversation$sender<TRes> {
  _CopyWithImpl$Query$Conversation$conversation$sender(
    this._instance,
    this._then,
  );

  final Query$Conversation$conversation$sender _instance;

  final TRes Function(Query$Conversation$conversation$sender) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversation$conversation$sender(
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

class _CopyWithStubImpl$Query$Conversation$conversation$sender<TRes>
    implements CopyWith$Query$Conversation$conversation$sender<TRes> {
  _CopyWithStubImpl$Query$Conversation$conversation$sender(this._res);

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

class Query$Conversations {
  Query$Conversations({
    this.conversations,
    this.$__typename = 'Query',
  });

  factory Query$Conversations.fromJson(Map<String, dynamic> json) {
    final l$conversations = json['conversations'];
    final l$$__typename = json['__typename'];
    return Query$Conversations(
      conversations: (l$conversations as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Conversations$conversations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Conversations$conversations?>? conversations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conversations = conversations;
    _resultData['conversations'] =
        l$conversations?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conversations = conversations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$conversations == null
          ? null
          : Object.hashAll(l$conversations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversations || runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversations = conversations;
    final lOther$conversations = other.conversations;
    if (l$conversations != null && lOther$conversations != null) {
      if (l$conversations.length != lOther$conversations.length) {
        return false;
      }
      for (int i = 0; i < l$conversations.length; i++) {
        final l$conversations$entry = l$conversations[i];
        final lOther$conversations$entry = lOther$conversations[i];
        if (l$conversations$entry != lOther$conversations$entry) {
          return false;
        }
      }
    } else if (l$conversations != lOther$conversations) {
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

extension UtilityExtension$Query$Conversations on Query$Conversations {
  CopyWith$Query$Conversations<Query$Conversations> get copyWith =>
      CopyWith$Query$Conversations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Conversations<TRes> {
  factory CopyWith$Query$Conversations(
    Query$Conversations instance,
    TRes Function(Query$Conversations) then,
  ) = _CopyWithImpl$Query$Conversations;

  factory CopyWith$Query$Conversations.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversations;

  TRes call({
    List<Query$Conversations$conversations?>? conversations,
    String? $__typename,
  });
  TRes conversations(
      Iterable<Query$Conversations$conversations?>? Function(
              Iterable<
                  CopyWith$Query$Conversations$conversations<
                      Query$Conversations$conversations>?>?)
          _fn);
}

class _CopyWithImpl$Query$Conversations<TRes>
    implements CopyWith$Query$Conversations<TRes> {
  _CopyWithImpl$Query$Conversations(
    this._instance,
    this._then,
  );

  final Query$Conversations _instance;

  final TRes Function(Query$Conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? conversations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversations(
        conversations: conversations == _undefined
            ? _instance.conversations
            : (conversations as List<Query$Conversations$conversations?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes conversations(
          Iterable<Query$Conversations$conversations?>? Function(
                  Iterable<
                      CopyWith$Query$Conversations$conversations<
                          Query$Conversations$conversations>?>?)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations?.map((e) => e == null
              ? null
              : CopyWith$Query$Conversations$conversations(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Conversations<TRes>
    implements CopyWith$Query$Conversations<TRes> {
  _CopyWithStubImpl$Query$Conversations(this._res);

  TRes _res;

  call({
    List<Query$Conversations$conversations?>? conversations,
    String? $__typename,
  }) =>
      _res;

  conversations(_fn) => _res;
}

const documentNodeQueryConversations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Conversations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'conversations'),
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
            name: NameNode(value: 'deleted'),
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
                name: NameNode(value: 'read'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deleted'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isItem'),
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
]);
Query$Conversations _parserFn$Query$Conversations(Map<String, dynamic> data) =>
    Query$Conversations.fromJson(data);
typedef OnQueryComplete$Query$Conversations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Conversations?,
);

class Options$Query$Conversations
    extends graphql.QueryOptions<Query$Conversations> {
  Options$Query$Conversations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Conversations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Conversations? onComplete,
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
                    data == null ? null : _parserFn$Query$Conversations(data),
                  ),
          onError: onError,
          document: documentNodeQueryConversations,
          parserFn: _parserFn$Query$Conversations,
        );

  final OnQueryComplete$Query$Conversations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Conversations
    extends graphql.WatchQueryOptions<Query$Conversations> {
  WatchOptions$Query$Conversations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Conversations? typedOptimisticResult,
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
          document: documentNodeQueryConversations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Conversations,
        );
}

class FetchMoreOptions$Query$Conversations extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Conversations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryConversations,
        );
}

extension ClientExtension$Query$Conversations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Conversations>> query$Conversations(
          [Options$Query$Conversations? options]) async =>
      await this.query(options ?? Options$Query$Conversations());
  graphql.ObservableQuery<Query$Conversations> watchQuery$Conversations(
          [WatchOptions$Query$Conversations? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Conversations());
  void writeQuery$Conversations({
    required Query$Conversations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryConversations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Conversations? readQuery$Conversations({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryConversations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Conversations.fromJson(result);
  }
}

class Query$Conversations$conversations {
  Query$Conversations$conversations({
    required this.id,
    required this.name,
    required this.disableResponse,
    required this.createdAt,
    required this.lastModified,
    required this.deleted,
    required this.participant1Deleted,
    required this.participant2Deleted,
    this.unreadMessagesCount,
    this.recipient,
    this.lastMessage,
    this.$__typename = 'ConversationType',
  });

  factory Query$Conversations$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$disableResponse = json['disableResponse'];
    final l$createdAt = json['createdAt'];
    final l$lastModified = json['lastModified'];
    final l$deleted = json['deleted'];
    final l$participant1Deleted = json['participant1Deleted'];
    final l$participant2Deleted = json['participant2Deleted'];
    final l$unreadMessagesCount = json['unreadMessagesCount'];
    final l$recipient = json['recipient'];
    final l$lastMessage = json['lastMessage'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations(
      id: (l$id as String),
      name: (l$name as String),
      disableResponse: (l$disableResponse as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      lastModified: DateTime.parse((l$lastModified as String)),
      deleted: (l$deleted as bool),
      participant1Deleted: (l$participant1Deleted as bool),
      participant2Deleted: (l$participant2Deleted as bool),
      unreadMessagesCount: (l$unreadMessagesCount as int?),
      recipient: l$recipient == null
          ? null
          : Query$Conversations$conversations$recipient.fromJson(
              (l$recipient as Map<String, dynamic>)),
      lastMessage: l$lastMessage == null
          ? null
          : Query$Conversations$conversations$lastMessage.fromJson(
              (l$lastMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool disableResponse;

  final DateTime createdAt;

  final DateTime lastModified;

  final bool deleted;

  final bool participant1Deleted;

  final bool participant2Deleted;

  final int? unreadMessagesCount;

  final Query$Conversations$conversations$recipient? recipient;

  final Query$Conversations$conversations$lastMessage? lastMessage;

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
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
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
    final l$deleted = deleted;
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
      l$deleted,
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
    if (other is! Query$Conversations$conversations ||
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
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Query$Conversations$conversations
    on Query$Conversations$conversations {
  CopyWith$Query$Conversations$conversations<Query$Conversations$conversations>
      get copyWith => CopyWith$Query$Conversations$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversations$conversations<TRes> {
  factory CopyWith$Query$Conversations$conversations(
    Query$Conversations$conversations instance,
    TRes Function(Query$Conversations$conversations) then,
  ) = _CopyWithImpl$Query$Conversations$conversations;

  factory CopyWith$Query$Conversations$conversations.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversations$conversations;

  TRes call({
    String? id,
    String? name,
    bool? disableResponse,
    DateTime? createdAt,
    DateTime? lastModified,
    bool? deleted,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    Query$Conversations$conversations$recipient? recipient,
    Query$Conversations$conversations$lastMessage? lastMessage,
    String? $__typename,
  });
  CopyWith$Query$Conversations$conversations$recipient<TRes> get recipient;
  CopyWith$Query$Conversations$conversations$lastMessage<TRes> get lastMessage;
}

class _CopyWithImpl$Query$Conversations$conversations<TRes>
    implements CopyWith$Query$Conversations$conversations<TRes> {
  _CopyWithImpl$Query$Conversations$conversations(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations _instance;

  final TRes Function(Query$Conversations$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? disableResponse = _undefined,
    Object? createdAt = _undefined,
    Object? lastModified = _undefined,
    Object? deleted = _undefined,
    Object? participant1Deleted = _undefined,
    Object? participant2Deleted = _undefined,
    Object? unreadMessagesCount = _undefined,
    Object? recipient = _undefined,
    Object? lastMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversations$conversations(
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
        deleted: deleted == _undefined || deleted == null
            ? _instance.deleted
            : (deleted as bool),
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
            : (recipient as Query$Conversations$conversations$recipient?),
        lastMessage: lastMessage == _undefined
            ? _instance.lastMessage
            : (lastMessage as Query$Conversations$conversations$lastMessage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Conversations$conversations$recipient<TRes> get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Query$Conversations$conversations$recipient.stub(
            _then(_instance))
        : CopyWith$Query$Conversations$conversations$recipient(
            local$recipient, (e) => call(recipient: e));
  }

  CopyWith$Query$Conversations$conversations$lastMessage<TRes> get lastMessage {
    final local$lastMessage = _instance.lastMessage;
    return local$lastMessage == null
        ? CopyWith$Query$Conversations$conversations$lastMessage.stub(
            _then(_instance))
        : CopyWith$Query$Conversations$conversations$lastMessage(
            local$lastMessage, (e) => call(lastMessage: e));
  }
}

class _CopyWithStubImpl$Query$Conversations$conversations<TRes>
    implements CopyWith$Query$Conversations$conversations<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? disableResponse,
    DateTime? createdAt,
    DateTime? lastModified,
    bool? deleted,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    Query$Conversations$conversations$recipient? recipient,
    Query$Conversations$conversations$lastMessage? lastMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Conversations$conversations$recipient<TRes> get recipient =>
      CopyWith$Query$Conversations$conversations$recipient.stub(_res);

  CopyWith$Query$Conversations$conversations$lastMessage<TRes>
      get lastMessage =>
          CopyWith$Query$Conversations$conversations$lastMessage.stub(_res);
}

class Query$Conversations$conversations$recipient {
  Query$Conversations$conversations$recipient({
    this.id,
    this.username,
    this.displayName,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.$__typename = 'UserType',
  });

  factory Query$Conversations$conversations$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$displayName = json['displayName'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$recipient(
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
    if (other is! Query$Conversations$conversations$recipient ||
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

extension UtilityExtension$Query$Conversations$conversations$recipient
    on Query$Conversations$conversations$recipient {
  CopyWith$Query$Conversations$conversations$recipient<
          Query$Conversations$conversations$recipient>
      get copyWith => CopyWith$Query$Conversations$conversations$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversations$conversations$recipient<TRes> {
  factory CopyWith$Query$Conversations$conversations$recipient(
    Query$Conversations$conversations$recipient instance,
    TRes Function(Query$Conversations$conversations$recipient) then,
  ) = _CopyWithImpl$Query$Conversations$conversations$recipient;

  factory CopyWith$Query$Conversations$conversations$recipient.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversations$conversations$recipient;

  TRes call({
    int? id,
    String? username,
    String? displayName,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversations$conversations$recipient<TRes>
    implements CopyWith$Query$Conversations$conversations$recipient<TRes> {
  _CopyWithImpl$Query$Conversations$conversations$recipient(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$recipient _instance;

  final TRes Function(Query$Conversations$conversations$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? displayName = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversations$conversations$recipient(
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

class _CopyWithStubImpl$Query$Conversations$conversations$recipient<TRes>
    implements CopyWith$Query$Conversations$conversations$recipient<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations$recipient(this._res);

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

class Query$Conversations$conversations$lastMessage {
  Query$Conversations$conversations$lastMessage({
    required this.id,
    required this.text,
    this.attachment,
    this.attachmentType,
    required this.read,
    required this.deleted,
    required this.isItem,
    this.sender,
    this.$__typename = 'MessageType',
  });

  factory Query$Conversations$conversations$lastMessage.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$attachment = json['attachment'];
    final l$attachmentType = json['attachmentType'];
    final l$read = json['read'];
    final l$deleted = json['deleted'];
    final l$isItem = json['isItem'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$lastMessage(
      id: (l$id as String),
      text: (l$text as String),
      attachment: (l$attachment as String?),
      attachmentType: l$attachmentType == null
          ? null
          : fromJson$Enum$ChatsMessageAttachmentTypeChoices(
              (l$attachmentType as String)),
      read: (l$read as bool),
      deleted: (l$deleted as bool),
      isItem: (l$isItem as bool),
      sender: l$sender == null
          ? null
          : Query$Conversations$conversations$lastMessage$sender.fromJson(
              (l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String? attachment;

  final Enum$ChatsMessageAttachmentTypeChoices? attachmentType;

  final bool read;

  final bool deleted;

  final bool isItem;

  final Query$Conversations$conversations$lastMessage$sender? sender;

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
    final l$read = read;
    _resultData['read'] = l$read;
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$isItem = isItem;
    _resultData['isItem'] = l$isItem;
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
    final l$read = read;
    final l$deleted = deleted;
    final l$isItem = isItem;
    final l$sender = sender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$attachment,
      l$attachmentType,
      l$read,
      l$deleted,
      l$isItem,
      l$sender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversations$conversations$lastMessage ||
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
    final l$read = read;
    final lOther$read = other.read;
    if (l$read != lOther$read) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
      return false;
    }
    final l$isItem = isItem;
    final lOther$isItem = other.isItem;
    if (l$isItem != lOther$isItem) {
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

extension UtilityExtension$Query$Conversations$conversations$lastMessage
    on Query$Conversations$conversations$lastMessage {
  CopyWith$Query$Conversations$conversations$lastMessage<
          Query$Conversations$conversations$lastMessage>
      get copyWith => CopyWith$Query$Conversations$conversations$lastMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversations$conversations$lastMessage<TRes> {
  factory CopyWith$Query$Conversations$conversations$lastMessage(
    Query$Conversations$conversations$lastMessage instance,
    TRes Function(Query$Conversations$conversations$lastMessage) then,
  ) = _CopyWithImpl$Query$Conversations$conversations$lastMessage;

  factory CopyWith$Query$Conversations$conversations$lastMessage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Conversations$conversations$lastMessage;

  TRes call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    bool? read,
    bool? deleted,
    bool? isItem,
    Query$Conversations$conversations$lastMessage$sender? sender,
    String? $__typename,
  });
  CopyWith$Query$Conversations$conversations$lastMessage$sender<TRes>
      get sender;
}

class _CopyWithImpl$Query$Conversations$conversations$lastMessage<TRes>
    implements CopyWith$Query$Conversations$conversations$lastMessage<TRes> {
  _CopyWithImpl$Query$Conversations$conversations$lastMessage(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$lastMessage _instance;

  final TRes Function(Query$Conversations$conversations$lastMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? attachment = _undefined,
    Object? attachmentType = _undefined,
    Object? read = _undefined,
    Object? deleted = _undefined,
    Object? isItem = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Conversations$conversations$lastMessage(
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
        read: read == _undefined || read == null
            ? _instance.read
            : (read as bool),
        deleted: deleted == _undefined || deleted == null
            ? _instance.deleted
            : (deleted as bool),
        isItem: isItem == _undefined || isItem == null
            ? _instance.isItem
            : (isItem as bool),
        sender: sender == _undefined
            ? _instance.sender
            : (sender as Query$Conversations$conversations$lastMessage$sender?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Conversations$conversations$lastMessage$sender<TRes>
      get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Query$Conversations$conversations$lastMessage$sender.stub(
            _then(_instance))
        : CopyWith$Query$Conversations$conversations$lastMessage$sender(
            local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Query$Conversations$conversations$lastMessage<TRes>
    implements CopyWith$Query$Conversations$conversations$lastMessage<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations$lastMessage(this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    bool? read,
    bool? deleted,
    bool? isItem,
    Query$Conversations$conversations$lastMessage$sender? sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Conversations$conversations$lastMessage$sender<TRes>
      get sender =>
          CopyWith$Query$Conversations$conversations$lastMessage$sender.stub(
              _res);
}

class Query$Conversations$conversations$lastMessage$sender {
  Query$Conversations$conversations$lastMessage$sender({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.$__typename = 'UserType',
  });

  factory Query$Conversations$conversations$lastMessage$sender.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$lastMessage$sender(
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
    if (other is! Query$Conversations$conversations$lastMessage$sender ||
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

extension UtilityExtension$Query$Conversations$conversations$lastMessage$sender
    on Query$Conversations$conversations$lastMessage$sender {
  CopyWith$Query$Conversations$conversations$lastMessage$sender<
          Query$Conversations$conversations$lastMessage$sender>
      get copyWith =>
          CopyWith$Query$Conversations$conversations$lastMessage$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Conversations$conversations$lastMessage$sender<
    TRes> {
  factory CopyWith$Query$Conversations$conversations$lastMessage$sender(
    Query$Conversations$conversations$lastMessage$sender instance,
    TRes Function(Query$Conversations$conversations$lastMessage$sender) then,
  ) = _CopyWithImpl$Query$Conversations$conversations$lastMessage$sender;

  factory CopyWith$Query$Conversations$conversations$lastMessage$sender.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Conversations$conversations$lastMessage$sender;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? displayName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversations$conversations$lastMessage$sender<TRes>
    implements
        CopyWith$Query$Conversations$conversations$lastMessage$sender<TRes> {
  _CopyWithImpl$Query$Conversations$conversations$lastMessage$sender(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$lastMessage$sender _instance;

  final TRes Function(Query$Conversations$conversations$lastMessage$sender)
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
      _then(Query$Conversations$conversations$lastMessage$sender(
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

class _CopyWithStubImpl$Query$Conversations$conversations$lastMessage$sender<
        TRes>
    implements
        CopyWith$Query$Conversations$conversations$lastMessage$sender<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations$lastMessage$sender(
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

class Query$ArchivedConversations {
  Query$ArchivedConversations({
    this.archivedConversations,
    this.$__typename = 'Query',
  });

  factory Query$ArchivedConversations.fromJson(Map<String, dynamic> json) {
    final l$archivedConversations = json['archivedConversations'];
    final l$$__typename = json['__typename'];
    return Query$ArchivedConversations(
      archivedConversations: (l$archivedConversations as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$ArchivedConversations$archivedConversations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ArchivedConversations$archivedConversations?>?
      archivedConversations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$archivedConversations = archivedConversations;
    _resultData['archivedConversations'] =
        l$archivedConversations?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$archivedConversations = archivedConversations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$archivedConversations == null
          ? null
          : Object.hashAll(l$archivedConversations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArchivedConversations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archivedConversations = archivedConversations;
    final lOther$archivedConversations = other.archivedConversations;
    if (l$archivedConversations != null &&
        lOther$archivedConversations != null) {
      if (l$archivedConversations.length !=
          lOther$archivedConversations.length) {
        return false;
      }
      for (int i = 0; i < l$archivedConversations.length; i++) {
        final l$archivedConversations$entry = l$archivedConversations[i];
        final lOther$archivedConversations$entry =
            lOther$archivedConversations[i];
        if (l$archivedConversations$entry !=
            lOther$archivedConversations$entry) {
          return false;
        }
      }
    } else if (l$archivedConversations != lOther$archivedConversations) {
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

extension UtilityExtension$Query$ArchivedConversations
    on Query$ArchivedConversations {
  CopyWith$Query$ArchivedConversations<Query$ArchivedConversations>
      get copyWith => CopyWith$Query$ArchivedConversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ArchivedConversations<TRes> {
  factory CopyWith$Query$ArchivedConversations(
    Query$ArchivedConversations instance,
    TRes Function(Query$ArchivedConversations) then,
  ) = _CopyWithImpl$Query$ArchivedConversations;

  factory CopyWith$Query$ArchivedConversations.stub(TRes res) =
      _CopyWithStubImpl$Query$ArchivedConversations;

  TRes call({
    List<Query$ArchivedConversations$archivedConversations?>?
        archivedConversations,
    String? $__typename,
  });
  TRes archivedConversations(
      Iterable<Query$ArchivedConversations$archivedConversations?>? Function(
              Iterable<
                  CopyWith$Query$ArchivedConversations$archivedConversations<
                      Query$ArchivedConversations$archivedConversations>?>?)
          _fn);
}

class _CopyWithImpl$Query$ArchivedConversations<TRes>
    implements CopyWith$Query$ArchivedConversations<TRes> {
  _CopyWithImpl$Query$ArchivedConversations(
    this._instance,
    this._then,
  );

  final Query$ArchivedConversations _instance;

  final TRes Function(Query$ArchivedConversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archivedConversations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ArchivedConversations(
        archivedConversations: archivedConversations == _undefined
            ? _instance.archivedConversations
            : (archivedConversations
                as List<Query$ArchivedConversations$archivedConversations?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes archivedConversations(
          Iterable<Query$ArchivedConversations$archivedConversations?>? Function(
                  Iterable<
                      CopyWith$Query$ArchivedConversations$archivedConversations<
                          Query$ArchivedConversations$archivedConversations>?>?)
              _fn) =>
      call(
          archivedConversations:
              _fn(_instance.archivedConversations?.map((e) => e == null
                  ? null
                  : CopyWith$Query$ArchivedConversations$archivedConversations(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$ArchivedConversations<TRes>
    implements CopyWith$Query$ArchivedConversations<TRes> {
  _CopyWithStubImpl$Query$ArchivedConversations(this._res);

  TRes _res;

  call({
    List<Query$ArchivedConversations$archivedConversations?>?
        archivedConversations,
    String? $__typename,
  }) =>
      _res;

  archivedConversations(_fn) => _res;
}

const documentNodeQueryArchivedConversations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ArchivedConversations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'archivedConversations'),
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
            name: NameNode(value: 'deleted'),
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
]);
Query$ArchivedConversations _parserFn$Query$ArchivedConversations(
        Map<String, dynamic> data) =>
    Query$ArchivedConversations.fromJson(data);
typedef OnQueryComplete$Query$ArchivedConversations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ArchivedConversations?,
);

class Options$Query$ArchivedConversations
    extends graphql.QueryOptions<Query$ArchivedConversations> {
  Options$Query$ArchivedConversations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArchivedConversations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ArchivedConversations? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$ArchivedConversations(data),
                  ),
          onError: onError,
          document: documentNodeQueryArchivedConversations,
          parserFn: _parserFn$Query$ArchivedConversations,
        );

  final OnQueryComplete$Query$ArchivedConversations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ArchivedConversations
    extends graphql.WatchQueryOptions<Query$ArchivedConversations> {
  WatchOptions$Query$ArchivedConversations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArchivedConversations? typedOptimisticResult,
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
          document: documentNodeQueryArchivedConversations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ArchivedConversations,
        );
}

class FetchMoreOptions$Query$ArchivedConversations
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ArchivedConversations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryArchivedConversations,
        );
}

extension ClientExtension$Query$ArchivedConversations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ArchivedConversations>>
      query$ArchivedConversations(
              [Options$Query$ArchivedConversations? options]) async =>
          await this.query(options ?? Options$Query$ArchivedConversations());
  graphql.ObservableQuery<
      Query$ArchivedConversations> watchQuery$ArchivedConversations(
          [WatchOptions$Query$ArchivedConversations? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ArchivedConversations());
  void writeQuery$ArchivedConversations({
    required Query$ArchivedConversations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryArchivedConversations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ArchivedConversations? readQuery$ArchivedConversations(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryArchivedConversations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ArchivedConversations.fromJson(result);
  }
}

class Query$ArchivedConversations$archivedConversations {
  Query$ArchivedConversations$archivedConversations({
    required this.id,
    required this.name,
    required this.disableResponse,
    required this.createdAt,
    required this.lastModified,
    required this.deleted,
    required this.participant1Deleted,
    required this.participant2Deleted,
    this.unreadMessagesCount,
    this.recipient,
    this.lastMessage,
    this.$__typename = 'ConversationType',
  });

  factory Query$ArchivedConversations$archivedConversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$disableResponse = json['disableResponse'];
    final l$createdAt = json['createdAt'];
    final l$lastModified = json['lastModified'];
    final l$deleted = json['deleted'];
    final l$participant1Deleted = json['participant1Deleted'];
    final l$participant2Deleted = json['participant2Deleted'];
    final l$unreadMessagesCount = json['unreadMessagesCount'];
    final l$recipient = json['recipient'];
    final l$lastMessage = json['lastMessage'];
    final l$$__typename = json['__typename'];
    return Query$ArchivedConversations$archivedConversations(
      id: (l$id as String),
      name: (l$name as String),
      disableResponse: (l$disableResponse as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      lastModified: DateTime.parse((l$lastModified as String)),
      deleted: (l$deleted as bool),
      participant1Deleted: (l$participant1Deleted as bool),
      participant2Deleted: (l$participant2Deleted as bool),
      unreadMessagesCount: (l$unreadMessagesCount as int?),
      recipient: l$recipient == null
          ? null
          : Query$ArchivedConversations$archivedConversations$recipient
              .fromJson((l$recipient as Map<String, dynamic>)),
      lastMessage: l$lastMessage == null
          ? null
          : Query$ArchivedConversations$archivedConversations$lastMessage
              .fromJson((l$lastMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool disableResponse;

  final DateTime createdAt;

  final DateTime lastModified;

  final bool deleted;

  final bool participant1Deleted;

  final bool participant2Deleted;

  final int? unreadMessagesCount;

  final Query$ArchivedConversations$archivedConversations$recipient? recipient;

  final Query$ArchivedConversations$archivedConversations$lastMessage?
      lastMessage;

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
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
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
    final l$deleted = deleted;
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
      l$deleted,
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
    if (other is! Query$ArchivedConversations$archivedConversations ||
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
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Query$ArchivedConversations$archivedConversations
    on Query$ArchivedConversations$archivedConversations {
  CopyWith$Query$ArchivedConversations$archivedConversations<
          Query$ArchivedConversations$archivedConversations>
      get copyWith =>
          CopyWith$Query$ArchivedConversations$archivedConversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ArchivedConversations$archivedConversations<
    TRes> {
  factory CopyWith$Query$ArchivedConversations$archivedConversations(
    Query$ArchivedConversations$archivedConversations instance,
    TRes Function(Query$ArchivedConversations$archivedConversations) then,
  ) = _CopyWithImpl$Query$ArchivedConversations$archivedConversations;

  factory CopyWith$Query$ArchivedConversations$archivedConversations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations;

  TRes call({
    String? id,
    String? name,
    bool? disableResponse,
    DateTime? createdAt,
    DateTime? lastModified,
    bool? deleted,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    Query$ArchivedConversations$archivedConversations$recipient? recipient,
    Query$ArchivedConversations$archivedConversations$lastMessage? lastMessage,
    String? $__typename,
  });
  CopyWith$Query$ArchivedConversations$archivedConversations$recipient<TRes>
      get recipient;
  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<TRes>
      get lastMessage;
}

class _CopyWithImpl$Query$ArchivedConversations$archivedConversations<TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations<TRes> {
  _CopyWithImpl$Query$ArchivedConversations$archivedConversations(
    this._instance,
    this._then,
  );

  final Query$ArchivedConversations$archivedConversations _instance;

  final TRes Function(Query$ArchivedConversations$archivedConversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? disableResponse = _undefined,
    Object? createdAt = _undefined,
    Object? lastModified = _undefined,
    Object? deleted = _undefined,
    Object? participant1Deleted = _undefined,
    Object? participant2Deleted = _undefined,
    Object? unreadMessagesCount = _undefined,
    Object? recipient = _undefined,
    Object? lastMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ArchivedConversations$archivedConversations(
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
        deleted: deleted == _undefined || deleted == null
            ? _instance.deleted
            : (deleted as bool),
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
            : (recipient
                as Query$ArchivedConversations$archivedConversations$recipient?),
        lastMessage: lastMessage == _undefined
            ? _instance.lastMessage
            : (lastMessage
                as Query$ArchivedConversations$archivedConversations$lastMessage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ArchivedConversations$archivedConversations$recipient<TRes>
      get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Query$ArchivedConversations$archivedConversations$recipient
            .stub(_then(_instance))
        : CopyWith$Query$ArchivedConversations$archivedConversations$recipient(
            local$recipient, (e) => call(recipient: e));
  }

  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<TRes>
      get lastMessage {
    final local$lastMessage = _instance.lastMessage;
    return local$lastMessage == null
        ? CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage
            .stub(_then(_instance))
        : CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage(
            local$lastMessage, (e) => call(lastMessage: e));
  }
}

class _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations<TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations<TRes> {
  _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? disableResponse,
    DateTime? createdAt,
    DateTime? lastModified,
    bool? deleted,
    bool? participant1Deleted,
    bool? participant2Deleted,
    int? unreadMessagesCount,
    Query$ArchivedConversations$archivedConversations$recipient? recipient,
    Query$ArchivedConversations$archivedConversations$lastMessage? lastMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ArchivedConversations$archivedConversations$recipient<TRes>
      get recipient =>
          CopyWith$Query$ArchivedConversations$archivedConversations$recipient
              .stub(_res);

  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<TRes>
      get lastMessage =>
          CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage
              .stub(_res);
}

class Query$ArchivedConversations$archivedConversations$recipient {
  Query$ArchivedConversations$archivedConversations$recipient({
    this.id,
    this.username,
    this.displayName,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.$__typename = 'UserType',
  });

  factory Query$ArchivedConversations$archivedConversations$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$displayName = json['displayName'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$ArchivedConversations$archivedConversations$recipient(
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
    if (other is! Query$ArchivedConversations$archivedConversations$recipient ||
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

extension UtilityExtension$Query$ArchivedConversations$archivedConversations$recipient
    on Query$ArchivedConversations$archivedConversations$recipient {
  CopyWith$Query$ArchivedConversations$archivedConversations$recipient<
          Query$ArchivedConversations$archivedConversations$recipient>
      get copyWith =>
          CopyWith$Query$ArchivedConversations$archivedConversations$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ArchivedConversations$archivedConversations$recipient<
    TRes> {
  factory CopyWith$Query$ArchivedConversations$archivedConversations$recipient(
    Query$ArchivedConversations$archivedConversations$recipient instance,
    TRes Function(Query$ArchivedConversations$archivedConversations$recipient)
        then,
  ) = _CopyWithImpl$Query$ArchivedConversations$archivedConversations$recipient;

  factory CopyWith$Query$ArchivedConversations$archivedConversations$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$recipient;

  TRes call({
    int? id,
    String? username,
    String? displayName,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ArchivedConversations$archivedConversations$recipient<
        TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations$recipient<
            TRes> {
  _CopyWithImpl$Query$ArchivedConversations$archivedConversations$recipient(
    this._instance,
    this._then,
  );

  final Query$ArchivedConversations$archivedConversations$recipient _instance;

  final TRes Function(
      Query$ArchivedConversations$archivedConversations$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? displayName = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ArchivedConversations$archivedConversations$recipient(
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

class _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$recipient<
        TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations$recipient<
            TRes> {
  _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$recipient(
      this._res);

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

class Query$ArchivedConversations$archivedConversations$lastMessage {
  Query$ArchivedConversations$archivedConversations$lastMessage({
    required this.id,
    required this.text,
    this.attachment,
    this.attachmentType,
    this.sender,
    this.$__typename = 'MessageType',
  });

  factory Query$ArchivedConversations$archivedConversations$lastMessage.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$attachment = json['attachment'];
    final l$attachmentType = json['attachmentType'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Query$ArchivedConversations$archivedConversations$lastMessage(
      id: (l$id as String),
      text: (l$text as String),
      attachment: (l$attachment as String?),
      attachmentType: l$attachmentType == null
          ? null
          : fromJson$Enum$ChatsMessageAttachmentTypeChoices(
              (l$attachmentType as String)),
      sender: l$sender == null
          ? null
          : Query$ArchivedConversations$archivedConversations$lastMessage$sender
              .fromJson((l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String? attachment;

  final Enum$ChatsMessageAttachmentTypeChoices? attachmentType;

  final Query$ArchivedConversations$archivedConversations$lastMessage$sender?
      sender;

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
    if (other
            is! Query$ArchivedConversations$archivedConversations$lastMessage ||
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

extension UtilityExtension$Query$ArchivedConversations$archivedConversations$lastMessage
    on Query$ArchivedConversations$archivedConversations$lastMessage {
  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<
          Query$ArchivedConversations$archivedConversations$lastMessage>
      get copyWith =>
          CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<
    TRes> {
  factory CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage(
    Query$ArchivedConversations$archivedConversations$lastMessage instance,
    TRes Function(Query$ArchivedConversations$archivedConversations$lastMessage)
        then,
  ) = _CopyWithImpl$Query$ArchivedConversations$archivedConversations$lastMessage;

  factory CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$lastMessage;

  TRes call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    Query$ArchivedConversations$archivedConversations$lastMessage$sender?
        sender,
    String? $__typename,
  });
  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
      TRes> get sender;
}

class _CopyWithImpl$Query$ArchivedConversations$archivedConversations$lastMessage<
        TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<
            TRes> {
  _CopyWithImpl$Query$ArchivedConversations$archivedConversations$lastMessage(
    this._instance,
    this._then,
  );

  final Query$ArchivedConversations$archivedConversations$lastMessage _instance;

  final TRes Function(
      Query$ArchivedConversations$archivedConversations$lastMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? attachment = _undefined,
    Object? attachmentType = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ArchivedConversations$archivedConversations$lastMessage(
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
                as Query$ArchivedConversations$archivedConversations$lastMessage$sender?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
      TRes> get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender
            .stub(_then(_instance))
        : CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender(
            local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$lastMessage<
        TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage<
            TRes> {
  _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$lastMessage(
      this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? attachment,
    Enum$ChatsMessageAttachmentTypeChoices? attachmentType,
    Query$ArchivedConversations$archivedConversations$lastMessage$sender?
        sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
          TRes>
      get sender =>
          CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender
              .stub(_res);
}

class Query$ArchivedConversations$archivedConversations$lastMessage$sender {
  Query$ArchivedConversations$archivedConversations$lastMessage$sender({
    this.id,
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.displayName,
    this.$__typename = 'UserType',
  });

  factory Query$ArchivedConversations$archivedConversations$lastMessage$sender.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Query$ArchivedConversations$archivedConversations$lastMessage$sender(
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
    if (other
            is! Query$ArchivedConversations$archivedConversations$lastMessage$sender ||
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

extension UtilityExtension$Query$ArchivedConversations$archivedConversations$lastMessage$sender
    on Query$ArchivedConversations$archivedConversations$lastMessage$sender {
  CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
          Query$ArchivedConversations$archivedConversations$lastMessage$sender>
      get copyWith =>
          CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
    TRes> {
  factory CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender(
    Query$ArchivedConversations$archivedConversations$lastMessage$sender
        instance,
    TRes Function(
            Query$ArchivedConversations$archivedConversations$lastMessage$sender)
        then,
  ) = _CopyWithImpl$Query$ArchivedConversations$archivedConversations$lastMessage$sender;

  factory CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$lastMessage$sender;

  TRes call({
    int? id,
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? displayName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
        TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
            TRes> {
  _CopyWithImpl$Query$ArchivedConversations$archivedConversations$lastMessage$sender(
    this._instance,
    this._then,
  );

  final Query$ArchivedConversations$archivedConversations$lastMessage$sender
      _instance;

  final TRes Function(
          Query$ArchivedConversations$archivedConversations$lastMessage$sender)
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
      _then(
          Query$ArchivedConversations$archivedConversations$lastMessage$sender(
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

class _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
        TRes>
    implements
        CopyWith$Query$ArchivedConversations$archivedConversations$lastMessage$sender<
            TRes> {
  _CopyWithStubImpl$Query$ArchivedConversations$archivedConversations$lastMessage$sender(
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

class Variables$Query$Notifications {
  factory Variables$Query$Notifications({
    int? pageCount,
    int? pageNumber,
  }) =>
      Variables$Query$Notifications._({
        if (pageCount != null) r'pageCount': pageCount,
        if (pageNumber != null) r'pageNumber': pageNumber,
      });

  Variables$Query$Notifications._(this._$data);

  factory Variables$Query$Notifications.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('pageCount')) {
      final l$pageCount = data['pageCount'];
      result$data['pageCount'] = (l$pageCount as int?);
    }
    if (data.containsKey('pageNumber')) {
      final l$pageNumber = data['pageNumber'];
      result$data['pageNumber'] = (l$pageNumber as int?);
    }
    return Variables$Query$Notifications._(result$data);
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

  CopyWith$Variables$Query$Notifications<Variables$Query$Notifications>
      get copyWith => CopyWith$Variables$Query$Notifications(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Notifications ||
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

abstract class CopyWith$Variables$Query$Notifications<TRes> {
  factory CopyWith$Variables$Query$Notifications(
    Variables$Query$Notifications instance,
    TRes Function(Variables$Query$Notifications) then,
  ) = _CopyWithImpl$Variables$Query$Notifications;

  factory CopyWith$Variables$Query$Notifications.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Notifications;

  TRes call({
    int? pageCount,
    int? pageNumber,
  });
}

class _CopyWithImpl$Variables$Query$Notifications<TRes>
    implements CopyWith$Variables$Query$Notifications<TRes> {
  _CopyWithImpl$Variables$Query$Notifications(
    this._instance,
    this._then,
  );

  final Variables$Query$Notifications _instance;

  final TRes Function(Variables$Query$Notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageCount = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Variables$Query$Notifications._({
        ..._instance._$data,
        if (pageCount != _undefined) 'pageCount': (pageCount as int?),
        if (pageNumber != _undefined) 'pageNumber': (pageNumber as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Notifications<TRes>
    implements CopyWith$Variables$Query$Notifications<TRes> {
  _CopyWithStubImpl$Variables$Query$Notifications(this._res);

  TRes _res;

  call({
    int? pageCount,
    int? pageNumber,
  }) =>
      _res;
}

class Query$Notifications {
  Query$Notifications({
    this.notifications,
    this.notificationsTotalNumber,
    this.$__typename = 'Query',
  });

  factory Query$Notifications.fromJson(Map<String, dynamic> json) {
    final l$notifications = json['notifications'];
    final l$notificationsTotalNumber = json['notificationsTotalNumber'];
    final l$$__typename = json['__typename'];
    return Query$Notifications(
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Notifications$notifications.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      notificationsTotalNumber: (l$notificationsTotalNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Notifications$notifications?>? notifications;

  final int? notificationsTotalNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e?.toJson()).toList();
    final l$notificationsTotalNumber = notificationsTotalNumber;
    _resultData['notificationsTotalNumber'] = l$notificationsTotalNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notifications = notifications;
    final l$notificationsTotalNumber = notificationsTotalNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
      l$notificationsTotalNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notifications || runtimeType != other.runtimeType) {
      return false;
    }
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) {
        return false;
      }
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) {
          return false;
        }
      }
    } else if (l$notifications != lOther$notifications) {
      return false;
    }
    final l$notificationsTotalNumber = notificationsTotalNumber;
    final lOther$notificationsTotalNumber = other.notificationsTotalNumber;
    if (l$notificationsTotalNumber != lOther$notificationsTotalNumber) {
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

extension UtilityExtension$Query$Notifications on Query$Notifications {
  CopyWith$Query$Notifications<Query$Notifications> get copyWith =>
      CopyWith$Query$Notifications(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notifications<TRes> {
  factory CopyWith$Query$Notifications(
    Query$Notifications instance,
    TRes Function(Query$Notifications) then,
  ) = _CopyWithImpl$Query$Notifications;

  factory CopyWith$Query$Notifications.stub(TRes res) =
      _CopyWithStubImpl$Query$Notifications;

  TRes call({
    List<Query$Notifications$notifications?>? notifications,
    int? notificationsTotalNumber,
    String? $__typename,
  });
  TRes notifications(
      Iterable<Query$Notifications$notifications?>? Function(
              Iterable<
                  CopyWith$Query$Notifications$notifications<
                      Query$Notifications$notifications>?>?)
          _fn);
}

class _CopyWithImpl$Query$Notifications<TRes>
    implements CopyWith$Query$Notifications<TRes> {
  _CopyWithImpl$Query$Notifications(
    this._instance,
    this._then,
  );

  final Query$Notifications _instance;

  final TRes Function(Query$Notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notifications = _undefined,
    Object? notificationsTotalNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications(
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications as List<Query$Notifications$notifications?>?),
        notificationsTotalNumber: notificationsTotalNumber == _undefined
            ? _instance.notificationsTotalNumber
            : (notificationsTotalNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes notifications(
          Iterable<Query$Notifications$notifications?>? Function(
                  Iterable<
                      CopyWith$Query$Notifications$notifications<
                          Query$Notifications$notifications>?>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map((e) => e == null
              ? null
              : CopyWith$Query$Notifications$notifications(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Notifications<TRes>
    implements CopyWith$Query$Notifications<TRes> {
  _CopyWithStubImpl$Query$Notifications(this._res);

  TRes _res;

  call({
    List<Query$Notifications$notifications?>? notifications,
    int? notificationsTotalNumber,
    String? $__typename,
  }) =>
      _res;

  notifications(_fn) => _res;
}

const documentNodeQueryNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Notifications'),
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
        name: NameNode(value: 'notifications'),
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
            name: NameNode(value: 'id'),
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
            name: NameNode(value: 'model'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modelId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modelGroup'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isRead'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delivered'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deleted'),
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
            name: NameNode(value: 'meta'),
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
        name: NameNode(value: 'notificationsTotalNumber'),
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
Query$Notifications _parserFn$Query$Notifications(Map<String, dynamic> data) =>
    Query$Notifications.fromJson(data);
typedef OnQueryComplete$Query$Notifications = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Notifications?,
);

class Options$Query$Notifications
    extends graphql.QueryOptions<Query$Notifications> {
  Options$Query$Notifications({
    String? operationName,
    Variables$Query$Notifications? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Notifications? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Notifications? onComplete,
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
                    data == null ? null : _parserFn$Query$Notifications(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotifications,
          parserFn: _parserFn$Query$Notifications,
        );

  final OnQueryComplete$Query$Notifications? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Notifications
    extends graphql.WatchQueryOptions<Query$Notifications> {
  WatchOptions$Query$Notifications({
    String? operationName,
    Variables$Query$Notifications? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Notifications? typedOptimisticResult,
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
          document: documentNodeQueryNotifications,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Notifications,
        );
}

class FetchMoreOptions$Query$Notifications extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Notifications({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Notifications? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryNotifications,
        );
}

extension ClientExtension$Query$Notifications on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Notifications>> query$Notifications(
          [Options$Query$Notifications? options]) async =>
      await this.query(options ?? Options$Query$Notifications());
  graphql.ObservableQuery<Query$Notifications> watchQuery$Notifications(
          [WatchOptions$Query$Notifications? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Notifications());
  void writeQuery$Notifications({
    required Query$Notifications data,
    Variables$Query$Notifications? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryNotifications),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Notifications? readQuery$Notifications({
    Variables$Query$Notifications? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryNotifications),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Notifications.fromJson(result);
  }
}

class Query$Notifications$notifications {
  Query$Notifications$notifications({
    required this.id,
    required this.message,
    required this.model,
    required this.modelId,
    this.modelGroup,
    required this.isRead,
    required this.delivered,
    required this.deleted,
    required this.createdAt,
    required this.updatedAt,
    this.meta,
    this.sender,
    this.$__typename = 'NotificationType',
  });

  factory Query$Notifications$notifications.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$message = json['message'];
    final l$model = json['model'];
    final l$modelId = json['modelId'];
    final l$modelGroup = json['modelGroup'];
    final l$isRead = json['isRead'];
    final l$delivered = json['delivered'];
    final l$deleted = json['deleted'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$meta = json['meta'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$notifications(
      id: (l$id as String),
      message: (l$message as String),
      model: (l$model as String),
      modelId: (l$modelId as String),
      modelGroup: (l$modelGroup as String?),
      isRead: (l$isRead as bool),
      delivered: (l$delivered as bool),
      deleted: (l$deleted as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      meta: (l$meta as String?),
      sender: l$sender == null
          ? null
          : Query$Notifications$notifications$sender.fromJson(
              (l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String message;

  final String model;

  final String modelId;

  final String? modelGroup;

  final bool isRead;

  final bool delivered;

  final bool deleted;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String? meta;

  final Query$Notifications$notifications$sender? sender;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$modelId = modelId;
    _resultData['modelId'] = l$modelId;
    final l$modelGroup = modelGroup;
    _resultData['modelGroup'] = l$modelGroup;
    final l$isRead = isRead;
    _resultData['isRead'] = l$isRead;
    final l$delivered = delivered;
    _resultData['delivered'] = l$delivered;
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$meta = meta;
    _resultData['meta'] = l$meta;
    final l$sender = sender;
    _resultData['sender'] = l$sender?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$message = message;
    final l$model = model;
    final l$modelId = modelId;
    final l$modelGroup = modelGroup;
    final l$isRead = isRead;
    final l$delivered = delivered;
    final l$deleted = deleted;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$meta = meta;
    final l$sender = sender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$message,
      l$model,
      l$modelId,
      l$modelGroup,
      l$isRead,
      l$delivered,
      l$deleted,
      l$createdAt,
      l$updatedAt,
      l$meta,
      l$sender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notifications$notifications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$modelId = modelId;
    final lOther$modelId = other.modelId;
    if (l$modelId != lOther$modelId) {
      return false;
    }
    final l$modelGroup = modelGroup;
    final lOther$modelGroup = other.modelGroup;
    if (l$modelGroup != lOther$modelGroup) {
      return false;
    }
    final l$isRead = isRead;
    final lOther$isRead = other.isRead;
    if (l$isRead != lOther$isRead) {
      return false;
    }
    final l$delivered = delivered;
    final lOther$delivered = other.delivered;
    if (l$delivered != lOther$delivered) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
      return false;
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
    final l$meta = meta;
    final lOther$meta = other.meta;
    if (l$meta != lOther$meta) {
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

extension UtilityExtension$Query$Notifications$notifications
    on Query$Notifications$notifications {
  CopyWith$Query$Notifications$notifications<Query$Notifications$notifications>
      get copyWith => CopyWith$Query$Notifications$notifications(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$notifications<TRes> {
  factory CopyWith$Query$Notifications$notifications(
    Query$Notifications$notifications instance,
    TRes Function(Query$Notifications$notifications) then,
  ) = _CopyWithImpl$Query$Notifications$notifications;

  factory CopyWith$Query$Notifications$notifications.stub(TRes res) =
      _CopyWithStubImpl$Query$Notifications$notifications;

  TRes call({
    String? id,
    String? message,
    String? model,
    String? modelId,
    String? modelGroup,
    bool? isRead,
    bool? delivered,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? meta,
    Query$Notifications$notifications$sender? sender,
    String? $__typename,
  });
  CopyWith$Query$Notifications$notifications$sender<TRes> get sender;
}

class _CopyWithImpl$Query$Notifications$notifications<TRes>
    implements CopyWith$Query$Notifications$notifications<TRes> {
  _CopyWithImpl$Query$Notifications$notifications(
    this._instance,
    this._then,
  );

  final Query$Notifications$notifications _instance;

  final TRes Function(Query$Notifications$notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? message = _undefined,
    Object? model = _undefined,
    Object? modelId = _undefined,
    Object? modelGroup = _undefined,
    Object? isRead = _undefined,
    Object? delivered = _undefined,
    Object? deleted = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? meta = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$notifications(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        model: model == _undefined || model == null
            ? _instance.model
            : (model as String),
        modelId: modelId == _undefined || modelId == null
            ? _instance.modelId
            : (modelId as String),
        modelGroup: modelGroup == _undefined
            ? _instance.modelGroup
            : (modelGroup as String?),
        isRead: isRead == _undefined || isRead == null
            ? _instance.isRead
            : (isRead as bool),
        delivered: delivered == _undefined || delivered == null
            ? _instance.delivered
            : (delivered as bool),
        deleted: deleted == _undefined || deleted == null
            ? _instance.deleted
            : (deleted as bool),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        meta: meta == _undefined ? _instance.meta : (meta as String?),
        sender: sender == _undefined
            ? _instance.sender
            : (sender as Query$Notifications$notifications$sender?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$notifications$sender<TRes> get sender {
    final local$sender = _instance.sender;
    return local$sender == null
        ? CopyWith$Query$Notifications$notifications$sender.stub(
            _then(_instance))
        : CopyWith$Query$Notifications$notifications$sender(
            local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$notifications<TRes>
    implements CopyWith$Query$Notifications$notifications<TRes> {
  _CopyWithStubImpl$Query$Notifications$notifications(this._res);

  TRes _res;

  call({
    String? id,
    String? message,
    String? model,
    String? modelId,
    String? modelGroup,
    bool? isRead,
    bool? delivered,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? meta,
    Query$Notifications$notifications$sender? sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$notifications$sender<TRes> get sender =>
      CopyWith$Query$Notifications$notifications$sender.stub(_res);
}

class Query$Notifications$notifications$sender {
  Query$Notifications$notifications$sender({
    this.username,
    this.profilePictureUrl,
    this.thumbnailUrl,
    this.$__typename = 'SenderType',
  });

  factory Query$Notifications$notifications$sender.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$profilePictureUrl = json['profilePictureUrl'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$notifications$sender(
      username: (l$username as String?),
      profilePictureUrl: (l$profilePictureUrl as String?),
      thumbnailUrl: (l$thumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? username;

  final String? profilePictureUrl;

  final String? thumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
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
    final l$username = username;
    final l$profilePictureUrl = profilePictureUrl;
    final l$thumbnailUrl = thumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
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
    if (other is! Query$Notifications$notifications$sender ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Notifications$notifications$sender
    on Query$Notifications$notifications$sender {
  CopyWith$Query$Notifications$notifications$sender<
          Query$Notifications$notifications$sender>
      get copyWith => CopyWith$Query$Notifications$notifications$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$notifications$sender<TRes> {
  factory CopyWith$Query$Notifications$notifications$sender(
    Query$Notifications$notifications$sender instance,
    TRes Function(Query$Notifications$notifications$sender) then,
  ) = _CopyWithImpl$Query$Notifications$notifications$sender;

  factory CopyWith$Query$Notifications$notifications$sender.stub(TRes res) =
      _CopyWithStubImpl$Query$Notifications$notifications$sender;

  TRes call({
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$notifications$sender<TRes>
    implements CopyWith$Query$Notifications$notifications$sender<TRes> {
  _CopyWithImpl$Query$Notifications$notifications$sender(
    this._instance,
    this._then,
  );

  final Query$Notifications$notifications$sender _instance;

  final TRes Function(Query$Notifications$notifications$sender) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? profilePictureUrl = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$notifications$sender(
        username:
            username == _undefined ? _instance.username : (username as String?),
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

class _CopyWithStubImpl$Query$Notifications$notifications$sender<TRes>
    implements CopyWith$Query$Notifications$notifications$sender<TRes> {
  _CopyWithStubImpl$Query$Notifications$notifications$sender(this._res);

  TRes _res;

  call({
    String? username,
    String? profilePictureUrl,
    String? thumbnailUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$NotificationPreference {
  Query$NotificationPreference({
    this.notificationPreference,
    this.$__typename = 'Query',
  });

  factory Query$NotificationPreference.fromJson(Map<String, dynamic> json) {
    final l$notificationPreference = json['notificationPreference'];
    final l$$__typename = json['__typename'];
    return Query$NotificationPreference(
      notificationPreference: l$notificationPreference == null
          ? null
          : Query$NotificationPreference$notificationPreference.fromJson(
              (l$notificationPreference as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationPreference$notificationPreference?
      notificationPreference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationPreference = notificationPreference;
    _resultData['notificationPreference'] = l$notificationPreference?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationPreference = notificationPreference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notificationPreference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$NotificationPreference ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$NotificationPreference
    on Query$NotificationPreference {
  CopyWith$Query$NotificationPreference<Query$NotificationPreference>
      get copyWith => CopyWith$Query$NotificationPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationPreference<TRes> {
  factory CopyWith$Query$NotificationPreference(
    Query$NotificationPreference instance,
    TRes Function(Query$NotificationPreference) then,
  ) = _CopyWithImpl$Query$NotificationPreference;

  factory CopyWith$Query$NotificationPreference.stub(TRes res) =
      _CopyWithStubImpl$Query$NotificationPreference;

  TRes call({
    Query$NotificationPreference$notificationPreference? notificationPreference,
    String? $__typename,
  });
  CopyWith$Query$NotificationPreference$notificationPreference<TRes>
      get notificationPreference;
}

class _CopyWithImpl$Query$NotificationPreference<TRes>
    implements CopyWith$Query$NotificationPreference<TRes> {
  _CopyWithImpl$Query$NotificationPreference(
    this._instance,
    this._then,
  );

  final Query$NotificationPreference _instance;

  final TRes Function(Query$NotificationPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notificationPreference = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationPreference(
        notificationPreference: notificationPreference == _undefined
            ? _instance.notificationPreference
            : (notificationPreference
                as Query$NotificationPreference$notificationPreference?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NotificationPreference$notificationPreference<TRes>
      get notificationPreference {
    final local$notificationPreference = _instance.notificationPreference;
    return local$notificationPreference == null
        ? CopyWith$Query$NotificationPreference$notificationPreference.stub(
            _then(_instance))
        : CopyWith$Query$NotificationPreference$notificationPreference(
            local$notificationPreference,
            (e) => call(notificationPreference: e));
  }
}

class _CopyWithStubImpl$Query$NotificationPreference<TRes>
    implements CopyWith$Query$NotificationPreference<TRes> {
  _CopyWithStubImpl$Query$NotificationPreference(this._res);

  TRes _res;

  call({
    Query$NotificationPreference$notificationPreference? notificationPreference,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NotificationPreference$notificationPreference<TRes>
      get notificationPreference =>
          CopyWith$Query$NotificationPreference$notificationPreference.stub(
              _res);
}

const documentNodeQueryNotificationPreference = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'NotificationPreference'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
]);
Query$NotificationPreference _parserFn$Query$NotificationPreference(
        Map<String, dynamic> data) =>
    Query$NotificationPreference.fromJson(data);
typedef OnQueryComplete$Query$NotificationPreference = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$NotificationPreference?,
);

class Options$Query$NotificationPreference
    extends graphql.QueryOptions<Query$NotificationPreference> {
  Options$Query$NotificationPreference({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationPreference? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$NotificationPreference? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$NotificationPreference(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotificationPreference,
          parserFn: _parserFn$Query$NotificationPreference,
        );

  final OnQueryComplete$Query$NotificationPreference? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$NotificationPreference
    extends graphql.WatchQueryOptions<Query$NotificationPreference> {
  WatchOptions$Query$NotificationPreference({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationPreference? typedOptimisticResult,
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
          document: documentNodeQueryNotificationPreference,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$NotificationPreference,
        );
}

class FetchMoreOptions$Query$NotificationPreference
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$NotificationPreference(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryNotificationPreference,
        );
}

extension ClientExtension$Query$NotificationPreference
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$NotificationPreference>>
      query$NotificationPreference(
              [Options$Query$NotificationPreference? options]) async =>
          await this.query(options ?? Options$Query$NotificationPreference());
  graphql.ObservableQuery<
      Query$NotificationPreference> watchQuery$NotificationPreference(
          [WatchOptions$Query$NotificationPreference? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$NotificationPreference());
  void writeQuery$NotificationPreference({
    required Query$NotificationPreference data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryNotificationPreference)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$NotificationPreference? readQuery$NotificationPreference(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryNotificationPreference)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$NotificationPreference.fromJson(result);
  }
}

class Query$NotificationPreference$notificationPreference {
  Query$NotificationPreference$notificationPreference({
    this.user,
    required this.isPushNotification,
    required this.isEmailNotification,
    required this.inappNotifications,
    required this.emailNotifications,
    this.$__typename = 'NotificationPreferenceType',
  });

  factory Query$NotificationPreference$notificationPreference.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$isPushNotification = json['isPushNotification'];
    final l$isEmailNotification = json['isEmailNotification'];
    final l$inappNotifications = json['inappNotifications'];
    final l$emailNotifications = json['emailNotifications'];
    final l$$__typename = json['__typename'];
    return Query$NotificationPreference$notificationPreference(
      user: l$user == null
          ? null
          : Query$NotificationPreference$notificationPreference$user.fromJson(
              (l$user as Map<String, dynamic>)),
      isPushNotification: (l$isPushNotification as bool),
      isEmailNotification: (l$isEmailNotification as bool),
      inappNotifications: (l$inappNotifications as String),
      emailNotifications: (l$emailNotifications as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationPreference$notificationPreference$user? user;

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
    if (other is! Query$NotificationPreference$notificationPreference ||
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

extension UtilityExtension$Query$NotificationPreference$notificationPreference
    on Query$NotificationPreference$notificationPreference {
  CopyWith$Query$NotificationPreference$notificationPreference<
          Query$NotificationPreference$notificationPreference>
      get copyWith =>
          CopyWith$Query$NotificationPreference$notificationPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationPreference$notificationPreference<
    TRes> {
  factory CopyWith$Query$NotificationPreference$notificationPreference(
    Query$NotificationPreference$notificationPreference instance,
    TRes Function(Query$NotificationPreference$notificationPreference) then,
  ) = _CopyWithImpl$Query$NotificationPreference$notificationPreference;

  factory CopyWith$Query$NotificationPreference$notificationPreference.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationPreference$notificationPreference;

  TRes call({
    Query$NotificationPreference$notificationPreference$user? user,
    bool? isPushNotification,
    bool? isEmailNotification,
    String? inappNotifications,
    String? emailNotifications,
    String? $__typename,
  });
  CopyWith$Query$NotificationPreference$notificationPreference$user<TRes>
      get user;
}

class _CopyWithImpl$Query$NotificationPreference$notificationPreference<TRes>
    implements
        CopyWith$Query$NotificationPreference$notificationPreference<TRes> {
  _CopyWithImpl$Query$NotificationPreference$notificationPreference(
    this._instance,
    this._then,
  );

  final Query$NotificationPreference$notificationPreference _instance;

  final TRes Function(Query$NotificationPreference$notificationPreference)
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
      _then(Query$NotificationPreference$notificationPreference(
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$NotificationPreference$notificationPreference$user?),
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

  CopyWith$Query$NotificationPreference$notificationPreference$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$NotificationPreference$notificationPreference$user
            .stub(_then(_instance))
        : CopyWith$Query$NotificationPreference$notificationPreference$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$NotificationPreference$notificationPreference<
        TRes>
    implements
        CopyWith$Query$NotificationPreference$notificationPreference<TRes> {
  _CopyWithStubImpl$Query$NotificationPreference$notificationPreference(
      this._res);

  TRes _res;

  call({
    Query$NotificationPreference$notificationPreference$user? user,
    bool? isPushNotification,
    bool? isEmailNotification,
    String? inappNotifications,
    String? emailNotifications,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NotificationPreference$notificationPreference$user<TRes>
      get user =>
          CopyWith$Query$NotificationPreference$notificationPreference$user
              .stub(_res);
}

class Query$NotificationPreference$notificationPreference$user {
  Query$NotificationPreference$notificationPreference$user({
    this.id,
    this.username,
    this.$__typename = 'UserType',
  });

  factory Query$NotificationPreference$notificationPreference$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$NotificationPreference$notificationPreference$user(
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
    if (other is! Query$NotificationPreference$notificationPreference$user ||
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

extension UtilityExtension$Query$NotificationPreference$notificationPreference$user
    on Query$NotificationPreference$notificationPreference$user {
  CopyWith$Query$NotificationPreference$notificationPreference$user<
          Query$NotificationPreference$notificationPreference$user>
      get copyWith =>
          CopyWith$Query$NotificationPreference$notificationPreference$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationPreference$notificationPreference$user<
    TRes> {
  factory CopyWith$Query$NotificationPreference$notificationPreference$user(
    Query$NotificationPreference$notificationPreference$user instance,
    TRes Function(Query$NotificationPreference$notificationPreference$user)
        then,
  ) = _CopyWithImpl$Query$NotificationPreference$notificationPreference$user;

  factory CopyWith$Query$NotificationPreference$notificationPreference$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationPreference$notificationPreference$user;

  TRes call({
    int? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NotificationPreference$notificationPreference$user<
        TRes>
    implements
        CopyWith$Query$NotificationPreference$notificationPreference$user<
            TRes> {
  _CopyWithImpl$Query$NotificationPreference$notificationPreference$user(
    this._instance,
    this._then,
  );

  final Query$NotificationPreference$notificationPreference$user _instance;

  final TRes Function(Query$NotificationPreference$notificationPreference$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationPreference$notificationPreference$user(
        id: id == _undefined ? _instance.id : (id as int?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NotificationPreference$notificationPreference$user<
        TRes>
    implements
        CopyWith$Query$NotificationPreference$notificationPreference$user<
            TRes> {
  _CopyWithStubImpl$Query$NotificationPreference$notificationPreference$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}
