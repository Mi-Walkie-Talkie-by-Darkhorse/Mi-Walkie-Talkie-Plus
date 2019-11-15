.class Lrx/a/b/b$a;
.super Lrx/d$a;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lrx/f/b;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    new-instance v0, Lrx/f/b;

    invoke-direct {v0}, Lrx/f/b;-><init>()V

    iput-object v0, p0, Lrx/a/b/b$a;->b:Lrx/f/b;

    iput-object p1, p0, Lrx/a/b/b$a;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lrx/a/b/b$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lrx/a/b/b$a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/a/b/b$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 4

    iget-object v0, p0, Lrx/a/b/b$a;->b:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lrx/a/a/a;->a()Lrx/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a/a/a;->b()Lrx/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/a/a/b;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object v1

    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;)V

    iget-object v1, p0, Lrx/a/b/b$a;->b:Lrx/f/b;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/f/b;)V

    iget-object v1, p0, Lrx/a/b/b$a;->b:Lrx/f/b;

    invoke-virtual {v1, v0}, Lrx/f/b;->a(Lrx/f;)V

    iget-object v1, p0, Lrx/a/b/b$a;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lrx/a/b/b$a$1;

    invoke-direct {v1, p0, v0}, Lrx/a/b/b$a$1;-><init>(Lrx/a/b/b$a;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {v1}, Lrx/f/d;->a(Lrx/b/a;)Lrx/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/f;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/a/b/b$a;->b:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/a/b/b$a;->b:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->unsubscribe()V

    return-void
.end method
