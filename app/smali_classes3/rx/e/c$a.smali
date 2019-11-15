.class Lrx/e/c$a;
.super Lrx/d$a;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/f/a;

.field final synthetic b:Lrx/e/c;


# direct methods
.method private constructor <init>(Lrx/e/c;)V
    .locals 1

    iput-object p1, p0, Lrx/e/c$a;->b:Lrx/e/c;

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    iput-object v0, p0, Lrx/e/c$a;->a:Lrx/f/a;

    return-void
.end method

.method synthetic constructor <init>(Lrx/e/c;Lrx/e/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lrx/e/c$a;-><init>(Lrx/e/c;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 1

    invoke-interface {p1}, Lrx/b/a;->a()V

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 4

    iget-object v0, p0, Lrx/e/c$a;->b:Lrx/e/c;

    invoke-virtual {v0}, Lrx/e/c;->b()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Lrx/e/f;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/e/f;-><init>(Lrx/b/a;Lrx/d$a;J)V

    invoke-virtual {p0, v2}, Lrx/e/c$a;->a(Lrx/b/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/e/c$a;->a:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/e/c$a;->a:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->unsubscribe()V

    return-void
.end method
