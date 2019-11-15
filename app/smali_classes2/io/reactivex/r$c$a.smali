.class final Lio/reactivex/r$c$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/r$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field final b:Lio/reactivex/internal/disposables/SequentialDisposable;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field final c:J

.field d:J

.field e:J

.field f:J

.field final synthetic g:Lio/reactivex/r$c;


# direct methods
.method constructor <init>(Lio/reactivex/r$c;JLjava/lang/Runnable;JLio/reactivex/internal/disposables/SequentialDisposable;J)V
    .locals 0
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/internal/disposables/SequentialDisposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/reactivex/r$c$a;->g:Lio/reactivex/r$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/reactivex/r$c$a;->a:Ljava/lang/Runnable;

    iput-object p7, p0, Lio/reactivex/r$c$a;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    iput-wide p8, p0, Lio/reactivex/r$c$a;->c:J

    iput-wide p5, p0, Lio/reactivex/r$c$a;->e:J

    iput-wide p2, p0, Lio/reactivex/r$c$a;->f:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x1

    iget-object v0, p0, Lio/reactivex/r$c$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lio/reactivex/r$c$a;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/r$c$a;->g:Lio/reactivex/r$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/r$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-wide v0, Lio/reactivex/r;->a:J

    add-long/2addr v0, v2

    iget-wide v4, p0, Lio/reactivex/r$c$a;->e:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/r$c$a;->e:J

    iget-wide v4, p0, Lio/reactivex/r$c$a;->c:J

    add-long/2addr v0, v4

    sget-wide v4, Lio/reactivex/r;->a:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lio/reactivex/r$c$a;->c:J

    add-long/2addr v0, v2

    iget-wide v4, p0, Lio/reactivex/r$c$a;->c:J

    iget-wide v6, p0, Lio/reactivex/r$c$a;->d:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lio/reactivex/r$c$a;->d:J

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    iput-wide v4, p0, Lio/reactivex/r$c$a;->f:J

    :goto_0
    iput-wide v2, p0, Lio/reactivex/r$c$a;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lio/reactivex/r$c$a;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v3, p0, Lio/reactivex/r$c$a;->g:Lio/reactivex/r$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->b(Lio/reactivex/disposables/b;)Z

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Lio/reactivex/r$c$a;->f:J

    iget-wide v4, p0, Lio/reactivex/r$c$a;->d:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lio/reactivex/r$c$a;->d:J

    iget-wide v6, p0, Lio/reactivex/r$c$a;->c:J

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0
.end method
