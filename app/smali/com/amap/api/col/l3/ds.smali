.class public abstract Lcom/amap/api/col/l3/ds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ds$a;,
        Lcom/amap/api/col/l3/ds$e;,
        Lcom/amap/api/col/l3/ds$b;,
        Lcom/amap/api/col/l3/ds$d;,
        Lcom/amap/api/col/l3/ds$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/amap/api/col/l3/ds$b;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lcom/amap/api/col/l3/ds$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/col/l3/ds$e<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:Lcom/amap/api/col/l3/ds$d;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/amap/api/col/l3/ds$1;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ds$1;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3/ds;->d:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/amap/api/col/l3/ds;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/amap/api/col/l3/ds;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/amap/api/col/l3/ds;->d:Ljava/util/concurrent/ThreadFactory;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/amap/api/col/l3/ds;->a:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/amap/api/col/l3/em;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/ds$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/ds$c;-><init>(B)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3/ds;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/amap/api/col/l3/ds;->b:Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    sget-object v1, Lcom/amap/api/col/l3/ds;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/ds;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/amap/api/col/l3/ds$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/ds$b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amap/api/col/l3/ds;->f:Lcom/amap/api/col/l3/ds$b;

    sget-object v0, Lcom/amap/api/col/l3/ds;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/amap/api/col/l3/ds;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amap/api/col/l3/ds$d;->a:Lcom/amap/api/col/l3/ds$d;

    iput-object v0, p0, Lcom/amap/api/col/l3/ds;->j:Lcom/amap/api/col/l3/ds$d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ds;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ds;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/amap/api/col/l3/ds$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ds$2;-><init>(Lcom/amap/api/col/l3/ds;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ds;->h:Lcom/amap/api/col/l3/ds$e;

    new-instance v0, Lcom/amap/api/col/l3/ds$3;

    iget-object v1, p0, Lcom/amap/api/col/l3/ds;->h:Lcom/amap/api/col/l3/ds$e;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/ds$3;-><init>(Lcom/amap/api/col/l3/ds;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ds;->i:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ds;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/ds;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ds;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/ds;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/ds;)Ljava/util/concurrent/FutureTask;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/ds;->i:Ljava/util/concurrent/FutureTask;

    return-object p0
.end method

.method protected static varargs b()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/ds;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/ds;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/col/l3/ds;->f:Lcom/amap/api/col/l3/ds$b;

    new-instance v1, Lcom/amap/api/col/l3/ds$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/amap/api/col/l3/ds$a;-><init>(Lcom/amap/api/col/l3/ds;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3/ds;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/ds;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/ds;->a(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lcom/amap/api/col/l3/ds$d;->c:Lcom/amap/api/col/l3/ds$d;

    iput-object p1, p0, Lcom/amap/api/col/l3/ds;->j:Lcom/amap/api/col/l3/ds$d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3/ds$d;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->j:Lcom/amap/api/col/l3/ds$d;

    return-object v0
.end method

.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/amap/api/col/l3/ds<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->j:Lcom/amap/api/col/l3/ds$d;

    sget-object v1, Lcom/amap/api/col/l3/ds$d;->a:Lcom/amap/api/col/l3/ds$d;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/amap/api/col/l3/ds$4;->a:[I

    iget-object v1, p0, Lcom/amap/api/col/l3/ds;->j:Lcom/amap/api/col/l3/ds$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/amap/api/col/l3/ds$d;->b:Lcom/amap/api/col/l3/ds$d;

    iput-object v0, p0, Lcom/amap/api/col/l3/ds;->j:Lcom/amap/api/col/l3/ds$d;

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->h:Lcom/amap/api/col/l3/ds$e;

    iput-object p2, v0, Lcom/amap/api/col/l3/ds$e;->b:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/amap/api/col/l3/ds;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/amap/api/col/l3/ds<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/col/l3/ds;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3/ds;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ds;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method
