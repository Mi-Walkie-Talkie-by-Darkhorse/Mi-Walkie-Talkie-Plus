.class public final Lcom/ifengyu/intercom/lite/f/f;
.super Ljava/lang/Object;
.source "DeviceDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/lite/f/e;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/lite/f/f$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/f$a;-><init>(Lcom/ifengyu/intercom/lite/f/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->b:Landroidx/room/c;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/lite/f/f$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/f$b;-><init>(Lcom/ifengyu/intercom/lite/f/f;Landroidx/room/RoomDatabase;)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/lite/f/f$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/f$c;-><init>(Lcom/ifengyu/intercom/lite/f/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->c:Landroidx/room/b;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/lite/f/f$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/f$d;-><init>(Lcom/ifengyu/intercom/lite/f/f;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->d:Landroidx/room/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->d:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->a()La/g/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {v0, v1}, La/g/a/d;->bindNull(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, v1, p1}, La/g/a/d;->bindString(ILjava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 12
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->executeUpdateDelete()I

    move-result p1

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/f/f;->d:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->a(La/g/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/f/f;->d:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->a(La/g/a/f;)V

    .line 18
    throw p1
.end method

.method public a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->a(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method

.method public a()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "select * from device order by update_time desc"

    .line 19
    invoke-static {v2, v0}, Landroidx/room/l;->b(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v2

    .line 20
    iget-object v3, v1, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->b()V

    .line 21
    iget-object v3, v1, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/r/c;->a(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "id"

    .line 22
    invoke-static {v3, v5}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 23
    invoke-static {v3, v6}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    .line 24
    invoke-static {v3, v7}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_id"

    .line 25
    invoke-static {v3, v8}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_type"

    .line 26
    invoke-static {v3, v9}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_color"

    .line 27
    invoke-static {v3, v10}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "version_soft"

    .line 28
    invoke-static {v3, v11}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_hw"

    .line 29
    invoke-static {v3, v12}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version_voice"

    .line 30
    invoke-static {v3, v13}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "connected"

    .line 31
    invoke-static {v3, v14}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 32
    invoke-static {v3, v15}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "update_time"

    .line 33
    invoke-static {v3, v0}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "enabled"

    .line 34
    invoke-static {v3, v4}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "token"

    .line 35
    invoke-static {v3, v1}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 36
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v17, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    new-instance v1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;-><init>()V

    .line 39
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_0

    move/from16 v19, v5

    const/4 v5, 0x0

    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v5

    move-object/from16 v5, v18

    .line 41
    :goto_1
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setId(Ljava/lang/Long;)V

    .line 42
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 44
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 46
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 48
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 49
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceType(I)V

    .line 50
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 51
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceColor(I)V

    .line 52
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 53
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionSoft(I)V

    .line 54
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 55
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionHw(I)V

    .line 56
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 57
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionVoice(I)V

    .line 58
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v18, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 59
    :goto_2
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    move/from16 v20, v6

    .line 60
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 61
    invoke-virtual {v1, v5, v6}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setCreateTime(J)V

    .line 62
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 63
    invoke-virtual {v1, v5, v6}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setUpdateTime(J)V

    .line 64
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 65
    :goto_3
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setEnabled(Z)V

    move/from16 v5, v17

    .line 66
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v1, v6}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setToken(Ljava/lang/String;)V

    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v5

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_0

    .line 69
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 70
    invoke-virtual/range {v16 .. v16}, Landroidx/room/l;->b()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 71
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 72
    invoke-virtual/range {v16 .. v16}, Landroidx/room/l;->b()V

    .line 73
    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "select * from device where address = ? limit 1"

    .line 7
    invoke-static {v3, v2}, Landroidx/room/l;->b(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v3

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {v3, v2}, Landroidx/room/l;->bindNull(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/l;->bindString(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, v1, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 11
    iget-object v0, v1, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4}, Landroidx/room/r/c;->a(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 12
    invoke-static {v6, v0}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "name"

    .line 13
    invoke-static {v6, v7}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "address"

    .line 14
    invoke-static {v6, v8}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_id"

    .line 15
    invoke-static {v6, v9}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "device_type"

    .line 16
    invoke-static {v6, v10}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "device_color"

    .line 17
    invoke-static {v6, v11}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "version_soft"

    .line 18
    invoke-static {v6, v12}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "version_hw"

    .line 19
    invoke-static {v6, v13}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "version_voice"

    .line 20
    invoke-static {v6, v14}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "connected"

    .line 21
    invoke-static {v6, v15}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "create_time"

    .line 22
    invoke-static {v6, v2}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "update_time"

    .line 23
    invoke-static {v6, v4}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "enabled"

    .line 24
    invoke-static {v6, v5}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "token"

    .line 25
    invoke-static {v6, v1}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v16, :cond_4

    move-object/from16 v16, v3

    .line 27
    :try_start_1
    new-instance v3, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;-><init>()V

    .line 28
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 30
    :goto_1
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setId(Ljava/lang/Long;)V

    .line 31
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 33
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 35
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 37
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 38
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceType(I)V

    .line 39
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceColor(I)V

    .line 41
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionSoft(I)V

    .line 43
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 44
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionHw(I)V

    .line 45
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 46
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionVoice(I)V

    .line 47
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_2
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    .line 49
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 50
    invoke-virtual {v3, v7, v8}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setCreateTime(J)V

    .line 51
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 52
    invoke-virtual {v3, v7, v8}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setUpdateTime(J)V

    .line 53
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 54
    :goto_3
    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setEnabled(Z)V

    .line 55
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    move-object/from16 v16, v3

    const/4 v4, 0x0

    .line 57
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 58
    invoke-virtual/range {v16 .. v16}, Landroidx/room/l;->b()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 59
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    invoke-virtual/range {v16 .. v16}, Landroidx/room/l;->b()V

    .line 61
    throw v0
.end method

.method public b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/f;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method
