.class public final Lio/reactivex/internal/operators/observable/ca;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableWindowTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ca$c;,
        Lio/reactivex/internal/operators/observable/ca$a;,
        Lio/reactivex/internal/operators/observable/ca$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;",
        "Lio/reactivex/k",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/r;

.field final f:J

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/r;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            "JIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ca;->b:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ca;->c:J

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ca;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ca;->e:Lio/reactivex/r;

    iput-wide p8, p0, Lio/reactivex/internal/operators/observable/ca;->f:J

    iput p10, p0, Lio/reactivex/internal/operators/observable/ca;->g:I

    iput-boolean p11, p0, Lio/reactivex/internal/operators/observable/ca;->h:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;)V"
        }
    .end annotation

    new-instance v1, Lio/reactivex/observers/e;

    invoke-direct {v1, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca;->f:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ca;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ca$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ca;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ca;->e:Lio/reactivex/r;

    iget v6, p0, Lio/reactivex/internal/operators/observable/ca;->g:I

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ca$b;-><init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;I)V

    invoke-interface {v7, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ca;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ca$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ca;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ca;->e:Lio/reactivex/r;

    iget v6, p0, Lio/reactivex/internal/operators/observable/ca;->g:I

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/ca;->f:J

    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ca;->h:Z

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/observable/ca$a;-><init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;IJZ)V

    invoke-interface {v10, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ca;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ca$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ca;->e:Lio/reactivex/r;

    invoke-virtual {v7}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/observable/ca;->g:I

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/observable/ca$c;-><init>(Lio/reactivex/q;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;I)V

    invoke-interface {v9, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
