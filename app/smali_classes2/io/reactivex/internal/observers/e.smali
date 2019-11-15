.class public final Lio/reactivex/internal/observers/e;
.super Lio/reactivex/internal/observers/c;
.source "BlockingLastObserver.java"


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

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/observers/e;->b:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lio/reactivex/internal/observers/e;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/observers/e;->a:Ljava/lang/Object;

    return-void
.end method
