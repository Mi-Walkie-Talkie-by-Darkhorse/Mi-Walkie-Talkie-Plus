.class public abstract Lrx/d$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Lrx/b/a;)Lrx/f;
.end method

.method public a(Lrx/b/a;JJLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 8

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lrx/d$a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v0, v2

    new-instance v2, Lrx/f/c;

    invoke-direct {v2}, Lrx/f/c;-><init>()V

    new-instance v0, Lrx/d$a$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lrx/d$a$1;-><init>(Lrx/d$a;Lrx/f/c;Lrx/b/a;JJ)V

    new-instance v1, Lrx/f/c;

    invoke-direct {v1}, Lrx/f/c;-><init>()V

    invoke-virtual {v2, v1}, Lrx/f/c;->a(Lrx/f;)V

    invoke-virtual {p0, v0, p2, p3, p6}, Lrx/d$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/f/c;->a(Lrx/f;)V

    return-object v2
.end method

.method public abstract a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
.end method
