.class public Lrx/internal/schedulers/c;
.super Lrx/d$a;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/f;


# static fields
.field public static final b:I

.field private static final e:Z

.field private static final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;


# instance fields
.field volatile a:Z

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lrx/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lrx/internal/schedulers/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/internal/schedulers/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/schedulers/c;->b:I

    const-string v0, "rx.scheduler.jdk6.purge-force"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lrx/internal/util/b;->b()I

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lrx/internal/schedulers/c;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/schedulers/c;->i:Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-static {v1}, Lrx/internal/schedulers/c;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0}, Lrx/internal/schedulers/c;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    :cond_0
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/c;->d:Lrx/d/e;

    iput-object v1, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    sget-object v0, Lrx/internal/schedulers/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 7

    :goto_0
    sget-object v0, Lrx/internal/schedulers/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    :goto_1
    sget-object v0, Lrx/internal/schedulers/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string v2, "RxSchedulerPurge-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Lrx/internal/schedulers/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lrx/internal/schedulers/c$1;

    invoke-direct {v1}, Lrx/internal/schedulers/c$1;-><init>()V

    sget v2, Lrx/internal/schedulers/c;->b:I

    int-to-long v2, v2

    sget v4, Lrx/internal/schedulers/c;->b:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method static b()V
    .locals 3

    :try_start_0
    sget-object v0, Lrx/internal/schedulers/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lrx/internal/schedulers/c;->e:Z

    if-eqz v0, :cond_4

    instance-of v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_3

    sget-object v0, Lrx/internal/schedulers/c;->h:Ljava/lang/Object;

    sget-object v1, Lrx/internal/schedulers/c;->i:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lrx/internal/schedulers/c;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lrx/internal/schedulers/c;->h:Ljava/lang/Object;

    :goto_2
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :cond_1
    sget-object v0, Lrx/internal/schedulers/c;->i:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    check-cast v0, Ljava/lang/reflect/Method;

    move-object v1, v0

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lrx/internal/schedulers/c;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setRemoveOnCancelPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v5, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/c;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 2

    iget-boolean v0, p0, Lrx/internal/schedulers/c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/c;->b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/f/b;)Lrx/internal/schedulers/ScheduledAction;
    .locals 4

    iget-object v0, p0, Lrx/internal/schedulers/c;->d:Lrx/d/e;

    invoke-virtual {v0, p1}, Lrx/d/e;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object v0

    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;Lrx/f/b;)V

    invoke-virtual {p5, v1}, Lrx/f/b;->a(Lrx/f;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lrx/internal/schedulers/ScheduledAction;->a(Ljava/util/concurrent/Future;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/f;)Lrx/internal/schedulers/ScheduledAction;
    .locals 4

    iget-object v0, p0, Lrx/internal/schedulers/c;->d:Lrx/d/e;

    invoke-virtual {v0, p1}, Lrx/d/e;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object v0

    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;Lrx/internal/util/f;)V

    invoke-virtual {p5, v1}, Lrx/internal/util/f;->a(Lrx/f;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lrx/internal/schedulers/ScheduledAction;->a(Ljava/util/concurrent/Future;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 4

    iget-object v0, p0, Lrx/internal/schedulers/c;->d:Lrx/d/e;

    invoke-virtual {v0, p1}, Lrx/d/e;->a(Lrx/b/a;)Lrx/b/a;

    move-result-object v0

    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lrx/internal/schedulers/ScheduledAction;->a(Ljava/util/concurrent/Future;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-boolean v0, p0, Lrx/internal/schedulers/c;->a:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/schedulers/c;->a:Z

    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lrx/internal/schedulers/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lrx/internal/schedulers/c;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
