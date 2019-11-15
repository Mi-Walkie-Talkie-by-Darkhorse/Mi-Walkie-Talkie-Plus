.class final Lio/reactivex/internal/operators/observable/t$a$a;
.super Ljava/lang/Object;
.source "ObservableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/t$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/t$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t$a$a;->a:Lio/reactivex/internal/operators/observable/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a$a;->a:Lio/reactivex/internal/operators/observable/t$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/t$a;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a$a;->a:Lio/reactivex/internal/operators/observable/t$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/t$a$a;->a:Lio/reactivex/internal/operators/observable/t$a;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    invoke-virtual {v1}, Lio/reactivex/r$c;->dispose()V

    throw v0
.end method
