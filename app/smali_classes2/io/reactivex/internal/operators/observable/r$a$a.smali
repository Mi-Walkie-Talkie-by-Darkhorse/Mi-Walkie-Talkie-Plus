.class final Lio/reactivex/internal/operators/observable/r$a$a;
.super Lio/reactivex/observers/c;
.source "ObservableDebounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/c",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/r$a",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/r$a;JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/r$a",
            "<TT;TU;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/r$a$a;->a:Lio/reactivex/internal/operators/observable/r$a;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/r$a$a;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/r$a$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->a:Lio/reactivex/internal/operators/observable/r$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/r$a$a;->b:J

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r$a$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/internal/operators/observable/r$a;->a(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r$a$a;->a()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->a:Lio/reactivex/internal/operators/observable/r$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/r$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/r$a$a;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r$a$a;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r$a$a;->a()V

    goto :goto_0
.end method
