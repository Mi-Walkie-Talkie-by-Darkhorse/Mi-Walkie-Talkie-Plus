.class final Lpl/droidsonroids/gif/d;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/d$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lpl/droidsonroids/gif/d$1;)V
    .locals 0

    invoke-direct {p0}, Lpl/droidsonroids/gif/d;-><init>()V

    return-void
.end method

.method static a()Lpl/droidsonroids/gif/d;
    .locals 1

    invoke-static {}, Lpl/droidsonroids/gif/d$a;->a()Lpl/droidsonroids/gif/d;

    move-result-object v0

    return-object v0
.end method
