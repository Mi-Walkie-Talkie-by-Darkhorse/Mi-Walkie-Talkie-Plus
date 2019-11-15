.class public Lrx/c/a;
.super Lrx/e;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lrx/e;-><init>(Lrx/e;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a;->a:Z

    iput-object p1, p0, Lrx/c/a;->b:Lrx/e;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    :try_start_0
    iget-object v0, p0, Lrx/c/a;->b:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    :try_start_3
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    const-string v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCompleted()V
    .locals 3

    iget-boolean v0, p0, Lrx/c/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a;->a:Z

    :try_start_0
    iget-object v0, p0, Lrx/c/a;->b:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    throw v0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lrx/internal/util/c;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lrx/c/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a;->a:Z

    invoke-virtual {p0, p1}, Lrx/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lrx/c/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/c/a;->b:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lrx/c/a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
