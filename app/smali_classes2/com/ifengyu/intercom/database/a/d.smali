.class public final Lcom/ifengyu/intercom/database/a/d;
.super Ljava/lang/Object;
.source "ConfigFileDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/database/a/c;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b0<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b0<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
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
    iput-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/database/a/d$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/d$a;-><init>(Lcom/ifengyu/intercom/database/a/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->b:Landroidx/room/c0;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/database/a/d$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/d$b;-><init>(Lcom/ifengyu/intercom/database/a/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->c:Landroidx/room/b0;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/d$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/database/a/d$c;-><init>(Lcom/ifengyu/intercom/database/a/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->d:Landroidx/room/b0;

    return-void
.end method

.method public static a()Ljava/util/List;
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
.method public b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from config_file order by create_time desc"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "name"

    .line 5
    invoke-static {v1, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "from"

    .line 6
    invoke-static {v1, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "create_time"

    .line 7
    invoke-static {v1, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "update_time"

    .line 8
    invoke-static {v1, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "from_device_type"

    .line 9
    invoke-static {v1, v8}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 10
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 12
    new-instance v10, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-direct {v10}, Lcom/ifengyu/intercom/models/ConfigFileModel;-><init>()V

    .line 13
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 15
    :goto_1
    invoke-virtual {v10, v11}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setId(Ljava/lang/Long;)V

    .line 16
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v3

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 18
    :goto_2
    invoke-virtual {v10, v11}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setName(Ljava/lang/String;)V

    .line 19
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v3

    goto :goto_3

    .line 20
    :cond_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 21
    :goto_3
    invoke-virtual {v10, v11}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 23
    invoke-virtual {v10, v11, v12}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setCreateTime(J)V

    .line 24
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 25
    invoke-virtual {v10, v11, v12}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setUpdateTime(J)V

    .line 26
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 27
    invoke-virtual {v10, v11}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFromDeviceType(I)V

    .line 28
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 30
    invoke-virtual {v0}, Landroidx/room/q0;->k()V

    return-object v9

    :catchall_0
    move-exception v2

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 32
    invoke-virtual {v0}, Landroidx/room/q0;->k()V

    .line 33
    throw v2
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->c:Landroidx/room/b0;

    invoke-virtual {v0, p1}, Landroidx/room/b0;->i(Ljava/lang/Iterable;)I

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public d(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->d:Landroidx/room/b0;

    invoke-virtual {v0, p1}, Landroidx/room/b0;->h(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method

.method public e(Lcom/ifengyu/intercom/models/ConfigFileModel;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 6
    throw p1
.end method
