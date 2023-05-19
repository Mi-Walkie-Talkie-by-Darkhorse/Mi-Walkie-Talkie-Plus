.class public final Lcom/ifengyu/intercom/database/a/f;
.super Ljava/lang/Object;
.source "DeviceDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/database/a/e;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b0<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/t0;

.field private final e:Landroidx/room/t0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/database/a/f$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/f$a;-><init>(Lcom/ifengyu/intercom/database/a/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->b:Landroidx/room/c0;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/database/a/f$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/f$b;-><init>(Lcom/ifengyu/intercom/database/a/f;Landroidx/room/RoomDatabase;)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/f$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/f$c;-><init>(Lcom/ifengyu/intercom/database/a/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->c:Landroidx/room/b0;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/database/a/f$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/f$d;-><init>(Lcom/ifengyu/intercom/database/a/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->d:Landroidx/room/t0;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/database/a/f$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/f$e;-><init>(Lcom/ifengyu/intercom/database/a/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->e:Landroidx/room/t0;

    return-void
.end method

.method public static k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from device order by update_time desc"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v5, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    .line 5
    invoke-static {v5, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    .line 6
    invoke-static {v5, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_id"

    .line 7
    invoke-static {v5, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_type"

    .line 8
    invoke-static {v5, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_color"

    .line 9
    invoke-static {v5, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "version_soft"

    .line 10
    invoke-static {v5, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_hw"

    .line 11
    invoke-static {v5, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version_voice"

    .line 12
    invoke-static {v5, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "connected"

    .line 13
    invoke-static {v5, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 14
    invoke-static {v5, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "update_time"

    .line 15
    invoke-static {v5, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "enabled"

    .line 16
    invoke-static {v5, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "token"

    .line 17
    invoke-static {v5, v1}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "agreed_protocol_version"

    .line 18
    invoke-static {v5, v3}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v18, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    new-instance v1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 22
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move/from16 v20, v0

    move-object/from16 v0, v19

    .line 24
    :goto_1
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setId(Ljava/lang/Long;)V

    .line 25
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 26
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_2
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 28
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 29
    :cond_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_3
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 31
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    .line 32
    :cond_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_4
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 34
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 35
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 36
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 38
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 40
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionHw(I)V

    .line 42
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionVoice(I)V

    .line 44
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v19, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 45
    :goto_5
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    move v0, v6

    move/from16 v21, v7

    .line 46
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 47
    invoke-virtual {v1, v6, v7}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 48
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 49
    invoke-virtual {v1, v6, v7}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 50
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    .line 51
    :goto_6
    invoke-virtual {v1, v6}, Lcom/ifengyu/intercom/models/DeviceModel;->setEnabled(Z)V

    move/from16 v6, v18

    .line 52
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_7

    .line 53
    :cond_6
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 54
    :goto_7
    invoke-virtual {v1, v7}, Lcom/ifengyu/intercom/models/DeviceModel;->setToken(Ljava/lang/String;)V

    move/from16 v7, v17

    move/from16 v17, v0

    .line 55
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 56
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAgreedProtocolVersion(I)V

    .line 57
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v6

    move/from16 v6, v17

    move/from16 v0, v20

    move/from16 v17, v7

    move/from16 v7, v21

    goto/16 :goto_0

    .line 58
    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 59
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 60
    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 62
    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "select * from device where device_id = ? limit 1"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Landroidx/room/q0;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/q0;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 6
    invoke-static {v6, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "name"

    .line 7
    invoke-static {v6, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "address"

    .line 8
    invoke-static {v6, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_id"

    .line 9
    invoke-static {v6, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_type"

    .line 10
    invoke-static {v6, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "device_color"

    .line 11
    invoke-static {v6, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_soft"

    .line 12
    invoke-static {v6, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version_hw"

    .line 13
    invoke-static {v6, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "version_voice"

    .line 14
    invoke-static {v6, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "connected"

    .line 15
    invoke-static {v6, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "create_time"

    .line 16
    invoke-static {v6, v3}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "update_time"

    .line 17
    invoke-static {v6, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "enabled"

    .line 18
    invoke-static {v6, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "token"

    .line 19
    invoke-static {v6, v1}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "agreed_protocol_version"

    .line 20
    invoke-static {v6, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v2

    .line 22
    new-instance v2, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 23
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    :goto_1
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setId(Ljava/lang/Long;)V

    .line 26
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_2
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 29
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 30
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_3
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 32
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 33
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_4
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 35
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 36
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 37
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 38
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 39
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 41
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionHw(I)V

    .line 43
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 44
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionVoice(I)V

    .line 45
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 46
    :goto_5
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    .line 47
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 48
    invoke-virtual {v2, v7, v8}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 49
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 50
    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 51
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 52
    :goto_6
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/models/DeviceModel;->setEnabled(Z)V

    .line 53
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    goto :goto_7

    .line 54
    :cond_7
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    :goto_7
    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/models/DeviceModel;->setToken(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 56
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 57
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAgreedProtocolVersion(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v2

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    .line 58
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 60
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 62
    throw v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->d:Landroidx/room/t0;

    invoke-virtual {v0}, Landroidx/room/t0;->a()La/g/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->q()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->d:Landroidx/room/t0;

    invoke-virtual {v1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->d:Landroidx/room/t0;

    invoke-virtual {v1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    .line 12
    throw p1
.end method

.method public e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->e:Landroidx/room/t0;

    invoke-virtual {v0}, Landroidx/room/t0;->a()La/g/a/f;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 3
    invoke-interface {v0, p1, v1, v2}, La/g/a/d;->c(IJ)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 5
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->q()I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->e:Landroidx/room/t0;

    invoke-virtual {v1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/f;->e:Landroidx/room/t0;

    invoke-virtual {v1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    .line 11
    throw p1
.end method

.method public f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "select * from device where address = ? limit 1"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Landroidx/room/q0;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/q0;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 6
    invoke-static {v6, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "name"

    .line 7
    invoke-static {v6, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "address"

    .line 8
    invoke-static {v6, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_id"

    .line 9
    invoke-static {v6, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_type"

    .line 10
    invoke-static {v6, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "device_color"

    .line 11
    invoke-static {v6, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_soft"

    .line 12
    invoke-static {v6, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version_hw"

    .line 13
    invoke-static {v6, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "version_voice"

    .line 14
    invoke-static {v6, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "connected"

    .line 15
    invoke-static {v6, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "create_time"

    .line 16
    invoke-static {v6, v3}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "update_time"

    .line 17
    invoke-static {v6, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "enabled"

    .line 18
    invoke-static {v6, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "token"

    .line 19
    invoke-static {v6, v1}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "agreed_protocol_version"

    .line 20
    invoke-static {v6, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v2

    .line 22
    new-instance v2, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 23
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    :goto_1
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setId(Ljava/lang/Long;)V

    .line 26
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_2
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 29
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 30
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_3
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 32
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 33
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_4
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 35
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 36
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 37
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 38
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 39
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 41
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionHw(I)V

    .line 43
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 44
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionVoice(I)V

    .line 45
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 46
    :goto_5
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    .line 47
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 48
    invoke-virtual {v2, v7, v8}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 49
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 50
    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 51
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 52
    :goto_6
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/models/DeviceModel;->setEnabled(Z)V

    .line 53
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    goto :goto_7

    .line 54
    :cond_7
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    :goto_7
    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/models/DeviceModel;->setToken(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 56
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 57
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAgreedProtocolVersion(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v2

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    .line 58
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 60
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 62
    throw v0
.end method

.method public g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->c:Landroidx/room/b0;

    invoke-virtual {v0, p1}, Landroidx/room/b0;->i(Ljava/lang/Iterable;)I

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public h(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->c:Landroidx/room/b0;

    invoke-virtual {v0, p1}, Landroidx/room/b0;->h(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public i(I)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from device where device_type = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 3
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 4
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v6, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "name"

    .line 6
    invoke-static {v6, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "address"

    .line 7
    invoke-static {v6, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_id"

    .line 8
    invoke-static {v6, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_type"

    .line 9
    invoke-static {v6, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "device_color"

    .line 10
    invoke-static {v6, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_soft"

    .line 11
    invoke-static {v6, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version_hw"

    .line 12
    invoke-static {v6, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "version_voice"

    .line 13
    invoke-static {v6, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "connected"

    .line 14
    invoke-static {v6, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "create_time"

    .line 15
    invoke-static {v6, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "update_time"

    .line 16
    invoke-static {v6, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "enabled"

    .line 17
    invoke-static {v6, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "token"

    .line 18
    invoke-static {v6, v1}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "agreed_protocol_version"

    .line 19
    invoke-static {v6, v3}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v18, v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    new-instance v1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 23
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move/from16 v20, v0

    move-object/from16 v0, v19

    .line 25
    :goto_1
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setId(Ljava/lang/Long;)V

    .line 26
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 27
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_2
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 29
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 30
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_3
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 32
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    .line 33
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_4
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 35
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 37
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 38
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 39
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 41
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionHw(I)V

    .line 43
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionVoice(I)V

    .line 45
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 46
    :goto_5
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    move v0, v7

    move/from16 v19, v8

    .line 47
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 48
    invoke-virtual {v1, v7, v8}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 49
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 50
    invoke-virtual {v1, v7, v8}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 51
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    .line 52
    :goto_6
    invoke-virtual {v1, v7}, Lcom/ifengyu/intercom/models/DeviceModel;->setEnabled(Z)V

    move/from16 v7, v18

    .line 53
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_7

    .line 54
    :cond_6
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 55
    :goto_7
    invoke-virtual {v1, v8}, Lcom/ifengyu/intercom/models/DeviceModel;->setToken(Ljava/lang/String;)V

    move/from16 v8, v17

    move/from16 v17, v0

    .line 56
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 57
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAgreedProtocolVersion(I)V

    .line 58
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 v0, v20

    move/from16 v17, v8

    move/from16 v8, v19

    goto/16 :goto_0

    .line 59
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 61
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 62
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 63
    throw v0
.end method

.method public j(Lcom/ifengyu/intercom/models/DeviceModel;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method
