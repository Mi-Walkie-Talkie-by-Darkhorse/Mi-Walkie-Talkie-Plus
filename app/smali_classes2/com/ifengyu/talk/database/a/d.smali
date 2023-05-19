.class public final Lcom/ifengyu/talk/database/a/d;
.super Ljava/lang/Object;
.source "RecentTalkDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/talk/database/a/c;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c0<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/t0;

.field private final d:Landroidx/room/t0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/talk/database/a/d$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/database/a/d$a;-><init>(Lcom/ifengyu/talk/database/a/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/a/d;->b:Landroidx/room/c0;

    .line 4
    new-instance v0, Lcom/ifengyu/talk/database/a/d$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/database/a/d$b;-><init>(Lcom/ifengyu/talk/database/a/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/a/d;->c:Landroidx/room/t0;

    .line 5
    new-instance v0, Lcom/ifengyu/talk/database/a/d$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/database/a/d$c;-><init>(Lcom/ifengyu/talk/database/a/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/talk/database/a/d;->d:Landroidx/room/t0;

    return-void
.end method

.method public static e()Ljava/util/List;
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
.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->c:Landroidx/room/t0;

    invoke-virtual {v0}, Landroidx/room/t0;->a()La/g/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, La/g/a/d;->c(IJ)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->c()V

    .line 5
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->q()I

    .line 6
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->g()V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/d;->c:Landroidx/room/t0;

    invoke-virtual {p1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->g()V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/talk/database/a/d;->c:Landroidx/room/t0;

    invoke-virtual {p2, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    .line 11
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from recent_talk"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/q0;->h(Ljava/lang/String;I)Landroidx/room/q0;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v2, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/w0/c;->b(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "group_id"

    .line 5
    invoke-static {v1, v4}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "group_name"

    .line 6
    invoke-static {v1, v5}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "group_avatar"

    .line 7
    invoke-static {v1, v6}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "update_time"

    .line 8
    invoke-static {v1, v7}, Landroidx/room/w0/b;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_msg_json_str"

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

    if-eqz v10, :cond_5

    .line 12
    new-instance v10, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-direct {v10}, Lcom/ifengyu/talk/models/RecentTalkModel;-><init>()V

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
    invoke-virtual {v10, v11}, Lcom/ifengyu/talk/models/RecentTalkModel;->setId(Ljava/lang/Long;)V

    .line 16
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v3

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 18
    :goto_2
    invoke-virtual {v10, v11}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroupId(Ljava/lang/Long;)V

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
    invoke-virtual {v10, v11}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroupName(Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v3

    goto :goto_4

    .line 23
    :cond_3
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 24
    :goto_4
    invoke-virtual {v10, v11}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroupAvatar(Ljava/lang/String;)V

    .line 25
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 26
    invoke-virtual {v10, v11, v12}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 27
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v3

    goto :goto_5

    .line 28
    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 29
    :goto_5
    invoke-virtual {v10, v11}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgJsonStr(Ljava/lang/String;)V

    .line 30
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 32
    invoke-virtual {v0}, Landroidx/room/q0;->k()V

    return-object v9

    :catchall_0
    move-exception v2

    .line 33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v0}, Landroidx/room/q0;->k()V

    .line 35
    throw v2
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->d:Landroidx/room/t0;

    invoke-virtual {v0}, Landroidx/room/t0;->a()La/g/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, La/g/a/f;->q()I

    .line 5
    iget-object v1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/talk/database/a/d;->d:Landroidx/room/t0;

    invoke-virtual {v1, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/talk/database/a/d;->d:Landroidx/room/t0;

    invoke-virtual {v2, v0}, Landroidx/room/t0;->f(La/g/a/f;)V

    .line 10
    throw v1
.end method

.method public d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->b:Landroidx/room/c0;

    invoke-virtual {v0, p1}, Landroidx/room/c0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->z()V

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/talk/database/a/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 7
    throw p1
.end method
