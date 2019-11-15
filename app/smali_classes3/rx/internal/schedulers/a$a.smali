.class Lrx/internal/schedulers/a$a;
.super Lrx/d$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lrx/internal/util/f;

.field private final b:Lrx/f/b;

.field private final c:Lrx/internal/util/f;

.field private final d:Lrx/internal/schedulers/a$c;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/a$c;)V
    .locals 4

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    new-instance v0, Lrx/internal/util/f;

    invoke-direct {v0}, Lrx/internal/util/f;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/f;

    new-instance v0, Lrx/f/b;

    invoke-direct {v0}, Lrx/f/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->b:Lrx/f/b;

    new-instance v0, Lrx/internal/util/f;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/internal/schedulers/a$a;->b:Lrx/f/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/internal/util/f;-><init>([Lrx/f;)V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/f;

    iput-object p1, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 6

    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/f;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/a$c;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/f;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 6

    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    iget-object v5, p0, Lrx/internal/schedulers/a$a;->b:Lrx/f/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/a$c;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/f/b;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/f;

    invoke-virtual {v0}, Lrx/internal/util/f;->unsubscribe()V

    return-void
.end method
