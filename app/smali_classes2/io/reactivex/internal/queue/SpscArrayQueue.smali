.class public final Lio/reactivex/internal/queue/SpscArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscArrayQueue.java"

# interfaces
.implements Lio/reactivex/internal/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<TE;>;",
        "Lio/reactivex/internal/a/f",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x11fe70baff9afb41L


# instance fields
.field final a:I

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field c:J

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/queue/SpscArrayQueue;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {p1}, Lio/reactivex/internal/util/j;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->a:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lio/reactivex/internal/queue/SpscArrayQueue;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->e:I

    return-void
.end method


# virtual methods
.method a(JI)I
    .locals 1

    long-to-int v0, p1

    and-int/2addr v0, p3

    return v0
.end method

.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/queue/SpscArrayQueue;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method a(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->a:I

    iget-object v1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(JI)I

    move-result v1

    iget-wide v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->c:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->e:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    invoke-virtual {p0, v6, v7, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(JI)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    int-to-long v4, v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->c:J

    :cond_1
    invoke-virtual {p0, v1, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(ILjava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(J)I
    .locals 3

    long-to-int v0, p1

    iget v1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->a:I

    and-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->e_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public e_()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->c(J)I

    move-result v4

    invoke-virtual {p0, v4}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->b(J)V

    invoke-virtual {p0, v4, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method
