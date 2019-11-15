.class Lrx/a/b/b$a$1;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a/b/b$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/schedulers/ScheduledAction;

.field final synthetic b:Lrx/a/b/b$a;


# direct methods
.method constructor <init>(Lrx/a/b/b$a;Lrx/internal/schedulers/ScheduledAction;)V
    .locals 0

    iput-object p1, p0, Lrx/a/b/b$a$1;->b:Lrx/a/b/b$a;

    iput-object p2, p0, Lrx/a/b/b$a$1;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lrx/a/b/b$a$1;->b:Lrx/a/b/b$a;

    invoke-static {v0}, Lrx/a/b/b$a;->a(Lrx/a/b/b$a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lrx/a/b/b$a$1;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
