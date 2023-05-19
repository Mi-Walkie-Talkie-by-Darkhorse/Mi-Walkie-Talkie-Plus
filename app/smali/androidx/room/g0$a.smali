.class Landroidx/room/g0$a;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/g0;


# direct methods
.method constructor <init>(Landroidx/room/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v1, v1, Landroidx/room/g0;->e:Landroidx/room/RoomDatabase;

    new-instance v2, La/g/a/a;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, La/g/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->w(La/g/a/e;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v1, v1, Landroidx/room/g0;->h:La/g/a/f;

    invoke-interface {v1}, La/g/a/f;->q()I

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->e:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->h()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    invoke-virtual {v2}, Landroidx/room/g0;->d()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->d:Landroidx/room/w;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/room/w;->b()V

    :cond_0
    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v2, v2, Landroidx/room/g0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->d:Landroidx/room/w;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroidx/room/w;->b()V

    :cond_2
    return-void

    .line 11
    :cond_3
    :try_start_2
    iget-object v2, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v2, v2, Landroidx/room/g0;->e:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->l()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->d:Landroidx/room/w;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/room/w;->b()V

    :cond_4
    return-void

    .line 15
    :cond_5
    :try_start_3
    iget-object v2, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v2, v2, Landroidx/room/g0;->e:Landroidx/room/RoomDatabase;

    iget-boolean v3, v2, Landroidx/room/RoomDatabase;->f:Z

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->i()La/g/a/c;

    move-result-object v2

    invoke-interface {v2}, La/g/a/c;->w()La/g/a/b;

    move-result-object v2

    .line 17
    invoke-interface {v2}, La/g/a/b;->u()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :try_start_4
    invoke-direct {p0}, Landroidx/room/g0$a;->a()Ljava/util/Set;

    move-result-object v1

    .line 19
    invoke-interface {v2}, La/g/a/b;->t()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :try_start_5
    invoke-interface {v2}, La/g/a/b;->y()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v2}, La/g/a/b;->y()V

    .line 21
    throw v3

    .line 22
    :cond_6
    invoke-direct {p0}, Landroidx/room/g0$a;->a()Ljava/util/Set;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->d:Landroidx/room/w;

    if-eqz v0, :cond_7

    .line 25
    :goto_1
    invoke-virtual {v0}, Landroidx/room/w;->b()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    :try_start_6
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    .line 26
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->d:Landroidx/room/w;

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v1, :cond_9

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 30
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->j:La/a/a/b/b;

    monitor-enter v0

    .line 31
    :try_start_7
    iget-object v2, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v2, v2, Landroidx/room/g0;->j:La/a/a/b/b;

    invoke-virtual {v2}, La/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/g0$d;

    invoke-virtual {v3, v1}, Landroidx/room/g0$d;->a(Ljava/util/Set;)V

    goto :goto_4

    .line 33
    :cond_8
    monitor-exit v0

    goto :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    :cond_9
    :goto_5
    return-void

    .line 34
    :goto_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    iget-object v0, p0, Landroidx/room/g0$a;->a:Landroidx/room/g0;

    iget-object v0, v0, Landroidx/room/g0;->d:Landroidx/room/w;

    if-eqz v0, :cond_a

    .line 36
    invoke-virtual {v0}, Landroidx/room/w;->b()V

    .line 37
    :cond_a
    throw v1
.end method
