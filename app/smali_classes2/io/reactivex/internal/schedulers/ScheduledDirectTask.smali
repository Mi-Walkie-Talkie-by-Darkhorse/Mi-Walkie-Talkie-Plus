.class public final Lio/reactivex/internal/schedulers/ScheduledDirectTask;
.super Lio/reactivex/internal/schedulers/AbstractDirectTask;
.source "ScheduledDirectTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/schedulers/AbstractDirectTask;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1924f211b909b42fL


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->b:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->lazySet(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->b:Ljava/lang/Thread;

    return-object v2

    :catchall_0
    move-exception v0

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->lazySet(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->b:Ljava/lang/Thread;

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
