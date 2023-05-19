.class public Lcom/huawei/hms/scankit/p/Tc;
.super Ljava/lang/Object;
.source "HiAnalyticsLogExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Tc$b;,
        Lcom/huawei/hms/scankit/p/Tc$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/huawei/hms/scankit/p/Tc;


# instance fields
.field private b:Ljava/util/Timer;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:J

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/Tc$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Tc;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Tc;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Tc;->a:Lcom/huawei/hms/scankit/p/Tc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->b:Ljava/util/Timer;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Tc;->c:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->f:Ljava/util/concurrent/locks/Lock;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->g:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/Tc;
    .locals 1

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/p/Tc;->a:Lcom/huawei/hms/scankit/p/Tc;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "ScanHiAnalytics"

    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-direct {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;-><init>()V

    .line 9
    new-instance v3, Lcom/huawei/hms/scankit/p/Cc;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/huawei/hms/scankit/p/Cc;-><init>(Landroid/content/Context;Z)V

    .line 10
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Cc;->a()Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "getCollectURL:localCountryCode "

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_0

    const-string v4, "UNKNOWN"

    .line 13
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setSerCountry(Ljava/lang/String;)V

    .line 15
    :cond_0
    new-instance v3, Lcom/huawei/hms/framework/network/grs/GrsClient;

    invoke-direct {v3, p1, v2}, Lcom/huawei/hms/framework/network/grs/GrsClient;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "com.huawei.cloud.mlkithianalytics"

    const-string v4, "ROOT"

    .line 16
    :try_start_3
    invoke-virtual {v3, p1, v4}, Lcom/huawei/hms/framework/network/grs/GrsClient;->synGetGrsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "grs get url success: "

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "  countryCode = "

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Tc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Tc;->d()V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Tc;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Tc;->c:Z

    return p1
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Tc;->d:Z

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/Tc$a;

    .line 8
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Tc$a;->a(Lcom/huawei/hms/scankit/p/Tc$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Tc$a;->b(Lcom/huawei/hms/scankit/p/Tc$a;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/huawei/hms/scankit/p/Tc;->c(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Tc;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Tc;->c(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_2
    new-instance v0, Lcom/huawei/hms/scankit/p/Tc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/huawei/hms/scankit/p/Tc$a;-><init>(Lcom/huawei/hms/scankit/p/Tc;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/huawei/hms/scankit/p/Sc;)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Tc;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .locals 7

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/Tc;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1770

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 9
    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/Tc;->e:J

    .line 10
    new-instance v0, Lcom/huawei/hms/scankit/p/Sc;

    const-string v1, "ScanHiAnalytics"

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/scankit/p/Sc;-><init>(Lcom/huawei/hms/scankit/p/Tc;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/p/sa;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, p2}, Lcom/huawei/hms/scankit/p/sa;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 3
    iget-boolean p1, p0, Lcom/huawei/hms/scankit/p/Tc;->c:Z

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Tc;->c:Z

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Tc;->b:Ljava/util/Timer;

    new-instance v0, Lcom/huawei/hms/scankit/p/Tc$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/scankit/p/Tc$b;-><init>(Lcom/huawei/hms/scankit/p/Tc;Lcom/huawei/hms/scankit/p/Sc;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScanHiAnalytics"

    invoke-static {p2, p1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Tc;->d:Z

    if-nez v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/Tc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/p/ua;->a()V

    .line 7
    new-instance v2, Lcom/huawei/hms/scankit/p/ta;

    invoke-direct {v2, v0}, Lcom/huawei/hms/scankit/p/ta;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/huawei/hms/scankit/p/ta;->a(Z)Lcom/huawei/hms/scankit/p/ta;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Lcom/huawei/hms/scankit/p/ta;->b(Z)Lcom/huawei/hms/scankit/p/ta;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/scankit/p/ta;->a(ILjava/lang/String;)Lcom/huawei/hms/scankit/p/ta;

    move-result-object v0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/scankit/p/ta;->a(ILjava/lang/String;)Lcom/huawei/hms/scankit/p/ta;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ta;->a()V

    .line 12
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Tc;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Tc;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Tc;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Tc;->c(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Tc;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 7
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Tc;->c()V

    :goto_0
    return-void
.end method
