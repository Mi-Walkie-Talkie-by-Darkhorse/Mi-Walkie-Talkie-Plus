.class public abstract Lorg/greenrobot/greendao/a;
.super Ljava/lang/Object;
.source "AbstractDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lorg/greenrobot/greendao/b/a;

.field protected final db:Lorg/greenrobot/greendao/a/a;

.field protected final identityScope:Lorg/greenrobot/greendao/identityscope/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/a",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field protected final identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final isStandardSQLite:Z

.field protected final pkOrdinal:I

.field private volatile rxDao:Lorg/greenrobot/greendao/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/d/b",
            "<TT;TK;>;"
        }
    .end annotation
.end field

.field private volatile rxDaoPlain:Lorg/greenrobot/greendao/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/d/b",
            "<TT;TK;>;"
        }
    .end annotation
.end field

.field protected final session:Lorg/greenrobot/greendao/c;

.field protected final statements:Lorg/greenrobot/greendao/b/e;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/a;-><init>(Lorg/greenrobot/greendao/b/a;Lorg/greenrobot/greendao/c;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/b/a;Lorg/greenrobot/greendao/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iput-object p2, p0, Lorg/greenrobot/greendao/a;->session:Lorg/greenrobot/greendao/c;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->a:Lorg/greenrobot/greendao/a/a;

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean v0, p0, Lorg/greenrobot/greendao/a;->isStandardSQLite:Z

    invoke-virtual {p1}, Lorg/greenrobot/greendao/b/a;->b()Lorg/greenrobot/greendao/identityscope/a;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    instance-of v0, v0, Lorg/greenrobot/greendao/identityscope/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    check-cast v0, Lorg/greenrobot/greendao/identityscope/b;

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    :goto_0
    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->i:Lorg/greenrobot/greendao/b/e;

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    iget v0, v0, Lorg/greenrobot/greendao/f;->a:I

    :goto_1
    iput v0, p0, Lorg/greenrobot/greendao/a;->pkOrdinal:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/greenrobot/greendao/a/c;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v2, v0, v1}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    :goto_0
    invoke-interface {p2}, Lorg/greenrobot/greendao/a/c;->a()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Cannot delete entity, key is null"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->assertSinglePk()V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->c()Lorg/greenrobot/greendao/a/c;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz p1, :cond_3

    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/a;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/greenrobot/greendao/a;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)V

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0

    :cond_3
    if-eqz p2, :cond_5

    :try_start_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/greenrobot/greendao/a;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)V

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_6
    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->c()V

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/identityscope/a;->a(Ljava/lang/Iterable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V

    return-void
.end method

.method private executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/a/c;",
            "Z)J"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/a;->insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)J

    move-result-wide v0

    :goto_0
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/greenrobot/greendao/a;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    :cond_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/a;->insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/a/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method

