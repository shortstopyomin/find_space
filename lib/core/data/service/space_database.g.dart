// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_database.dart';

// ignore_for_file: type=lint
class $SpaceTableTable extends SpaceTable
    with TableInfo<$SpaceTableTable, Space> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpaceTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedColumn<String> group = GeneratedColumn<String>(
      'group', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List> image = GeneratedColumn<Uint8List>(
      'image', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, group, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'space_table';
  @override
  VerificationContext validateIntegrity(Insertable<Space> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Space map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Space(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      group: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}image']),
    );
  }

  @override
  $SpaceTableTable createAlias(String alias) {
    return $SpaceTableTable(attachedDatabase, alias);
  }
}

class SpaceTableCompanion extends UpdateCompanion<Space> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> group;
  final Value<Uint8List?> image;
  const SpaceTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.group = const Value.absent(),
    this.image = const Value.absent(),
  });
  SpaceTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String group,
    this.image = const Value.absent(),
  })  : name = Value(name),
        group = Value(group);
  static Insertable<Space> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? group,
    Expression<Uint8List>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (group != null) 'group': group,
      if (image != null) 'image': image,
    });
  }

  SpaceTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? group,
      Value<Uint8List?>? image}) {
    return SpaceTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      group: group ?? this.group,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpaceTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('group: $group, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $GroupTableTable extends GroupTable
    with TableInfo<$GroupTableTable, Group> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'group_table';
  @override
  VerificationContext validateIntegrity(Insertable<Group> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Group map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Group(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $GroupTableTable createAlias(String alias) {
    return $GroupTableTable(attachedDatabase, alias);
  }
}

class GroupTableCompanion extends UpdateCompanion<Group> {
  final Value<int> id;
  final Value<String> name;
  const GroupTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  GroupTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<Group> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  GroupTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return GroupTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$SpaceDatabase extends GeneratedDatabase {
  _$SpaceDatabase(QueryExecutor e) : super(e);
  $SpaceDatabaseManager get managers => $SpaceDatabaseManager(this);
  late final $SpaceTableTable spaceTable = $SpaceTableTable(this);
  late final $GroupTableTable groupTable = $GroupTableTable(this);
  late final SpaceDao spaceDao = SpaceDao(this as SpaceDatabase);
  late final GroupDao groupDao = GroupDao(this as SpaceDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [spaceTable, groupTable];
}

typedef $$SpaceTableTableCreateCompanionBuilder = SpaceTableCompanion Function({
  Value<int> id,
  required String name,
  required String group,
  Value<Uint8List?> image,
});
typedef $$SpaceTableTableUpdateCompanionBuilder = SpaceTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> group,
  Value<Uint8List?> image,
});

class $$SpaceTableTableTableManager extends RootTableManager<
    _$SpaceDatabase,
    $SpaceTableTable,
    Space,
    $$SpaceTableTableFilterComposer,
    $$SpaceTableTableOrderingComposer,
    $$SpaceTableTableCreateCompanionBuilder,
    $$SpaceTableTableUpdateCompanionBuilder> {
  $$SpaceTableTableTableManager(_$SpaceDatabase db, $SpaceTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SpaceTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SpaceTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> group = const Value.absent(),
            Value<Uint8List?> image = const Value.absent(),
          }) =>
              SpaceTableCompanion(
            id: id,
            name: name,
            group: group,
            image: image,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String group,
            Value<Uint8List?> image = const Value.absent(),
          }) =>
              SpaceTableCompanion.insert(
            id: id,
            name: name,
            group: group,
            image: image,
          ),
        ));
}

class $$SpaceTableTableFilterComposer
    extends FilterComposer<_$SpaceDatabase, $SpaceTableTable> {
  $$SpaceTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get group => $state.composableBuilder(
      column: $state.table.group,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SpaceTableTableOrderingComposer
    extends OrderingComposer<_$SpaceDatabase, $SpaceTableTable> {
  $$SpaceTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get group => $state.composableBuilder(
      column: $state.table.group,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$GroupTableTableCreateCompanionBuilder = GroupTableCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$GroupTableTableUpdateCompanionBuilder = GroupTableCompanion Function({
  Value<int> id,
  Value<String> name,
});

class $$GroupTableTableTableManager extends RootTableManager<
    _$SpaceDatabase,
    $GroupTableTable,
    Group,
    $$GroupTableTableFilterComposer,
    $$GroupTableTableOrderingComposer,
    $$GroupTableTableCreateCompanionBuilder,
    $$GroupTableTableUpdateCompanionBuilder> {
  $$GroupTableTableTableManager(_$SpaceDatabase db, $GroupTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GroupTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GroupTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              GroupTableCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              GroupTableCompanion.insert(
            id: id,
            name: name,
          ),
        ));
}

class $$GroupTableTableFilterComposer
    extends FilterComposer<_$SpaceDatabase, $GroupTableTable> {
  $$GroupTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$GroupTableTableOrderingComposer
    extends OrderingComposer<_$SpaceDatabase, $GroupTableTable> {
  $$GroupTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $SpaceDatabaseManager {
  final _$SpaceDatabase _db;
  $SpaceDatabaseManager(this._db);
  $$SpaceTableTableTableManager get spaceTable =>
      $$SpaceTableTableTableManager(_db, _db.spaceTable);
  $$GroupTableTableTableManager get groupTable =>
      $$GroupTableTableTableManager(_db, _db.groupTable);
}
