.class final Lrx/e/a$c;
.super Lrx/internal/schedulers/c;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lrx/internal/schedulers/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/e/a$c;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lrx/e/a$c;->c:J

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lrx/e/a$c;->c:J

    return-wide v0
.end method
