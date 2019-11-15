.class public Lcom/tencent/bugly/mimsg/CrashModule;
.super Lcom/tencent/bugly/mimsg/a;
.source "BUGLY"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static c:I

.field private static d:Z

.field private static e:Lcom/tencent/bugly/mimsg/CrashModule;


# instance fields
.field private a:J

.field private b:Lcom/tencent/bugly/mimsg/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/mimsg/CrashModule;->c:I

    sput-boolean v0, Lcom/tencent/bugly/mimsg/CrashModule;->d:Z

    new-instance v0, Lcom/tencent/bugly/mimsg/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/CrashModule;->e:Lcom/tencent/bugly/mimsg/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/a;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/mimsg/BuglyStrategy;)V
    .locals 6

    monitor-enter p0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->getLibBuglySOFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->m:Ljava/lang/String;

    const-string v1, "setted libBugly.so file path :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/mimsg/BuglyStrategy$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/mimsg/BuglyStrategy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/CrashModule;->b:Lcom/tencent/bugly/mimsg/BuglyStrategy$a;

    const-string v0, "setted CrashHanldeCallback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p2}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/CrashModule;->a:J

    const-string v0, "setted delay: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/CrashModule;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/tencent/bugly/mimsg/CrashModule;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/mimsg/CrashModule;->e:Lcom/tencent/bugly/mimsg/CrashModule;

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/tencent/bugly/mimsg/CrashModule;->id:I

    sget-object v0, Lcom/tencent/bugly/mimsg/CrashModule;->e:Lcom/tencent/bugly/mimsg/CrashModule;

    return-object v0
.end method

.method public static hasInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/mimsg/CrashModule;->d:Z

    return v0
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t_cr"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;ZLcom/tencent/bugly/mimsg/BuglyStrategy;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/mimsg/CrashModule;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Initializing crash module."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/n;->a()Lcom/tencent/bugly/mimsg/proguard/n;

    move-result-object v0

    const/16 v1, 0x3ec

    sget v2, Lcom/tencent/bugly/mimsg/CrashModule;->c:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tencent/bugly/mimsg/CrashModule;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/n;->a(II)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/mimsg/CrashModule;->d:Z

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/mimsg/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/mimsg/BuglyStrategy;)V

    const/16 v0, 0x3ec

    iget-object v3, p0, Lcom/tencent/bugly/mimsg/CrashModule;->b:Lcom/tencent/bugly/mimsg/BuglyStrategy$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/tencent/bugly/mimsg/BuglyStrategy$a;Lcom/tencent/bugly/mimsg/proguard/o;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->e()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->isEnableNativeCrashMonitor()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->g()V

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/tencent/bugly/mimsg/BuglyStrategy;->isEnableANRCrashMonitor()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->h()V

    :goto_2
    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/d;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/crash/d;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->addFilter(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->register(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/n;->a()Lcom/tencent/bugly/mimsg/proguard/n;

    move-result-object v0

    const/16 v1, 0x3ec

    sget v2, Lcom/tencent/bugly/mimsg/CrashModule;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/tencent/bugly/mimsg/CrashModule;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/n;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v1, "[crash] Closed native crash monitor!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f()V

    goto :goto_1

    :cond_5
    const-string v1, "[crash] Closed ANR monitor!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V

    goto :goto_0
.end method
