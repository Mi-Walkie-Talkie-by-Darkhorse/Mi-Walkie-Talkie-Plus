.class public abstract Lio/reactivex/internal/observers/c;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingBaseObserver.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Throwable;

.field c:Lio/reactivex/disposables/b;

.field volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/observers/c;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/c;->a()V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/c;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/c;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/c;->dispose()V

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/observers/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/c;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/observers/c;->c:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/c;->d:Z

    return v0
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/c;->countDown()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/observers/c;->c:Lio/reactivex/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/internal/observers/c;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method
