.class final Lcom/blankj/utilcode/util/ThreadUtils$a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;


# direct methods
.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-static {p6, p0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->a(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$a;)Lcom/blankj/utilcode/util/ThreadUtils$a;

    .line 4
    iput-object p6, p0, Lcom/blankj/utilcode/util/ThreadUtils$a;->b:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    return-void
.end method

.method static synthetic a(II)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$a;->b(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static b(II)Ljava/util/concurrent/ExecutorService;
    .locals 24

    move/from16 v2, p0

    move/from16 v0, p1

    const/4 v1, -0x8

    const/4 v3, 0x1

    if-eq v2, v1, :cond_3

    const/4 v1, -0x4

    if-eq v2, v1, :cond_2

    const/4 v1, -0x2

    if-eq v2, v1, :cond_1

    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 1
    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$a;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v6}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixed("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    move/from16 v1, p0

    move/from16 v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils$a;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8

    .line 2
    :cond_0
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$a;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v15}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v3, "single"

    invoke-direct {v2, v3, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v9, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lcom/blankj/utilcode/util/ThreadUtils$a;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$a;

    const/16 v17, 0x0

    const/16 v18, 0x80

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(Z)V

    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v4, "cached"

    invoke-direct {v3, v4, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Lcom/blankj/utilcode/util/ThreadUtils$a;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 4
    :cond_2
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$a;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v7, v2, 0x1

    const-wide/16 v8, 0x1e

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v11}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v12, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v2, "io"

    invoke-direct {v12, v2, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/blankj/utilcode/util/ThreadUtils$a;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 5
    :cond_3
    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$a;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->a()I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v15, v2, 0x1

    const-wide/16 v16, 0x1e

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(Z)V

    new-instance v3, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v4, "cpu"

    invoke-direct {v3, v4, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v13, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Lcom/blankj/utilcode/util/ThreadUtils$a;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Argument \'command\' of type Runnable (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    iget-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catch_0
    const-string v0, "ThreadUtils"

    const-string v1, "This will not happen!"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$a;->b:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->b(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
