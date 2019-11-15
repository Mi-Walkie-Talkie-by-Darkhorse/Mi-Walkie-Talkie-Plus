.class Lrx/e/f;
.super Ljava/lang/Object;
.source "SleepingAction.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final a:Lrx/b/a;

.field private final b:Lrx/d$a;

.field private final c:J


# direct methods
.method public constructor <init>(Lrx/b/a;Lrx/d$a;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/e/f;->a:Lrx/b/a;

    iput-object p2, p0, Lrx/e/f;->b:Lrx/d$a;

    iput-wide p3, p0, Lrx/e/f;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lrx/e/f;->b:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lrx/e/f;->c:J

    iget-object v2, p0, Lrx/e/f;->b:Lrx/d$a;

    invoke-virtual {v2}, Lrx/d$a;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lrx/e/f;->c:J

    iget-object v2, p0, Lrx/e/f;->b:Lrx/d$a;

    invoke-virtual {v2}, Lrx/d$a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lrx/e/f;->b:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/e/f;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
