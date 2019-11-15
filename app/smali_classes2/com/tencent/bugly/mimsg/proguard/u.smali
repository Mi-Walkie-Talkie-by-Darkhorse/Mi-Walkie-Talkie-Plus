.class public final Lcom/tencent/bugly/mimsg/proguard/u;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/mimsg/proguard/u$a;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/bugly/mimsg/proguard/u;


# instance fields
.field public a:Z

.field private final c:Lcom/tencent/bugly/mimsg/proguard/p;

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Object;

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:J

.field private n:[B

.field private o:J

.field private p:Ljava/lang/String;

.field private q:J

.field private final r:Ljava/lang/Object;

.field private s:Z

.field private final t:Ljava/lang/Object;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/u;->b:Lcom/tencent/bugly/mimsg/proguard/u;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->j:Ljava/lang/Object;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->l:[B

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->m:J

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->o:J

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->r:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->t:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    iput v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->u:I

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->d:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    :try_start_0
    const-string v0, "android.util.Base64"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/sbTvVO2+RvW0PH01IdaBxc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fB6fbHZocC9T3nl1+J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->k:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[UploadManager] Error: Can not find Base64 class, will not use stronger security way to upload"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/mimsg/proguard/u;
    .locals 2

    const-class v0, Lcom/tencent/bugly/mimsg/proguard/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/u;->b:Lcom/tencent/bugly/mimsg/proguard/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/proguard/u;
    .locals 2

    const-class v1, Lcom/tencent/bugly/mimsg/proguard/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/u;->b:Lcom/tencent/bugly/mimsg/proguard/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/u;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/mimsg/proguard/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/u;->b:Lcom/tencent/bugly/mimsg/proguard/u;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/u;->b:Lcom/tencent/bugly/mimsg/proguard/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/proguard/u;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/proguard/u;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/mimsg/proguard/u;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/proguard/u;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v0, "[UploadManager] Upload task should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "BUGLY_SYNC_UPLOAD"

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v4}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v4}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0, v3}, Lcom/tencent/bugly/mimsg/proguard/u;->c(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;ZZJ)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v0, "[UploadManager] Upload task should not be null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/bugly/mimsg/proguard/u;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[UploadManager] Sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p4, p5}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0, v4}, Lcom/tencent/bugly/mimsg/proguard/u;->c(I)V

    goto :goto_0

    :cond_3
    const-string v0, "[UploadManager] Session ID is expired, drop it (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/tencent/bugly/mimsg/proguard/u;->b(Z)V

    :cond_4
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "[UploadManager] Initialize security context now (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_6

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/u$a;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->d:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/proguard/u$a;-><init>(Lcom/tencent/bugly/mimsg/proguard/u;Landroid/content/Context;Ljava/lang/Runnable;J)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/u$a;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/mimsg/proguard/u$a;-><init>(Lcom/tencent/bugly/mimsg/proguard/u;Landroid/content/Context;)V

    const-string v1, "[UploadManager] Create and start a new thread to execute a task of initializing security context: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "BUGLY_ASYNC_UPLOAD"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "[UploadManager] Asynchronous thread pool is unavailable now, try next time."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->t:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/proguard/u;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    return v0
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "[UploadManager] Upload task should not be null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v2, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/bugly/mimsg/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    :goto_1
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "[UploadManager] Failed to add upload task to queue: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/proguard/u;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/bugly/mimsg/proguard/u;)I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->u:I

    return v0
.end method

