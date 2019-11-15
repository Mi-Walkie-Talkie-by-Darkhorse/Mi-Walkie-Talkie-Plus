.class final Lrx/e/a;
.super Lrx/d;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e/a$c;,
        Lrx/e/a$b;,
        Lrx/e/a$a;
    }
.end annotation


# static fields
.field static final a:Lrx/e/a$c;

.field static final c:Lrx/e/a$a;

.field private static final d:Lrx/internal/util/RxThreadFactory;

.field private static final e:Lrx/internal/util/RxThreadFactory;

.field private static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/e/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxCachedThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/e/a;->d:Lrx/internal/util/RxThreadFactory;

    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxCachedWorkerPoolEvictor-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/e/a;->e:Lrx/internal/util/RxThreadFactory;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/e/a;->f:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lrx/e/a$c;

    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lrx/e/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/e/a;->a:Lrx/e/a$c;

    sget-object v0, Lrx/e/a;->a:Lrx/e/a$c;

    invoke-virtual {v0}, Lrx/e/a$c;->unsubscribe()V

    new-instance v0, Lrx/e/a$a;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lrx/e/a$a;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/e/a;->c:Lrx/e/a$a;

    sget-object v0, Lrx/e/a;->c:Lrx/e/a$a;

    invoke-virtual {v0}, Lrx/e/a$a;->d()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lrx/d;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/e/a;->c:Lrx/e/a$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lrx/e/a;->c()V

    return-void
.end method

.method static synthetic d()Lrx/internal/util/RxThreadFactory;
    .locals 1

    sget-object v0, Lrx/e/a;->e:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method static synthetic e()Lrx/internal/util/RxThreadFactory;
    .locals 1

    sget-object v0, Lrx/e/a;->d:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    new-instance v1, Lrx/e/a$b;

    iget-object v0, p0, Lrx/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/a$a;

    invoke-direct {v1, v0}, Lrx/e/a$b;-><init>(Lrx/e/a$a;)V

    return-object v1
.end method

.method public c()V
    .locals 4

    new-instance v0, Lrx/e/a$a;

    const-wide/16 v2, 0x3c

    sget-object v1, Lrx/e/a;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v2, v3, v1}, Lrx/e/a$a;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lrx/e/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/e/a;->c:Lrx/e/a$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lrx/e/a$a;->d()V

    :cond_0
    return-void
.end method
