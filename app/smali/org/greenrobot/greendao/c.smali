.class public Lorg/greenrobot/greendao/c;
.super Ljava/lang/Object;
.source "AbstractDaoSession.java"


# instance fields
.field private final db:Lorg/greenrobot/greendao/a/a;

.field private final entityToDao:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/greenrobot/greendao/a",
            "<**>;>;"
        }
    .end annotation
.end field

.field private volatile rxTxIo:Lorg/greenrobot/greendao/d/c;

.field private volatile rxTxPlain:Lorg/greenrobot/greendao/d/c;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/c;->entityToDao:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method

.method public callInTxNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Callable failed"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->deleteAll()V

    return-void
.end method

.method public getAllDaos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/greenrobot/greendao/a",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->entityToDao:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/greenrobot/greendao/a",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->entityToDao:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No DAO registered for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/a/a;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TK;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/a;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/greenrobot/greendao/c/g",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/a;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a;->refresh(Ljava/lang/Object;)V

    return-void
.end method

.method protected registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/greenrobot/greendao/a",
            "<TT;*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->entityToDao:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public runInTx(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v0}, Lorg/greenrobot/greendao/a/a;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c;->db:Lorg/greenrobot/greendao/a/a;

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method

.method public rxTx()Lorg/greenrobot/greendao/d/c;
    .locals 2
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->rxTxIo:Lorg/greenrobot/greendao/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/d/c;

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/d/c;-><init>(Lorg/greenrobot/greendao/c;Lrx/d;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/c;->rxTxIo:Lorg/greenrobot/greendao/d/c;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/c;->rxTxIo:Lorg/greenrobot/greendao/d/c;

    return-object v0
.end method

.method public rxTxPlain()Lorg/greenrobot/greendao/d/c;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/c;->rxTxPlain:Lorg/greenrobot/greendao/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lorg/greenrobot/greendao/d/c;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/d/c;-><init>(Lorg/greenrobot/greendao/c;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/c;->rxTxPlain:Lorg/greenrobot/greendao/d/c;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/c;->rxTxPlain:Lorg/greenrobot/greendao/d/c;

    return-object v0
.end method

.method public startAsyncSession()Lorg/greenrobot/greendao/async/c;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/async/c;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/async/c;-><init>(Lorg/greenrobot/greendao/c;)V

    return-object v0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/c;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/a;->update(Ljava/lang/Object;)V

    return-void
.end method
