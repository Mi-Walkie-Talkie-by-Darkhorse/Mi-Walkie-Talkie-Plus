.class Lrx/e/b$a$2;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/b$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/f/c;

.field final synthetic b:Lrx/b/a;

.field final synthetic c:Lrx/f;

.field final synthetic d:Lrx/e/b$a;


# direct methods
.method constructor <init>(Lrx/e/b$a;Lrx/f/c;Lrx/b/a;Lrx/f;)V
    .locals 0

    iput-object p1, p0, Lrx/e/b$a$2;->d:Lrx/e/b$a;

    iput-object p2, p0, Lrx/e/b$a$2;->a:Lrx/f/c;

    iput-object p3, p0, Lrx/e/b$a$2;->b:Lrx/b/a;

    iput-object p4, p0, Lrx/e/b$a$2;->c:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lrx/e/b$a$2;->a:Lrx/f/c;

    invoke-virtual {v0}, Lrx/f/c;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lrx/e/b$a$2;->d:Lrx/e/b$a;

    iget-object v1, p0, Lrx/e/b$a$2;->b:Lrx/b/a;

    invoke-virtual {v0, v1}, Lrx/e/b$a;->a(Lrx/b/a;)Lrx/f;

    move-result-object v0

    iget-object v1, p0, Lrx/e/b$a$2;->a:Lrx/f/c;

    invoke-virtual {v1, v0}, Lrx/f/c;->a(Lrx/f;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/schedulers/ScheduledAction;

    if-ne v1, v2, :cond_0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v1, p0, Lrx/e/b$a$2;->c:Lrx/f;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/f;)V

    goto :goto_0
.end method
