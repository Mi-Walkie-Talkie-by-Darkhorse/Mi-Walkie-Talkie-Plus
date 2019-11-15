.class public final Lrx/internal/schedulers/b;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"


# static fields
.field public static final a:Lrx/internal/schedulers/b;

.field static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final c:Lrx/internal/util/RxThreadFactory;


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/b;->c:Lrx/internal/util/RxThreadFactory;

    new-instance v0, Lrx/internal/schedulers/b;

    invoke-direct {v0}, Lrx/internal/schedulers/b;-><init>()V

    sput-object v0, Lrx/internal/schedulers/b;->a:Lrx/internal/schedulers/b;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Lrx/internal/schedulers/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lrx/internal/schedulers/b;->a()V

    return-void
.end method

.method public static b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lrx/internal/schedulers/b;->a:Lrx/internal/schedulers/b;

    iget-object v0, v0, Lrx/internal/schedulers/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/16 v0, 0x8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    div-int/lit8 v1, v1, 0x2

    :cond_0
    if-le v1, v0, :cond_3

    :goto_0
    sget-object v1, Lrx/internal/schedulers/b;->c:Lrx/internal/util/RxThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/schedulers/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lrx/internal/schedulers/c;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0}, Lrx/internal/schedulers/c;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
