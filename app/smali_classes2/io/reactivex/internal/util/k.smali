.class public final Lio/reactivex/internal/util/k;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# direct methods
.method public static a(I)Lio/reactivex/internal/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/internal/a/g",
            "<TT;>;"
        }
    .end annotation

    if-gez p0, :cond_0

    new-instance v0, Lio/reactivex/internal/queue/a;

    neg-int v1, p0

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    goto :goto_0
.end method

.method public static a(Lio/reactivex/internal/a/f;Lio/reactivex/q;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/a/f",
            "<TT;>;",
            "Lio/reactivex/q",
            "<-TU;>;Z",
            "Lio/reactivex/disposables/b;",
            "Lio/reactivex/internal/util/h",
            "<TT;TU;>;)V"
        }
    .end annotation

    const/4 v8, 0x1

    move v7, v8

    :goto_0
    invoke-interface {p4}, Lio/reactivex/internal/util/h;->b()Z

    move-result v0

    invoke-interface {p0}, Lio/reactivex/internal/a/f;->b()Z

    move-result v1

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lio/reactivex/internal/util/k;->a(ZZLio/reactivex/q;ZLio/reactivex/internal/a/g;Lio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-interface {p4, p1, v9}, Lio/reactivex/internal/util/h;->a(Lio/reactivex/q;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p4}, Lio/reactivex/internal/util/h;->b()Z

    move-result v0

    invoke-interface {p0}, Lio/reactivex/internal/a/f;->e_()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    move v1, v8

    :goto_1
    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lio/reactivex/internal/util/k;->a(ZZLio/reactivex/q;ZLio/reactivex/internal/a/g;Lio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    neg-int v0, v7

    invoke-interface {p4, v0}, Lio/reactivex/internal/util/h;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v7, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(ZZLio/reactivex/q;ZLio/reactivex/internal/a/g;Lio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/q",
            "<*>;Z",
            "Lio/reactivex/internal/a/g",
            "<*>;",
            "Lio/reactivex/disposables/b;",
            "Lio/reactivex/internal/util/h",
            "<TT;TU;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p6}, Lio/reactivex/internal/util/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Lio/reactivex/internal/a/g;->c()V

    invoke-interface {p5}, Lio/reactivex/disposables/b;->dispose()V

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p5}, Lio/reactivex/disposables/b;->dispose()V

    invoke-interface {p6}, Lio/reactivex/internal/util/h;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_2
    invoke-interface {p6}, Lio/reactivex/internal/util/h;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Lio/reactivex/internal/a/g;->c()V

    invoke-interface {p5}, Lio/reactivex/disposables/b;->dispose()V

    invoke-interface {p2, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p5}, Lio/reactivex/disposables/b;->dispose()V

    invoke-interface {p2}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
