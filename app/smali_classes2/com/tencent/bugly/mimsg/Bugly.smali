.class public Lcom/tencent/bugly/mimsg/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final SDK_IS_DEV:Ljava/lang/String; = "false"

.field private static a:Z

.field public static applicationContext:Landroid/content/Context;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field public static enable:Z

.field public static isDev:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/bugly/mimsg/Bugly;->enable:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/mimsg/Bugly;->applicationContext:Landroid/content/Context;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BuglyCrashModule"

    aput-object v1, v0, v3

    const-string v1, "BuglyRqdModule"

    aput-object v1, v0, v2

    const-string v1, "BuglyBetaModule"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/bugly/mimsg/Bugly;->b:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BuglyRqdModule"

    aput-object v1, v0, v3

    const-string v1, "BuglyCrashModule"

    aput-object v1, v0, v2

    const-string v1, "BuglyBetaModule"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/bugly/mimsg/Bugly;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-class v2, Lcom/tencent/bugly/mimsg/Bugly;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v3, 0x22c

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(ILcom/tencent/bugly/mimsg/proguard/o;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "app_channel"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/mimsg/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/BuglyStrategy;)V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/BuglyStrategy;)V
    .locals 6

    const-class v2, Lcom/tencent/bugly/mimsg/Bugly;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/mimsg/Bugly;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/tencent/bugly/mimsg/Bugly;->a:Z

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/mimsg/Bugly;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "init arg \'context\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/mimsg/Bugly;->isDev()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/mimsg/Bugly;->c:[Ljava/lang/String;

    sput-object v0, Lcom/tencent/bugly/mimsg/Bugly;->b:[Ljava/lang/String;

    :cond_2
    sget-object v3, Lcom/tencent/bugly/mimsg/Bugly;->b:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v0, v3, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v5, "BuglyCrashModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->getInstance()Lcom/tencent/bugly/mimsg/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/b;->a(Lcom/tencent/bugly/mimsg/a;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const-string v5, "BuglyBetaModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BuglyRqdModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BuglyFeedbackModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_5
    sget-boolean v0, Lcom/tencent/bugly/mimsg/Bugly;->enable:Z

    sput-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    sget-object v0, Lcom/tencent/bugly/mimsg/Bugly;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/bugly/mimsg/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/BuglyStrategy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static isDev()Z
    .locals 3

    sget-object v0, Lcom/tencent/bugly/mimsg/Bugly;->isDev:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "false"

    const-string v1, "@"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/mimsg/Bugly;->isDev:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/Bugly;->isDev:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
