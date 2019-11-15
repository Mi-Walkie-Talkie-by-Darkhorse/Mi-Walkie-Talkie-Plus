.class public final Lio/reactivex/internal/observers/d;
.super Lio/reactivex/internal/observers/c;
.source "BlockingFirstObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/c",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/internal/observers/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/observers/d;->b:Ljava/lang/Throwable;

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/d;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/observers/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/observers/d;->a:Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/observers/d;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/d;->countDown()V

    :cond_0
    return-void
.end method
