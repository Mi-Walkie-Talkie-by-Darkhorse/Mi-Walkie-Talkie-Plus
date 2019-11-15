.class Lio/reactivex/internal/observers/n;
.super Lio/reactivex/internal/observers/l;
.source "QueueDrainObserver.java"


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/internal/observers/l;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/observers/n;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