.method private c(I)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    const-string v0, "[UploadManager] Number of task to execute should >= 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/mimsg/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string v0, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const-string v0, "[UploadManager] There is no upload task in queue."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_2
    if-eqz p1, :cond_d

    if-ge p1, v1, :cond_4

    move v0, v2

    :goto_1
    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lcom/tencent/bugly/mimsg/proguard/w;->c()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_3
    move v1, v2

    :goto_2
    move v3, v2

    :goto_3
    if-ge v3, p1, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v5, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    add-int v3, v1, v0

    if-ge p1, v3, :cond_d

    sub-int v0, p1, v1

    move p1, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v8, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_5
    const-string v8, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez p1, :cond_7

    const-string v0, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v12

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_7
    move v3, v2

    :goto_7
    if-ge v3, p1, :cond_a

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    iget-object v7, p0, Lcom/tencent/bugly/mimsg/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v7

    :try_start_6
    iget v8, p0, Lcom/tencent/bugly/mimsg/proguard/u;->u:I

    if-lt v8, v12, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_8
    monitor-exit v7

    const-string v7, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "BUGLY_ASYNC_UPLOAD"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v7, Lcom/tencent/bugly/mimsg/proguard/u$1;

    invoke-direct {v7, p0, v0}, Lcom/tencent/bugly/mimsg/proguard/u$1;-><init>(Lcom/tencent/bugly/mimsg/proguard/u;Ljava/lang/Runnable;)V

    const-string v8, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v7, v8}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/tencent/bugly/mimsg/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7
    iget v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->u:I

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_9
    const-string v7, "[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v11}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_8

    :cond_a
    if-lez v1, :cond_b

    const-string v0, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v12

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    if-eqz v4, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/u$2;

    invoke-direct {v0, p0, v1, v6}, Lcom/tencent/bugly/mimsg/proguard/u$2;-><init>(Lcom/tencent/bugly/mimsg/proguard/u;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto/16 :goto_2

    :cond_d
    move p1, v1

    goto/16 :goto_1
.end method

.method private static c()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-string v1, "[UploadManager] Drop security info of database (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[UploadManager] Failed to get Database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x22b

    const-string v3, "security_info"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(ILjava/lang/String;Lcom/tencent/bugly/mimsg/proguard/o;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/bugly/mimsg/proguard/u;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/proguard/u;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/bugly/mimsg/proguard/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "[UploadManager] Record security info to database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] Failed to get database"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->o:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v1, 0x22b

    const-string v2, "security_info"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/mimsg/proguard/o;Z)Z

    move v0, v7

    goto :goto_0

    :cond_1
    const-string v0, "[UploadManager] AES key is null, will not record"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->c()Z

    move v0, v6

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic e(Lcom/tencent/bugly/mimsg/proguard/u;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->t:Ljava/lang/Object;

    return-object v0
.end method

.method private e()Z
    .locals 8

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "[UploadManager] Load security info from database (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] Failed to get database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v3, 0x22b

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(ILcom/tencent/bugly/mimsg/proguard/o;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "security_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/String;

    const-string v4, "security_info"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v4, v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :try_start_2
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :try_start_3
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/bugly/mimsg/proguard/u;->o:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const/4 v3, 0x2

    :try_start_4
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-object v3, v4, v3

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    :try_start_5
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    :try_start_6
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->c()Z

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    goto :goto_3

    :cond_5
    const-string v0, "SecurityInfo = %s, Strings.length = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v2

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 8

    const/4 v4, 0x1

    monitor-enter p0

    const-wide/16 v2, 0x0

    if-ltz p1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/proguard/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/r;

    iget-wide v6, v0, Lcom/tencent/bugly/mimsg/proguard/r;->e:J

    cmp-long v1, v6, v2

    if-lez v1, :cond_5

    iget-wide v0, v0, Lcom/tencent/bugly/mimsg/proguard/r;->e:J

    :goto_2
    move-wide v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/proguard/p;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/r;

    iget-wide v2, v0, Lcom/tencent/bugly/mimsg/proguard/r;->e:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_4
    const-string v0, "[UploadManager] Unknown upload ID: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method public final a(Z)J
    .locals 11

    const/4 v2, 0x3

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->b()J

    move-result-wide v6

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/p;->a(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/r;

    iget-wide v8, v0, Lcom/tencent/bugly/mimsg/proguard/r;->e:J

    cmp-long v6, v8, v6

    if-ltz v6, :cond_0

    iget-object v6, v0, Lcom/tencent/bugly/mimsg/proguard/r;->g:[B

    invoke-static {v6}, Lcom/tencent/bugly/mimsg/proguard/z;->c([B)J

    move-result-wide v4

    if-ne v1, v2, :cond_3

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->f:J

    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-wide v0, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Ljava/util/List;)V

    :cond_1
    :goto_3
    const-string v2, "[UploadManager] Local network consume: %d KB"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x400

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :try_start_1
    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->g:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->g:J

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->f:J

    goto :goto_3
.end method

.method public final a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;IIZLjava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/mimsg/proguard/t;",
            "IIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/v;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->d:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    const/4 v11, 0x0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/tencent/bugly/mimsg/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;ZIIZLjava/util/Map;)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move/from16 v4, p9

    invoke-direct/range {v2 .. v7}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(IJ)V
    .locals 4

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/r;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/r;-><init>()V

    iput p1, v0, Lcom/tencent/bugly/mimsg/proguard/r;->b:I

    iput-wide p2, v0, Lcom/tencent/bugly/mimsg/proguard/r;->e:J

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/proguard/r;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/proguard/r;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/proguard/r;->g:[B

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/mimsg/proguard/p;->b(I)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Lcom/tencent/bugly/mimsg/proguard/r;)Z

    const-string v0, "[UploadManager] Uploading(ID:%d) time: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/tencent/bugly/mimsg/proguard/z;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "[UploadManager] Unknown uploading ID: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILcom/tencent/bugly/mimsg/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;JZ)V
    .locals 10

    iget v3, p2, Lcom/tencent/bugly/mimsg/proguard/am;->g:I

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/lang/Object;)[B

    move-result-object v4

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/v;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->d:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    move v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/tencent/bugly/mimsg/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;ZZ)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(ILcom/tencent/bugly/mimsg/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;Z)V
    .locals 11

    iget v2, p2, Lcom/tencent/bugly/mimsg/proguard/am;->g:I

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/mimsg/proguard/u;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;IIZLjava/util/Map;)V

    return-void
.end method

.method public final a(ILcom/tencent/bugly/mimsg/proguard/an;)V
    .locals 8

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p1, v4, :cond_3

    const-string v0, "[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/mimsg/proguard/u;->b(Z)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->d:Landroid/content/Context;

    const-string v2, "security_info"

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget-object v3, p0, Lcom/tencent/bugly/mimsg/proguard/u;->t:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->s:Z

    if-nez v0, :cond_4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    monitor-exit v3

    if-eqz p2, :cond_9

    const-string v0, "[UploadManager] Record security context (pid=%d | tid=%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_2
    iget-object v3, p2, Lcom/tencent/bugly/mimsg/proguard/an;->g:Ljava/util/Map;

    if-eqz v3, :cond_6

    const-string v0, "S1"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "S2"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v4, p2, Lcom/tencent/bugly/mimsg/proguard/an;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->m:J

    const-string v0, "[UploadManager] Time lag of server is: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/proguard/u;->m:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "S1"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    const-string v0, "[UploadManager] Session ID from server is: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-lez v0, :cond_8

    :try_start_3
    const-string v0, "S2"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    const-string v0, "[UploadManager] Session expired time from server is: %d(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    const-string v0, "[UploadManager] Session expired time from server is less than 1 second, will set to default value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/32 v4, 0xf731400

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/proguard/u;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/mimsg/proguard/u;->c(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_4
    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/tencent/bugly/mimsg/proguard/u;->b(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v0, "[UploadManager] Session expired time is invalid, will set to default value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/32 v4, 0xf731400

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_4

    :cond_7
    :try_start_6
    const-string v0, "[UploadManager] Failed to record database"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v0, "[UploadManager] Session ID from server is invalid, try next time"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :cond_9
    const-string v0, "[UploadManager] Fail to init security context and clear local info (pid=%d | tid=%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/tencent/bugly/mimsg/proguard/u;->b(Z)V

    goto/16 :goto_1
.end method

.method protected final declared-synchronized a(JZ)V
    .locals 7

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    :goto_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/mimsg/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/mimsg/proguard/r;-><init>()V

    iput v0, v1, Lcom/tencent/bugly/mimsg/proguard/r;->b:I

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/proguard/r;->e:J

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/mimsg/proguard/r;->c:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/mimsg/proguard/r;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/bugly/mimsg/proguard/z;->c(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/mimsg/proguard/r;->g:[B

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/mimsg/proguard/p;->b(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->c:Lcom/tencent/bugly/mimsg/proguard/p;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Lcom/tencent/bugly/mimsg/proguard/r;)Z

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->g:J

    :goto_1
    const-string v0, "[UploadManager] Network total consume: %d KB"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v4, 0x400

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "[UploadManager] Integrate security to HTTP headers (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v0, "secureSessionId"

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x3

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    :cond_2
    const-string v1, "[UploadManager] AES key is invalid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->l:[B

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->l:[B

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->l:[B

    if-nez v2, :cond_4

    const-string v1, "[UploadManager] Failed to decode RSA public key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    iget-object v3, p0, Lcom/tencent/bugly/mimsg/proguard/u;->l:[B

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->b(I[B[B)[B

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, "[UploadManager] Failed to encrypt AES key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v1, "[UploadManager] Failed to encode AES key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v0, "raKey"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0
.end method

.method public final a([B)[B
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    invoke-static {v4, p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected final b(Z)V
    .locals 5

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/u;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "[UploadManager] Clear security context (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->c()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final b()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->m:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    const-string v4, "[UploadManager] Session ID expired time from server is: %d(%s), but now is: %d(%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/tencent/bugly/mimsg/proguard/u;->q:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/tencent/bugly/mimsg/b;->c:Z

    if-eqz v2, :cond_1

    const-string v2, "Uploading frequency will not be checked if SDK is in debug mode."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/mimsg/proguard/u;->a(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v4, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string v2, "[UploadManager] Data only be uploaded once in %d seconds."

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0
.end method

.method public final b([B)[B
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u;->n:[B

    invoke-static {v2, p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method
