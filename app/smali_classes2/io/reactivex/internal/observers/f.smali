.class public final Lio/reactivex/internal/observers/f;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingMultiObserver.java"

# interfaces
.implements Lio/reactivex/b;
.implements Lio/reactivex/h;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/b;",
        "Lio/reactivex/h",
        "<TT;>;",
        "Lio/reactivex/t",
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
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/f;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/observers/f;->c:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/observers/f;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lio/reactivex/internal/observers/f;->countDown()V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/observers/f;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/c;->a()V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/f;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/f;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/f;->a()V

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/observers/f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/f;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/observers/f;->b:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lio/reactivex/internal/observers/f;->countDown()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/observers/f;->c:Lio/reactivex/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/internal/observers/f;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method
