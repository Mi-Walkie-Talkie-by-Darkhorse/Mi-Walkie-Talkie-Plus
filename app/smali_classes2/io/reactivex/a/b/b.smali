.class final Lio/reactivex/a/b/b;
.super Lio/reactivex/r;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/a/b/b$b;,
        Lio/reactivex/a/b/b$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/r;-><init>()V

    iput-object p1, p0, Lio/reactivex/a/b/b;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "run == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Lio/reactivex/a/b/b$b;

    iget-object v2, p0, Lio/reactivex/a/b/b;->b:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lio/reactivex/a/b/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/reactivex/a/b/b;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method public a()Lio/reactivex/r$c;
    .locals 2

    new-instance v0, Lio/reactivex/a/b/b$a;

    iget-object v1, p0, Lio/reactivex/a/b/b;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lio/reactivex/a/b/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