.method private executeInsertInTx(Lorg/greenrobot/greendao/a/c;Ljava/lang/Iterable;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a/c;",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lorg/greenrobot/greendao/a;->isStandardSQLite:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/greenrobot/greendao/a/c;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/greenrobot/greendao/a;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v5, v3}, Lorg/greenrobot/greendao/a;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0

    :cond_2
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/a;->bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    invoke-interface {p1}, Lorg/greenrobot/greendao/a/c;->c()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/greenrobot/greendao/a;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/greenrobot/greendao/a/c;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_6
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V

    return-void
.end method

.method private insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/a/c;",
            ")J"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/a;->isStandardSQLite:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/greenrobot/greendao/a/c;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/a;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    monitor-exit p2

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/a;->bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/greenrobot/greendao/a/c;->c()J

    move-result-wide v0

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadAllUnlockOnWindowBounds(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/CursorWindow;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    invoke-virtual {p2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v1, v1}, Lorg/greenrobot/greendao/a;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_2

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/a;->moveToNextUnlocked(Landroid/database/Cursor;)Landroid/database/CursorWindow;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1
.end method

.method private moveToNextUnlocked(Landroid/database/Cursor;)Landroid/database/CursorWindow;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-interface {p1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/a;->b()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/a;->b()V

    throw v0
.end method


# virtual methods
.method protected assertSinglePk()V
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v2, v2, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not have a single-column primary key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected attachEntity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected final attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/identityscope/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/identityscope/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a/c;",
            "TT;)V"
        }
    .end annotation
.end method

.method public count()J
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->e()Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->assertSinglePk()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v2, v2, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->a()V

    :cond_0
    return-void
.end method

.method public deleteByKey(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->assertSinglePk()V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->c()Lorg/greenrobot/greendao/a/c;

    move-result-object v1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/greendao/a;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/identityscope/a;->c(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_2
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/greendao/a;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/a;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/greenrobot/greendao/a;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public deleteInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/a;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/greenrobot/greendao/a;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public detach(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1, v0, p1}, Lorg/greenrobot/greendao/identityscope/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public detachAll()V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->a()V

    :cond_0
    return-void
.end method

.method public getAllColumns()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/a/a;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    return-object v0
.end method

.method protected abstract getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation
.end method

.method protected getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity has no key"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public getNonPkColumns()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkProperty()Lorg/greenrobot/greendao/f;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    return-object v0
.end method

.method public getProperties()[Lorg/greenrobot/greendao/f;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->c:[Lorg/greenrobot/greendao/f;

    return-object v0
.end method

.method public getSession()Lorg/greenrobot/greendao/c;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->session:Lorg/greenrobot/greendao/c;

    return-object v0
.end method

.method getStatements()Lorg/greenrobot/greendao/b/e;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->i:Lorg/greenrobot/greendao/b/e;

    return-object v0
.end method

.method public getTablename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract hasKey(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->a()Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/a;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/a;->insertInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertInTx(Ljava/lang/Iterable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->a()Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/a;->executeInsertInTx(Lorg/greenrobot/greendao/a/c;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public varargs insertInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/greenrobot/greendao/a;->insertInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->b()Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/a;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/a;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->b()Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/a;->executeInsertInTx(Lorg/greenrobot/greendao/a/c;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/greenrobot/greendao/a;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertWithoutSettingPk(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->b()Lorg/greenrobot/greendao/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/a;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract isEntityUpdateable()Z
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->assertSinglePk()V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/identityscope/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v2, v0, v1}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public loadAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/b/e;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    instance-of v2, p1, Landroid/database/CrossProcessCursor;

    if-eqz v2, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    if-ne v0, v4, :cond_3

    new-instance p1, Lorg/greenrobot/greendao/b/b;

    invoke-direct {p1, v2}, Lorg/greenrobot/greendao/b/b;-><init>(Landroid/database/CursorWindow;)V

    const/4 v0, 0x1

    move-object v1, v2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/identityscope/a;->b()V

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v2, v4}, Lorg/greenrobot/greendao/identityscope/a;->a(I)V

    :cond_1
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v1, v3}, Lorg/greenrobot/greendao/a;->loadAllUnlockOnWindowBounds(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window vs. result size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/d;->a(Ljava/lang/String;)I

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0, v1}, Lorg/greenrobot/greendao/a;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_6
    throw v0

    :cond_7
    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method public loadByRowId(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/b/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_1

    iget v1, p0, Lorg/greenrobot/greendao/a;->pkOrdinal:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lorg/greenrobot/greendao/a;->pkOrdinal:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/identityscope/b;->a(J)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/a;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    invoke-virtual {v1, v2, v3, v0}, Lorg/greenrobot/greendao/identityscope/b;->a(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/identityscope/b;->b(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/b;

    invoke-virtual {v1, v2, v3, v0}, Lorg/greenrobot/greendao/identityscope/b;->b(JLjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/a;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz p2, :cond_5

    if-eqz v1, :cond_0

    :cond_5
    if-eqz p3, :cond_6

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0, v1}, Lorg/greenrobot/greendao/identityscope/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/a;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p3}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0, v1}, Lorg/greenrobot/greendao/identityscope/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/a;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/a;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final loadCurrentOther(Lorg/greenrobot/greendao/a;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/a",
            "<TO;*>;",
            "Landroid/database/Cursor;",
            "I)TO;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/greenrobot/greendao/a;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected unique result, but count was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/greenrobot/greendao/a;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public queryBuilder()Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/c/g",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/a;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/b/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRawCreate(Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/c/f",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/a;->queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lorg/greenrobot/greendao/c/f;

    move-result-object v0

    return-object v0
.end method

.method public queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lorg/greenrobot/greendao/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/greenrobot/greendao/c/f",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/b/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/greenrobot/greendao/c/f;->a(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/c/f;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected abstract readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TT;I)V"
        }
    .end annotation
.end method

.method protected abstract readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->assertSinglePk()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/b/e;->g()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v3, v1, v2}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/greenrobot/greendao/DaoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entity does not exist in the database anymore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected unique result, but count was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lorg/greenrobot/greendao/a;->readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public rx()Lorg/greenrobot/greendao/d/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/d/b",
            "<TT;TK;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->rxDao:Lorg/greenrobot/greendao/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/d/b;

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/d/b;-><init>(Lorg/greenrobot/greendao/a;Lrx/d;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->rxDao:Lorg/greenrobot/greendao/d/b;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->rxDao:Lorg/greenrobot/greendao/d/b;

    return-object v0
.end method

.method public rxPlain()Lorg/greenrobot/greendao/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/d/b",
            "<TT;TK;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->rxDaoPlain:Lorg/greenrobot/greendao/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/d/b;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/d/b;-><init>(Lorg/greenrobot/greendao/a;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/a;->rxDaoPlain:Lorg/greenrobot/greendao/d/b;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->rxDaoPlain:Lorg/greenrobot/greendao/d/b;

    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->hasKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->update(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->insert(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public saveInTx(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/a;->hasKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_5

    if-lez v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/a;->hasKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/a;->updateInTx(Ljava/lang/Iterable;)V

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/a;->insertInTx(Ljava/lang/Iterable;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0

    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_6
    if-lez v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->updateInTx(Ljava/lang/Iterable;)V

    goto :goto_2
.end method

.method public varargs saveInTx([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->saveInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/a;->assertSinglePk()V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->d()Lorg/greenrobot/greendao/a/c;

    move-result-object v1

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/a;->isStandardSQLite:Z

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/c;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lorg/greenrobot/greendao/a;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lorg/greenrobot/greendao/a;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v1, v0}, Lorg/greenrobot/greendao/a;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method

.method public updateInTx(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->statements:Lorg/greenrobot/greendao/b/e;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/e;->d()Lorg/greenrobot/greendao/a/c;

    move-result-object v2

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    const/4 v1, 0x0

    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lorg/greenrobot/greendao/a;->isStandardSQLite:Z

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lorg/greenrobot/greendao/a/c;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v0, v5}, Lorg/greenrobot/greendao/a;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v3, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v3}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    if-eqz v0, :cond_8

    throw v0

    :cond_2
    :try_start_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lorg/greenrobot/greendao/a;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_7
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->identityScope:Lorg/greenrobot/greendao/identityscope/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->c()V

    :cond_4
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    if-eqz v1, :cond_5

    const-string v2, "Could not end transaction (rethrowing initial exception)"

    invoke-static {v2, v0}, Lorg/greenrobot/greendao/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1

    :cond_5
    throw v0

    :catch_2
    move-exception v1

    if-eqz v0, :cond_6

    const-string v2, "Could not end transaction (rethrowing initial exception)"

    invoke-static {v2, v1}, Lorg/greenrobot/greendao/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_6
    throw v1

    :catchall_2
    move-exception v0

    :try_start_a
    iget-object v2, p0, Lorg/greenrobot/greendao/a;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v2}, Lorg/greenrobot/greendao/a/a;->b()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    throw v0

    :catch_3
    move-exception v0

    if-eqz v1, :cond_7

    const-string v2, "Could not end transaction (rethrowing initial exception)"

    invoke-static {v2, v0}, Lorg/greenrobot/greendao/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1

    :cond_7
    throw v0

    :cond_8
    return-void
.end method

.method public varargs updateInTx([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/a;->updateInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/a;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {p0, v1, p1, p3}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Cannot update entity without key - was it inserted before?"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/a/c;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/a/c;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/a;->bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/a;->config:Lorg/greenrobot/greendao/b/a;

    iget-object v0, v0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/a;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p2, v2, v4, v5}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    :goto_0
    invoke-interface {p2}, Lorg/greenrobot/greendao/a/c;->a()V

    invoke-virtual {p0, v1, p1, p3}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Cannot update entity without key - was it inserted before?"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TK;"
        }
    .end annotation
.end method

.method protected updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/a;->updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p4}, Lorg/greenrobot/greendao/a;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Could not insert row (executeInsert returned -1)"

    invoke-static {v0}, Lorg/greenrobot/greendao/d;->c(Ljava/lang/String;)I

    goto :goto_0
.end method
