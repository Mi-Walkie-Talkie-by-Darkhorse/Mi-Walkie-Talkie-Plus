.class public final Lcom/ifengyu/intercom/node/a/a;
.super Ljava/lang/Object;
.source "ConnConfigsDBAdapter.java"


# instance fields
.field public final a:Lcom/ifengyu/intercom/node/a/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/a/a;->a:Lcom/ifengyu/intercom/node/a/b;

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "NULL_STRING"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v0

    :cond_0
    const-string v8, "NULL_STRING"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v0

    :cond_1
    if-gtz v7, :cond_2

    const/4 v3, 0x0

    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "NULL_STRING"

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/a;->a:Lcom/ifengyu/intercom/node/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connConfigs"

    const-string v3, "btAddress=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/ifengyu/intercom/node/a/a;->a(Landroid/database/Cursor;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method

.method public a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "ConnConfigsDBAdapter"

    const-string v1, "loadConnectionConfigs"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/a;->a:Lcom/ifengyu/intercom/node/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connConfigs"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/a/a;->a(Landroid/database/Cursor;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method

.method public a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 5

    const-string v0, "ConnConfigsDBAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConnectionConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NULL_STRING"

    :cond_0
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "btAddress"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connectionEnabled"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "nodeId"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "deviceColor"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/a;->a:Lcom/ifengyu/intercom/node/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "connConfigs"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "NULL_STRING"

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/a/a;->a:Lcom/ifengyu/intercom/node/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connConfigs"

    const-string v2, "btAddress=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
