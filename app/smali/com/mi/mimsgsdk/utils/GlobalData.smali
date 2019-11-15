.class public abstract Lcom/mi/mimsgsdk/utils/GlobalData;
.super Ljava/lang/Object;
.source "GlobalData.java"


# static fields
.field public static final ASYNC_EXECUTOR_LEVEL_IMAGEWORKER:I = 0x0

.field public static final ASYNC_EXECUTOR_LEVEL_LOCAL_IO:I = 0x1

.field public static final ASYNC_EXECUTOR_LEVEL_NETWORK:I = 0x2

.field public static final CPU_COUNT:I

.field private static PB_REQUEST_ID:I

.field private static REQUEST_CODE_FIRST:I

.field public static volatile currentBuddy:I

.field public static volatile currentVuid:J

.field private static executors:[Ljava/util/concurrent/ThreadPoolExecutor;

.field public static globalUIHandler:Landroid/os/Handler;

.field public static volatile mAppId:I

.field public static mContext:Landroid/content/Context;

.field public static needUpdateApp:Z

.field private static sIsDebuggable:Z

.field private static sPBRidLock:Ljava/lang/Object;

.field private static sRequestCodeLock:Ljava/lang/Object;

.field public static screenDensity:F

.field public static screenHeight:I

.field public static screenMatrix:Landroid/util/DisplayMetrics;

.field public static screenRate:F

.field public static screenRateMatrix:Landroid/graphics/Matrix;

.field public static screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x186a0

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->REQUEST_CODE_FIRST:I

    sput v3, Lcom/mi/mimsgsdk/utils/GlobalData;->PB_REQUEST_ID:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->sRequestCodeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->sPBRidLock:Ljava/lang/Object;

    sput v2, Lcom/mi/mimsgsdk/utils/GlobalData;->screenRate:F

    sput v2, Lcom/mi/mimsgsdk/utils/GlobalData;->screenDensity:F

    sput v1, Lcom/mi/mimsgsdk/utils/GlobalData;->screenWidth:I

    sput v1, Lcom/mi/mimsgsdk/utils/GlobalData;->screenHeight:I

    sput-boolean v1, Lcom/mi/mimsgsdk/utils/GlobalData;->needUpdateApp:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->CPU_COUNT:I

    new-array v0, v3, [Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    const v0, 0x5f5e100

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->mAppId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static calculateScreenRate(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenMatrix:Landroid/util/DisplayMetrics;

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenMatrix:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenWidth:I

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenMatrix:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenHeight:I

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenMatrix:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v0, v1

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenRate:F

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenMatrix:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenDensity:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenRateMatrix:Landroid/graphics/Matrix;

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenRateMatrix:Landroid/graphics/Matrix;

    sget v1, Lcom/mi/mimsgsdk/utils/GlobalData;->screenRate:F

    sget v2, Lcom/mi/mimsgsdk/utils/GlobalData;->screenRate:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    sget v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenWidth:I

    sget v1, Lcom/mi/mimsgsdk/utils/GlobalData;->screenHeight:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenHeight:I

    sget v1, Lcom/mi/mimsgsdk/utils/GlobalData;->screenWidth:I

    sput v1, Lcom/mi/mimsgsdk/utils/GlobalData;->screenHeight:I

    sput v0, Lcom/mi/mimsgsdk/utils/GlobalData;->screenWidth:I

    :cond_0
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAppId()I
    .locals 1

    sget v0, Lcom/mi/mimsgsdk/utils/GlobalData;->mAppId:I

    return v0
.end method

.method public static getExecutorByLevel(I)Ljava/util/concurrent/Executor;
    .locals 2

    if-lez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getImageWorkerTaskCount()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getPBRid()I
    .locals 3

    sget-object v1, Lcom/mi/mimsgsdk/utils/GlobalData;->sPBRidLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/mi/mimsgsdk/utils/GlobalData;->PB_REQUEST_ID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/mi/mimsgsdk/utils/GlobalData;->PB_REQUEST_ID:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRequestCode()I
    .locals 3

    sget-object v1, Lcom/mi/mimsgsdk/utils/GlobalData;->sRequestCodeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/mi/mimsgsdk/utils/GlobalData;->REQUEST_CODE_FIRST:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/mi/mimsgsdk/utils/GlobalData;->REQUEST_CODE_FIRST:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initialize(Landroid/content/Context;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v9

    :goto_0
    sput-boolean v0, Lcom/mi/mimsgsdk/utils/GlobalData;->sIsDebuggable:Z

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    :cond_0
    sput-object p0, Lcom/mi/mimsgsdk/utils/GlobalData;->mContext:Landroid/content/Context;

    sput p1, Lcom/mi/mimsgsdk/utils/GlobalData;->mAppId:I

    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/GlobalData;->calculateScreenRate(Landroid/content/Context;)V

    new-instance v8, Lcom/mi/mimsgsdk/utils/GlobalData$1;

    invoke-direct {v8}, Lcom/mi/mimsgsdk/utils/GlobalData$1;-><init>()V

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/mi/mimsgsdk/utils/GlobalData;->CPU_COUNT:I

    mul-int/lit8 v3, v3, 0x14

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    aput-object v1, v0, v2

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->executors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v0, v0, v2

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static isDebuggable()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/utils/GlobalData;->sIsDebuggable:Z

    return v0
.end method

.method public static isMsgBelongCurrentChatPage(IJ)Z
    .locals 3

    sget v0, Lcom/mi/mimsgsdk/utils/GlobalData;->currentBuddy:I

    if-ne p0, v0, :cond_0

    sget-wide v0, Lcom/mi/mimsgsdk/utils/GlobalData;->currentVuid:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
