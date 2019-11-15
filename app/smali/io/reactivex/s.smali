.class public abstract Lio/reactivex/s;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lio/reactivex/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/u",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/b/f;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/f",
            "<-TT;>;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lio/reactivex/b/f;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/s;->a(Lio/reactivex/b/f;Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/reactivex/b/f;Lio/reactivex/b/f;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/f",
            "<-TT;>;",
            "Lio/reactivex/b/f",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/b/f;Lio/reactivex/b/f;)V

    invoke-virtual {p0, v0}, Lio/reactivex/s;->a(Lio/reactivex/t;)V

    return-object v0
.end method

.method public final a(Lio/reactivex/b/g;)Lio/reactivex/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/b/g",
            "<-TT;+TR;>;)",
            "Lio/reactivex/s",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/a;-><init>(Lio/reactivex/u;Lio/reactivex/b/g;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/s;)Lio/reactivex/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/reactivex/r;)Lio/reactivex/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r;",
            ")",
            "Lio/reactivex/s",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/u;Lio/reactivex/r;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/s;)Lio/reactivex/s;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/s;->a(Lio/reactivex/t;)V

    invoke-virtual {v0}, Lio/reactivex/internal/observers/f;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "subscriber is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/reactivex/d/a;->a(Lio/reactivex/s;Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object v0

    const-string v1, "subscriber returned by the RxJavaPlugins hook is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, v0}, Lio/reactivex/s;->b(Lio/reactivex/t;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "subscribeActual failed"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final b()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    instance-of v0, p0, Lio/reactivex/internal/a/a;

    if-eqz v0, :cond_0

    check-cast p0, Lio/reactivex/internal/a/a;

    invoke-interface {p0}, Lio/reactivex/internal/a/a;->f_()Lio/reactivex/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/single/b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/b;-><init>(Lio/reactivex/u;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lio/reactivex/r;)Lio/reactivex/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r;",
            ")",
            "Lio/reactivex/s",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleSubscribeOn;-><init>(Lio/reactivex/u;Lio/reactivex/r;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/s;)Lio/reactivex/s;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lio/reactivex/t;)V
    .param p1    # Lio/reactivex/t;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-TT;>;)V"
        }
    .end annotation
.end method
