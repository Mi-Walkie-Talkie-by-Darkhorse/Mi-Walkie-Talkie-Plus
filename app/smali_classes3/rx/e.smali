.class public abstract Lrx/e;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/b;
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b",
        "<TT;>;",
        "Lrx/f;"
    }
.end annotation


# static fields
.field private static final NOT_SET:Ljava/lang/Long;


# instance fields
.field private producer:Lrx/c;

.field private requested:J

.field private final subscriber:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Lrx/internal/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lrx/e;->NOT_SET:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/e;-><init>(Lrx/e;Z)V

    return-void
.end method

.method protected constructor <init>(Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/e;-><init>(Lrx/e;Z)V

    return-void
.end method

.method protected constructor <init>(Lrx/e;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lrx/e;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/e;->requested:J

    iput-object p1, p0, Lrx/e;->subscriber:Lrx/e;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lrx/e;->subscriptions:Lrx/internal/util/f;

    :goto_0
    iput-object v0, p0, Lrx/e;->subscriptions:Lrx/internal/util/f;

    return-void

    :cond_0
    new-instance v0, Lrx/internal/util/f;

    invoke-direct {v0}, Lrx/internal/util/f;-><init>()V

    goto :goto_0
.end method

.method private addToRequested(J)V
    .locals 5

    iget-wide v0, p0, Lrx/e;->requested:J

    sget-object v2, Lrx/e;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lrx/e;->requested:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lrx/e;->requested:J

    add-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/e;->requested:J

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lrx/e;->requested:J

    goto :goto_0
.end method


# virtual methods
.method public final add(Lrx/f;)V
    .locals 1

    iget-object v0, p0, Lrx/e;->subscriptions:Lrx/internal/util/f;

    invoke-virtual {v0, p1}, Lrx/internal/util/f;->a(Lrx/f;)V

    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/e;->subscriptions:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method protected final request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number requested cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/e;->producer:Lrx/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/e;->producer:Lrx/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1, p2}, Lrx/c;->a(J)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lrx/e;->addToRequested(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setProducer(Lrx/c;)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lrx/e;->requested:J

    iput-object p1, p0, Lrx/e;->producer:Lrx/c;

    iget-object v1, p0, Lrx/e;->subscriber:Lrx/e;

    if-eqz v1, :cond_0

    sget-object v1, Lrx/e;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/e;->subscriber:Lrx/e;

    iget-object v1, p0, Lrx/e;->producer:Lrx/c;

    invoke-virtual {v0, v1}, Lrx/e;->setProducer(Lrx/c;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    sget-object v0, Lrx/e;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lrx/e;->producer:Lrx/c;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/c;->a(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lrx/e;->producer:Lrx/c;

    invoke-interface {v0, v2, v3}, Lrx/c;->a(J)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/e;->subscriptions:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->unsubscribe()V

    return-void
.end method
