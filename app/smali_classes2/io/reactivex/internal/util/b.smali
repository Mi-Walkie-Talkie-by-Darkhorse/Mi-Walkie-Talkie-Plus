.class public final Lio/reactivex/internal/util/b;
.super Ljava/lang/Object;
.source "BackpressureHelper.java"


# direct methods
.method public static a(JJ)J
    .locals 4

    add-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 7

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/b;->a(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 11

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_1
    sub-long v0, v6, p1

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More produced than requested: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    :cond_2
    invoke-virtual {p0, v6, v7, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method
