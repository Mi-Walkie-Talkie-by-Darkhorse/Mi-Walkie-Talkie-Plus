.class public final Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;
.super Lio/reactivex/internal/schedulers/AbstractDirectTask;
.source "ScheduledDirectPeriodicTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final serialVersionUID:J = 0x1924f211b909b42fL


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->b:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->b:Ljava/lang/Thread;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->lazySet(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->b:Ljava/lang/Thread;

    throw v0
.end method
