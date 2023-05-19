.class public final Lcom/ifengyu/intercom/database/AppDatabase_Impl;
.super Lcom/ifengyu/intercom/database/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile v:Lcom/ifengyu/intercom/database/a/c;

.field private volatile w:Lcom/ifengyu/intercom/database/a/a;

.field private volatile x:Lcom/ifengyu/intercom/database/a/e;

.field private volatile y:Lcom/ifengyu/intercom/database/a/g;

.field private volatile z:Lcom/ifengyu/intercom/database/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/database/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic K(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic L(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic M(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic N(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic O(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic P(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/ifengyu/intercom/database/AppDatabase_Impl;La/g/a/b;)La/g/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:La/g/a/b;

    return-object p1
.end method

.method static synthetic S(Lcom/ifengyu/intercom/database/AppDatabase_Impl;La/g/a/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->p(La/g/a/b;)V

    return-void
.end method

.method static synthetic T(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic U(Lcom/ifengyu/intercom/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public C()Lcom/ifengyu/intercom/database/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->w:Lcom/ifengyu/intercom/database/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->w:Lcom/ifengyu/intercom/database/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->w:Lcom/ifengyu/intercom/database/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/database/a/b;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->w:Lcom/ifengyu/intercom/database/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->w:Lcom/ifengyu/intercom/database/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public D()Lcom/ifengyu/intercom/database/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->v:Lcom/ifengyu/intercom/database/a/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->v:Lcom/ifengyu/intercom/database/a/c;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->v:Lcom/ifengyu/intercom/database/a/c;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/database/a/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->v:Lcom/ifengyu/intercom/database/a/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->v:Lcom/ifengyu/intercom/database/a/c;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E()Lcom/ifengyu/intercom/database/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->x:Lcom/ifengyu/intercom/database/a/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->x:Lcom/ifengyu/intercom/database/a/e;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->x:Lcom/ifengyu/intercom/database/a/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/database/a/f;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->x:Lcom/ifengyu/intercom/database/a/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->x:Lcom/ifengyu/intercom/database/a/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public H()Lcom/ifengyu/intercom/database/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->y:Lcom/ifengyu/intercom/database/a/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->y:Lcom/ifengyu/intercom/database/a/g;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->y:Lcom/ifengyu/intercom/database/a/g;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/database/a/h;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->y:Lcom/ifengyu/intercom/database/a/g;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->y:Lcom/ifengyu/intercom/database/a/g;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public I()Lcom/ifengyu/intercom/database/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->z:Lcom/ifengyu/intercom/database/a/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->z:Lcom/ifengyu/intercom/database/a/i;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->z:Lcom/ifengyu/intercom/database/a/i;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/database/a/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/database/a/j;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->z:Lcom/ifengyu/intercom/database/a/i;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/database/AppDatabase_Impl;->z:Lcom/ifengyu/intercom/database/a/i;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()Landroidx/room/g0;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/g0;

    const-string v3, "config_file"

    const-string v4, "channel"

    const-string v5, "device"

    const-string v6, "net_device"

    const-string v7, "share_location"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g0;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/z;)La/g/a/c;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/p0;

    new-instance v1, Lcom/ifengyu/intercom/database/AppDatabase_Impl$a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/database/AppDatabase_Impl$a;-><init>(Lcom/ifengyu/intercom/database/AppDatabase_Impl;I)V

    const-string v2, "dfa212f23e9f6c3367e7dc3c76f0a2a4"

    const-string v3, "0a5843b520e98b0cd0a185210be1c365"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/p0;-><init>(Landroidx/room/z;Landroidx/room/p0$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/z;->b:Landroid/content/Context;

    invoke-static {v1}, La/g/a/c$b;->a(Landroid/content/Context;)La/g/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/z;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, La/g/a/c$b$a;->c(Ljava/lang/String;)La/g/a/c$b$a;

    .line 4
    invoke-virtual {v1, v0}, La/g/a/c$b$a;->b(La/g/a/c$a;)La/g/a/c$b$a;

    .line 5
    invoke-virtual {v1}, La/g/a/c$b$a;->a()La/g/a/c$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/z;->a:La/g/a/c$c;

    invoke-interface {p1, v0}, La/g/a/c$c;->a(La/g/a/c$b;)La/g/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected k()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lcom/ifengyu/intercom/database/a/c;

    invoke-static {}, Lcom/ifengyu/intercom/database/a/d;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/ifengyu/intercom/database/a/a;

    invoke-static {}, Lcom/ifengyu/intercom/database/a/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/ifengyu/intercom/database/a/e;

    invoke-static {}, Lcom/ifengyu/intercom/database/a/f;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/ifengyu/intercom/database/a/g;

    invoke-static {}, Lcom/ifengyu/intercom/database/a/h;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/ifengyu/intercom/database/a/i;

    invoke-static {}, Lcom/ifengyu/intercom/database/a/j;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
