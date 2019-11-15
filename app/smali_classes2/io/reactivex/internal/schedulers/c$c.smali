.class final Lio/reactivex/internal/schedulers/c$c;
.super Lio/reactivex/internal/schedulers/e;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private b:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/reactivex/internal/schedulers/c$c;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lio/reactivex/internal/schedulers/c$c;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lio/reactivex/internal/schedulers/c$c;->b:J

    return-void
.end method
