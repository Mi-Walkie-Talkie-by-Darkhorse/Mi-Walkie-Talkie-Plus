.class public final Lcom/ifengyu/intercom/database/a/h;
.super Ljava/lang/Object;
.source "NetDeviceDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/database/a/g;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/intercom/models/NetDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/t0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/database/a/h$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/h$a;-><init>(Lcom/ifengyu/intercom/database/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->b:Landroidx/room/c0;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/database/a/h$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/h$b;-><init>(Lcom/ifengyu/intercom/database/a/h;Landroidx/room/RoomDatabase;)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/h$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/h$c;-><init>(Lcom/ifengyu/intercom/database/a/h;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->c:Landroidx/room/t0;

    return-void
.end method

.method public static f()Ljava/util/List;
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
            "Lcom/ifengyu/intercom/models/NetDeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->c:Landroidx/room/t0;

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
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->q()I

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->c:Landroidx/room/t0;

    invoke-virtual {p1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/database/a/h;->c:Landroidx/room/t0;

    invoke-virtual {v1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    .line 12
    throw p1
.end method

.method public c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/NetDeviceModel;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "select * from net_device where sn = ? limit 1"

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
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 6
    invoke-static {v3, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "sn"

    .line 7
    invoke-static {v3, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "user_id"

    .line 8
    invoke-static {v3, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "account"

    .line 9
    invoke-static {v3, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "nickname"

    .line 10
    invoke-static {v3, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "avatar"

    .line 11
    invoke-static {v3, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "user_type"

    .line 12
    invoke-static {v3, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "online"

    .line 13
    invoke-static {v3, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "battery"

    .line 14
    invoke-static {v3, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "bindTime"

    .line 15
    invoke-static {v3, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "imei"

    .line 16
    invoke-static {v3, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "iccid"

    .line 17
    invoke-static {v3, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "color"

    .line 18
    invoke-static {v3, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "hw_version"

    .line 19
    invoke-static {v3, v1}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "sw_version"

    .line 20
    invoke-static {v3, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "fw_version"

    .line 21
    invoke-static {v3, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v2

    .line 23
    new-instance v2, Lcom/ifengyu/intercom/models/NetDeviceModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/NetDeviceModel;-><init>()V

    .line 24
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 25
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 26
    :goto_1
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setId(Ljava/lang/Long;)V

    .line 27
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 28
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_2
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setSn(Ljava/lang/String;)V

    .line 30
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 31
    invoke-virtual {v2, v5, v6}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setUserId(J)V

    .line 32
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 33
    :cond_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_3
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setAccount(Ljava/lang/String;)V

    .line 35
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 36
    :cond_4
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_4
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setNickname(Ljava/lang/String;)V

    .line 38
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 39
    :cond_5
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_5
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setAvatar(Ljava/lang/String;)V

    .line 41
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setUserType(I)V

    .line 43
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 44
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setOnline(I)V

    .line 45
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 46
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setBattery(I)V

    .line 47
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 48
    invoke-virtual {v2, v5, v6}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setBindTime(J)V

    .line 49
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 50
    :cond_6
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_6
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setImei(Ljava/lang/String;)V

    .line 52
    invoke-interface {v3, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 53
    :cond_7
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_7
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setIccid(Ljava/lang/String;)V

    .line 55
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 56
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setColor(I)V

    .line 57
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    .line 58
    :cond_8
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_8
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setHwVersion(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 60
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    .line 61
    :cond_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_9
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setSwVersion(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 63
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v4, 0x0

    goto :goto_a

    .line 64
    :cond_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    :goto_a
    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setFwVersion(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    .line 66
    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 67
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 68
    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 70
    throw v0
.end method

.method public d(Lcom/ifengyu/intercom/models/NetDeviceModel;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public e(J)Lcom/ifengyu/intercom/models/NetDeviceModel;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "select * from net_device where user_id = ? limit 1"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 3
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 4
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/h;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "sn"

    .line 6
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "user_id"

    .line 7
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "account"

    .line 8
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "nickname"

    .line 9
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "avatar"

    .line 10
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "user_type"

    .line 11
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "online"

    .line 12
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "battery"

    .line 13
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "bindTime"

    .line 14
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "imei"

    .line 15
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "iccid"

    .line 16
    invoke-static {v2, v15}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "color"

    .line 17
    invoke-static {v2, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "hw_version"

    .line 18
    invoke-static {v2, v1}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "sw_version"

    .line 19
    invoke-static {v2, v3}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p2, v3

    const-string v3, "fw_version"

    .line 20
    invoke-static {v2, v3}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v17, v3

    .line 22
    new-instance v3, Lcom/ifengyu/intercom/models/NetDeviceModel;

    invoke-direct {v3}, Lcom/ifengyu/intercom/models/NetDeviceModel;-><init>()V

    .line 23
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    :goto_0
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setId(Ljava/lang/Long;)V

    .line 26
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 27
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_1
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setSn(Ljava/lang/String;)V

    .line 29
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 30
    invoke-virtual {v3, v5, v6}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setUserId(J)V

    .line 31
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 32
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_2
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setAccount(Ljava/lang/String;)V

    .line 34
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 35
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_3
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setNickname(Ljava/lang/String;)V

    .line 37
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 38
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_4
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setAvatar(Ljava/lang/String;)V

    .line 40
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 41
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setUserType(I)V

    .line 42
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 43
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setOnline(I)V

    .line 44
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 45
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setBattery(I)V

    .line 46
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 47
    invoke-virtual {v3, v5, v6}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setBindTime(J)V

    .line 48
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 49
    :cond_5
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_5
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setImei(Ljava/lang/String;)V

    .line 51
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 52
    :cond_6
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_6
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setIccid(Ljava/lang/String;)V

    .line 54
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 55
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setColor(I)V

    .line 56
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 57
    :cond_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_7
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setHwVersion(Ljava/lang/String;)V

    move/from16 v0, p2

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    .line 60
    :cond_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_8
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setSwVersion(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 62
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    goto :goto_9

    .line 63
    :cond_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    :goto_9
    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/models/NetDeviceModel;->setFwVersion(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    .line 65
    :goto_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 66
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 67
    :goto_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-virtual/range {v16 .. v16}, Landroidx/room/q0;->k()V

    .line 69
    throw v0
.end method
