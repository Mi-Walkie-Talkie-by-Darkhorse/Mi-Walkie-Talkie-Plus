.class public final Lio/reactivex/internal/operators/observable/m;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableBufferTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/m$a;,
        Lio/reactivex/internal/operators/observable/m$c;,
        Lio/reactivex/internal/operators/observable/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;>",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/r;

.field final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/r;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/m;->b:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/m;->c:J

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/m;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lio/reactivex/internal/operators/observable/m;->e:Lio/reactivex/r;

    iput-object p8, p0, Lio/reactivex/internal/operators/observable/m;->f:Ljava/util/concurrent/Callable;

    iput p9, p0, Lio/reactivex/internal/operators/observable/m;->g:I

    iput-boolean p10, p0, Lio/reactivex/internal/operators/observable/m;->h:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/m;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lio/reactivex/internal/operators/observable/m;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/m$b;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/m;->f:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/m;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/m;->e:Lio/reactivex/r;

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/m$b;-><init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m;->e:Lio/reactivex/r;

    invoke-virtual {v0}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v9

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/m;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/m$a;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/m;->f:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/m;->d:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/internal/operators/observable/m;->g:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/m;->h:Z

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/m$a;-><init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/r$c;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/m$c;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/m;->f:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m;->b:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/m;->c:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/m;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/m$c;-><init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
