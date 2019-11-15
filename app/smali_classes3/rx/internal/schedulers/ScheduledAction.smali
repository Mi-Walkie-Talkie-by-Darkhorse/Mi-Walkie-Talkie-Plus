.class public final Lrx/internal/schedulers/ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/ScheduledAction$1;,
        Lrx/internal/schedulers/ScheduledAction$Remover2;,
        Lrx/internal/schedulers/ScheduledAction$Remover;,
        Lrx/internal/schedulers/ScheduledAction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/f;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36fd4556f787c9b1L


# instance fields
.field final a:Lrx/internal/util/f;

.field final b:Lrx/b/a;


# direct methods
.method public constructor <init>(Lrx/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/b/a;

    new-instance v0, Lrx/internal/util/f;

    invoke-direct {v0}, Lrx/internal/util/f;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    return-void
.end method

.method public constructor <init>(Lrx/b/a;Lrx/f/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/b/a;

    new-instance v0, Lrx/internal/util/f;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/f/b;)V

    invoke-direct {v0, v1}, Lrx/internal/util/f;-><init>(Lrx/f;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    return-void
.end method

.method public constructor <init>(Lrx/b/a;Lrx/internal/util/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/b/a;

    new-instance v0, Lrx/internal/util/f;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover2;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/f;)V

    invoke-direct {v0, v1}, Lrx/internal/util/f;-><init>(Lrx/f;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lrx/internal/schedulers/ScheduledAction$a;-><init>(Lrx/internal/schedulers/ScheduledAction;Ljava/util/concurrent/Future;Lrx/internal/schedulers/ScheduledAction$1;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/f;->a(Lrx/f;)V

    return-void
.end method

.method public a(Lrx/f/b;)V
    .locals 2

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/f/b;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/f;->a(Lrx/f;)V

    return-void
.end method

.method public a(Lrx/f;)V
    .locals 1

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    invoke-virtual {v0, p1}, Lrx/internal/util/f;->a(Lrx/f;)V

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/schedulers/ScheduledAction;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    throw v0
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->unsubscribe()V

    :cond_0
    return-void
.end method
