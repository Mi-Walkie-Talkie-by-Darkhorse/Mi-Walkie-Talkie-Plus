.class public final Lcom/uber/autodispose/c;
.super Ljava/lang/Object;
.source "AutoDispose.java"


# direct methods
.method public static a(Lcom/uber/autodispose/o;)Lcom/uber/autodispose/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uber/autodispose/o;",
            ")",
            "Lcom/uber/autodispose/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "provider == null"

    .line 1
    invoke-static {p0, v0}, Lcom/uber/autodispose/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/uber/autodispose/b;

    invoke-direct {v0, p0}, Lcom/uber/autodispose/b;-><init>(Lcom/uber/autodispose/o;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-static {p0}, Lcom/uber/autodispose/c;->b(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/CompletableSource;",
            ")",
            "Lcom/uber/autodispose/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scope == null"

    .line 1
    invoke-static {p0, v0}, Lcom/uber/autodispose/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/uber/autodispose/c$a;

    invoke-direct {v0, p0}, Lcom/uber/autodispose/c$a;-><init>(Lio/reactivex/CompletableSource;)V

    return-object v0
.end method

.method static synthetic c(Lcom/uber/autodispose/o;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/uber/autodispose/o;->d()Lio/reactivex/CompletableSource;

    move-result-object p0
    :try_end_0
    .catch Lcom/uber/autodispose/OutsideScopeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {}, Lcom/uber/autodispose/g;->b()Lio/reactivex/functions/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method
