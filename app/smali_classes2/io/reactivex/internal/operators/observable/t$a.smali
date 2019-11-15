.class final Lio/reactivex/internal/operators/observable/t$a;
.super Ljava/lang/Object;
.source "ObservableDelay.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t$a$a;,
        Lio/reactivex/internal/operators/observable/t$a$b;,
        Lio/reactivex/internal/operators/observable/t$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/r$c;

.field final e:Z

.field f:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r$c;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t$a;->a:Lio/reactivex/q;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/t$a;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/t$a;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/t$a;->e:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    new-instance v1, Lio/reactivex/internal/operators/observable/t$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/t$a$a;-><init>(Lio/reactivex/internal/operators/observable/t$a;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/t$a;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/t$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    new-instance v3, Lio/reactivex/internal/operators/observable/t$a$b;

    invoke-direct {v3, p0, p1}, Lio/reactivex/internal/operators/observable/t$a$b;-><init>(Lio/reactivex/internal/operators/observable/t$a;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t$a;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/t$a;->b:J

    :goto_0
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/t$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->d:Lio/reactivex/r$c;

    new-instance v1, Lio/reactivex/internal/operators/observable/t$a$c;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/t$a$c;-><init>(Lio/reactivex/internal/operators/observable/t$a;Ljava/lang/Object;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/t$a;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/t$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->f:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t$a;->f:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
