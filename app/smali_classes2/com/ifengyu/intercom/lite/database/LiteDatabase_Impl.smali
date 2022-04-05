.class public final Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;
.super Lcom/ifengyu/intercom/lite/database/LiteDatabase;


# instance fields
.field private volatile o:Lcom/ifengyu/intercom/lite/f/c;

.field private volatile p:Lcom/ifengyu/intercom/lite/f/a;

.field private volatile q:Lcom/ifengyu/intercom/lite/f/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;La/g/a/b;)La/g/a/b;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:La/g/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;La/g/a/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->a(La/g/a/b;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected a(Landroidx/room/a;)La/g/a/c;
    .locals 4

    new-instance v0, Landroidx/room/k;

    new-instance v1, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl$a;-><init>(Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;I)V

    const-string v2, "f34577af7bab5f91c229bf2cd96116d1"

    const-string v3, "9af1cbaad0db77a241e3d2e287723eef"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/k;-><init>(Landroidx/room/a;Landroidx/room/k$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, La/g/a/c$b;->a(Landroid/content/Context;)La/g/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, La/g/a/c$b$a;->a(Ljava/lang/String;)La/g/a/c$b$a;

    invoke-virtual {v1, v0}, La/g/a/c$b$a;->a(La/g/a/c$a;)La/g/a/c$b$a;

    invoke-virtual {v1}, La/g/a/c$b$a;->a()La/g/a/c$b;

    move-result-object v0

    iget-object p1, p1, Landroidx/room/a;->a:La/g/a/c$c;

    invoke-interface {p1, v0}, La/g/a/c$c;->a(La/g/a/c$b;)La/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected d()Landroidx/room/g;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/g;

    const-string v3, "config_file"

    const-string v4, "channel"

    const-string v5, "device"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public l()Lcom/ifengyu/intercom/lite/f/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->p:Lcom/ifengyu/intercom/lite/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->p:Lcom/ifengyu/intercom/lite/f/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->p:Lcom/ifengyu/intercom/lite/f/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/lite/f/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/f/b;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->p:Lcom/ifengyu/intercom/lite/f/a;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->p:Lcom/ifengyu/intercom/lite/f/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Lcom/ifengyu/intercom/lite/f/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->o:Lcom/ifengyu/intercom/lite/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->o:Lcom/ifengyu/intercom/lite/f/c;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->o:Lcom/ifengyu/intercom/lite/f/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/lite/f/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/f/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->o:Lcom/ifengyu/intercom/lite/f/c;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->o:Lcom/ifengyu/intercom/lite/f/c;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n()Lcom/ifengyu/intercom/lite/f/e;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->q:Lcom/ifengyu/intercom/lite/f/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->q:Lcom/ifengyu/intercom/lite/f/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->q:Lcom/ifengyu/intercom/lite/f/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/lite/f/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/f/f;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->q:Lcom/ifengyu/intercom/lite/f/e;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/database/LiteDatabase_Impl;->q:Lcom/ifengyu/intercom/lite/f/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
