.class public abstract Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# static fields
.field private static final DEFAULT_CATEGORY:Ljava/lang/String; = "default_category"

.field public static final MAX_UPLOAD_INTERVAL:J = 0x5265c00L

.field public static final MIN_UPLOAD_INTERVAL:J = 0xea60L

.field public static final UPLOAD_POLICY_BATCH:I = 0x2

.field public static final UPLOAD_POLICY_DEVELOPMENT:I = 0x5

.field public static final UPLOAD_POLICY_INTERVAL:I = 0x4

.field public static final UPLOAD_POLICY_REALTIME:I = 0x0

.field public static final UPLOAD_POLICY_WHILE_INITIALIZE:I = 0x3

.field public static final UPLOAD_POLICY_WIFI_ONLY:I = 0x1

.field private static sABTestInitialized:Z

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkABTestInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "ABTEST - ABTest  is not registed, do you forget to call ABTestRegister when application started?"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return v0
.end method

.method private static checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mistat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkInitialized()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static enableExceptionCatcher(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->isExceptionCatcherEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(Z)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(I)V

    return-void

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static enableGlobalUpload(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Z)V

    goto :goto_0
.end method

.method public static final enableLog()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()V

    return-void
.end method

.method public static getABTestControlValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUploadPolicy()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->g()I

    move-result v0

    return v0
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "MI_STAT"

    const-string v1, "initialize %s, %s, %s, %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appID or appKey is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p3, "mistats_default"

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b()V

    sput-boolean v5, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->enableAutoRecord()Z

    :cond_3
    return-void

    :cond_4
    move-object p0, v0

    goto :goto_0
.end method

.method private static isApkDebugable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isExceptionCatcherEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static recordABTestCalculateEvent(ILjava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Ljava/lang/String;JI)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    goto :goto_0
.end method

.method public static recordABTestCountEvent(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static recordABTestNumericEvent(ILjava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->b(Ljava/lang/String;JI)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    goto :goto_0
.end method

.method public static recordABTestStringPropertyEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    goto :goto_0
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "default_category"

    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/c;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    return-void

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default_category"

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    return-void
.end method

.method protected static recordCustomEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    return-void
.end method

.method public static recordException(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    return-void
.end method

.method public static final recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default_category"

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    return-void
.end method

.method public static final recordPageEnd()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final recordPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a()Lcom/xiaomi/mistatistic/sdk/controller/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->f()V

    :cond_0
    return-void
.end method

.method public static final recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a()Lcom/xiaomi/mistatistic/sdk/controller/m;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->replaceComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static final recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final recordPageStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageName should\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a()Lcom/xiaomi/mistatistic/sdk/controller/m;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->replaceComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->replaceComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static final recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default_category"

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    return-void
.end method

.method public static registerABTest(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MI_STAT"

    const-string v1, "ABTest is NOT allow to register in background running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    const-string v0, "MI_STAT"

    const-string v1, "ABTest register success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private static final replaceComma(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final setABTestGroupManually(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkABTestInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/a;->a()Lcom/xiaomi/mistatistic/sdk/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/a;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static final setUploadPolicy(IJ)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval should be set between 1 minutes and 1 day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(IJ)V

    return-void
.end method

.method public static shouldExceptionUploadImmediately()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static throwExceptionIfDebuggable()V
    .locals 2

    const-string v0, "log event without pageStart/pageEnd, ignore."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->isApkDebugable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "record pageStart/pageEnd before recording events."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static final triggerUploadManually()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    return-void
.end method
