.class public final Lio/reactivex/a/a/a;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile a:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/r;",
            ">;",
            "Lio/reactivex/r;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<",
            "Lio/reactivex/r;",
            "Lio/reactivex/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a(Lio/reactivex/b/g;Ljava/util/concurrent/Callable;)Lio/reactivex/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/g",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/r;",
            ">;",
            "Lio/reactivex/r;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/r;",
            ">;)",
            "Lio/reactivex/r;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/reactivex/a/a/a;->a(Lio/reactivex/b/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Scheduler Callable returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static a(Lio/reactivex/r;)Lio/reactivex/r;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lio/reactivex/a/a/a;->b:Lio/reactivex/b/g;

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-static {v0, p0}, Lio/reactivex/a/a/a;->a(Lio/reactivex/b/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/r;

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lio/reactivex/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/r;",
            ">;)",
            "Lio/reactivex/r;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lio/reactivex/a/a/a;->a:Lio/reactivex/b/g;

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/reactivex/a/a/a;->b(Ljava/util/concurrent/Callable;)Lio/reactivex/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0, p0}, Lio/reactivex/a/a/a;->a(Lio/reactivex/b/g;Ljava/util/concurrent/Callable;)Lio/reactivex/r;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lio/reactivex/b/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/b/g",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static b(Ljava/util/concurrent/Callable;)Lio/reactivex/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/r;",
            ">;)",
            "Lio/reactivex/r;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Scheduler Callable returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method
