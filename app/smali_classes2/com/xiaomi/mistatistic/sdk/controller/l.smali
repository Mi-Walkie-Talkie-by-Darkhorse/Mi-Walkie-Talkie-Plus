.class public Lcom/xiaomi/mistatistic/sdk/controller/l;
.super Ljava/lang/Object;
.source "RemoteDataUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "next_upload_ts"

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v2, "RDUM"

    const-string v3, "update next upload time to %d according to server delay %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(JJ)V
    .locals 7

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/l$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->g()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;JJI)V

    return-void
.end method

.method private a(Ljava/lang/String;JJI)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/l$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V

    invoke-direct {v7, p1, v0, p6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;-><init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;I)V

    invoke-virtual {v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "next_upload_ts"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->f()J

    move-result-wide v2

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/controller/l$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;-><init>(JLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/l$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$4;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method private g()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUploadForegroundPackageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v2, "mistat_basic"

    const-string v3, "foreground_package"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 8

    const-wide/16 v6, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isDataUploadingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "upload is disabled."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger upload job with retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload job start, set Uploading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->f()V

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->e()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->d()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload is not allowed by the server. set Uploading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    const-string v0, "sUploading %s, trigger uploading job with delay %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/l$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$a;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    goto/16 :goto_0
.end method
