.class Lrx/e/g$a;
.super Lrx/d$a;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/e/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/f/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/e/g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/e/g$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    iput-object v0, p0, Lrx/e/g$a;->c:Lrx/f/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/e/g$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lrx/e/g$1;)V
    .locals 0

    invoke-direct {p0}, Lrx/e/g$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lrx/e/g$a;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1

    iget-object v0, p0, Lrx/e/g$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private a(Lrx/b/a;J)Lrx/f;
    .locals 4

    iget-object v0, p0, Lrx/e/g$a;->c:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/e/g$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lrx/e/g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/e/g$b;-><init>(Lrx/b/a;Ljava/lang/Long;ILrx/e/g$1;)V

    iget-object v1, p0, Lrx/e/g$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lrx/e/g$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v0, p0, Lrx/e/g$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/g$b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrx/e/g$b;->a:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->a()V

    :cond_2
    iget-object v0, p0, Lrx/e/g$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Lrx/e/g$a$1;

    invoke-direct {v1, p0, v0}, Lrx/e/g$a$1;-><init>(Lrx/e/g$a;Lrx/e/g$b;)V

    invoke-static {v1}, Lrx/f/d;->a(Lrx/b/a;)Lrx/f;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 2

    invoke-virtual {p0}, Lrx/e/g$a;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/e/g$a;->a(Lrx/b/a;J)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 4

    invoke-virtual {p0}, Lrx/e/g$a;->a()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Lrx/e/f;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/e/f;-><init>(Lrx/b/a;Lrx/d$a;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/e/g$a;->a(Lrx/b/a;J)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/e/g$a;->c:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/e/g$a;->c:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->unsubscribe()V

    return-void
.end method
