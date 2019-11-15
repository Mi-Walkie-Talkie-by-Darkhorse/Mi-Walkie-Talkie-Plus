.class final Lio/reactivex/r$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Lio/reactivex/r$c;

.field c:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/r$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/r$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/reactivex/r$a;->b:Lio/reactivex/r$c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/r$a;->c:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/r$a;->b:Lio/reactivex/r$c;

    instance-of v0, v0, Lio/reactivex/internal/schedulers/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/r$a;->b:Lio/reactivex/r$c;

    check-cast v0, Lio/reactivex/internal/schedulers/e;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/e;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/r$a;->b:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/r$a;->b:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/r$a;->c:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/r$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/reactivex/r$a;->dispose()V

    iput-object v1, p0, Lio/reactivex/r$a;->c:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/reactivex/r$a;->dispose()V

    iput-object v1, p0, Lio/reactivex/r$a;->c:Ljava/lang/Thread;

    throw v0
.end method
