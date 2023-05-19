.class public final Lcom/ifengyu/talk/database/TalkDatabase_Impl;
.super Lcom/ifengyu/talk/database/TalkDatabase;
.source "TalkDatabase_Impl.java"


# instance fields
.field private volatile q:Lcom/ifengyu/talk/database/a/c;

.field private volatile r:Lcom/ifengyu/talk/database/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/talk/database/TalkDatabase;-><init>()V

    return-void
.end method

.method static synthetic H(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic I(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic J(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic K(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic L(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic M(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic N(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic O(Lcom/ifengyu/talk/database/TalkDatabase_Impl;La/g/a/b;)La/g/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:La/g/a/b;

    return-object p1
.end method

.method static synthetic P(Lcom/ifengyu/talk/database/TalkDatabase_Impl;La/g/a/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->p(La/g/a/b;)V

    return-void
.end method

.method static synthetic Q(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/ifengyu/talk/database/TalkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public C()Lcom/ifengyu/talk/database/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->r:Lcom/ifengyu/talk/database/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->r:Lcom/ifengyu/talk/database/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->r:Lcom/ifengyu/talk/database/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/talk/database/a/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/talk/database/a/b;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->r:Lcom/ifengyu/talk/database/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->r:Lcom/ifengyu/talk/database/a/a;

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

.method public F()Lcom/ifengyu/talk/database/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->q:Lcom/ifengyu/talk/database/a/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->q:Lcom/ifengyu/talk/database/a/c;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->q:Lcom/ifengyu/talk/database/a/c;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ifengyu/talk/database/a/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/talk/database/a/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->q:Lcom/ifengyu/talk/database/a/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/talk/database/TalkDatabase_Impl;->q:Lcom/ifengyu/talk/database/a/c;

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
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/g0;

    const-string v3, "recent_talk"

    const-string v4, "history_msg"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g0;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/z;)La/g/a/c;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/p0;

    new-instance v1, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/talk/database/TalkDatabase_Impl$a;-><init>(Lcom/ifengyu/talk/database/TalkDatabase_Impl;I)V

    const-string v2, "1a2919491c37bcd09cd87483a6a02888"

    const-string v3, "20dee1a3a7d7ff0d31fe9c38310c7ff6"

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
    const-class v1, Lcom/ifengyu/talk/database/a/c;

    invoke-static {}, Lcom/ifengyu/talk/database/a/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/ifengyu/talk/database/a/a;

    invoke-static {}, Lcom/ifengyu/talk/database/a/b;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
