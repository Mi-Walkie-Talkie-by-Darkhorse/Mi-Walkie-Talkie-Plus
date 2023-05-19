.class public final Lcom/ifengyu/intercom/database/a/j;
.super Ljava/lang/Object;
.source "ShareLocationDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/database/a/i;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/database/a/j$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/j$a;-><init>(Lcom/ifengyu/intercom/database/a/j;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/j;->b:Landroidx/room/c0;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/database/a/j$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/j$b;-><init>(Lcom/ifengyu/intercom/database/a/j;Landroidx/room/RoomDatabase;)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/j$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/j$c;-><init>(Lcom/ifengyu/intercom/database/a/j;Landroidx/room/RoomDatabase;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/database/a/j$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/j$d;-><init>(Lcom/ifengyu/intercom/database/a/j;Landroidx/room/RoomDatabase;)V

    return-void
.end method

.method public static d()Ljava/util/List;
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
.method public a(II)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "select * from share_location where user_id != ? and time > ?"

    const/4 v2, 0x2

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {v3, v0, v4, v5}, Landroidx/room/q0;->c(IJ)V

    move/from16 v0, p2

    int-to-long v4, v0

    .line 3
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 4
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 6
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "user_id"

    .line 7
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 8
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "img_url"

    .line 9
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "longitude"

    .line 10
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "latitude"

    .line 11
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "altitude"

    .line 12
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "time"

    .line 13
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "freq"

    .line 14
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "rx_css"

    .line 15
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "from_dev_type"

    .line 16
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 17
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;

    invoke-direct {v4}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;-><init>()V

    .line 20
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_0

    move/from16 p2, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 p2, v0

    move-object/from16 v0, v16

    .line 22
    :goto_1
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setId(Ljava/lang/Long;)V

    .line 23
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 24
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setUserId(I)V

    .line 25
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 26
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_2
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setName(Ljava/lang/String;)V

    .line 28
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 29
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_3
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setImgUrl(Ljava/lang/String;)V

    .line 31
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 32
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setLongitude(I)V

    .line 33
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 34
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setLatitude(I)V

    .line 35
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 36
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setAltitude(I)V

    .line 37
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 38
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setTime(I)V

    .line 39
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setFreq(I)V

    .line 41
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setRxCss(I)V

    .line 43
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 44
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setFromDevType(I)V

    .line 45
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p2

    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 47
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    .line 50
    throw v0
.end method

.method public b(Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/j;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public c(I)Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "select * from share_location where user_id = ? limit 1"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/q0;->c(IJ)V

    .line 3
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 4
    iget-object v0, v1, Lcom/ifengyu/intercom/database/a/j;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v2, v0}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "user_id"

    .line 6
    invoke-static {v2, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 7
    invoke-static {v2, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "img_url"

    .line 8
    invoke-static {v2, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "longitude"

    .line 9
    invoke-static {v2, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "latitude"

    .line 10
    invoke-static {v2, v9}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "altitude"

    .line 11
    invoke-static {v2, v10}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "time"

    .line 12
    invoke-static {v2, v11}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "freq"

    .line 13
    invoke-static {v2, v12}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "rx_css"

    .line 14
    invoke-static {v2, v13}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "from_dev_type"

    .line 15
    invoke-static {v2, v14}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 16
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 17
    new-instance v15, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;

    invoke-direct {v15}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;-><init>()V

    .line 18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setId(Ljava/lang/Long;)V

    .line 21
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 22
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setUserId(I)V

    .line 23
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_1
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setName(Ljava/lang/String;)V

    .line 26
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 28
    :goto_2
    invoke-virtual {v15, v4}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setImgUrl(Ljava/lang/String;)V

    .line 29
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 30
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setLongitude(I)V

    .line 31
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 32
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setLatitude(I)V

    .line 33
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 34
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setAltitude(I)V

    .line 35
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 36
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setTime(I)V

    .line 37
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 38
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setFreq(I)V

    .line 39
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setRxCss(I)V

    .line 41
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-virtual {v15, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->setFromDevType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v15

    .line 43
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 45
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v3}, Landroidx/room/q0;->k()V

    .line 47
    throw v0
.end method
