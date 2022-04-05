.class public final Lcom/ifengyu/intercom/lite/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/lite/f/c;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/ifengyu/intercom/lite/f/d$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/d$a;-><init>(Lcom/ifengyu/intercom/lite/f/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->b:Landroidx/room/c;

    new-instance v0, Lcom/ifengyu/intercom/lite/f/d$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/d$b;-><init>(Lcom/ifengyu/intercom/lite/f/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->c:Landroidx/room/b;

    new-instance v0, Lcom/ifengyu/intercom/lite/f/d$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/d$c;-><init>(Lcom/ifengyu/intercom/lite/f/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->d:Landroidx/room/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "select * from config_file order by create_time desc"

    invoke-static {v1, v0}, Landroidx/room/l;->b(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/r/c;->a(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v2, "id"

    invoke-static {v0, v2}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "name"

    invoke-static {v0, v4}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "from"

    invoke-static {v0, v5}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "create_time"

    invoke-static {v0, v6}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "update_time"

    invoke-static {v0, v7}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-direct {v9}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;-><init>()V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v3

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_1
    invoke-virtual {v9, v10}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setId(Ljava/lang/Long;)V

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setName(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setCreateTime(J)V

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setUpdateTime(J)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/l;->b()V

    return-object v8

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/l;->b()V

    throw v2
.end method

.method public a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->d:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Iterable;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method

.method public b(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)J
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->a(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method
