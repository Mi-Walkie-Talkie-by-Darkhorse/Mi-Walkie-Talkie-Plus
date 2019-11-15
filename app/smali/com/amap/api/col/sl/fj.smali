.class public final Lcom/amap/api/col/sl/fj;
.super Ljava/lang/Object;
.source "DNSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/fj$a;
    }
.end annotation


# static fields
.field private static c:Lcom/amap/api/col/sl/fj;


# instance fields
.field a:Lcom/amap/api/col/sl/fm;

.field volatile b:I

.field private d:Ljava/lang/Object;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/sl/fj;->c:Lcom/amap/api/col/sl/fj;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/sl/fj;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/amap/api/col/sl/fj;->f:Ljava/util/concurrent/ExecutorService;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/fj;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fj;->h:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/fj;->a:Lcom/amap/api/col/sl/fm;

    iput v2, p0, Lcom/amap/api/col/sl/fj;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/fj;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/sl/fj;->f:Ljava/util/concurrent/ExecutorService;

    iput-boolean v6, p0, Lcom/amap/api/col/sl/fj;->g:Z

    iput-boolean v7, p0, Lcom/amap/api/col/sl/fj;->h:Z

    iput-object v0, p0, Lcom/amap/api/col/sl/fj;->a:Lcom/amap/api/col/sl/fm;

    iput v6, p0, Lcom/amap/api/col/sl/fj;->b:I

    iput-object p1, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fp;->x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "HttpDNS"

    const-string v2, "1.0.0"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "com.autonavi.httpdns.HttpDnsManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/fj;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/sl/fj;->d:Ljava/lang/Object;

    if-nez v1, :cond_2

    move v1, v6

    :goto_2
    const-string v2, "HttpDns"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DNSManager"

    const-string v2, "initHttpDns"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move v1, v7

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/sl/fj;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/fj;->c:Lcom/amap/api/col/sl/fj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/fj;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/fj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/sl/fj;->c:Lcom/amap/api/col/sl/fj;

    :cond_0
    sget-object v0, Lcom/amap/api/col/sl/fj;->c:Lcom/amap/api/col/sl/fj;

    return-object v0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/sl/fj;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/fj;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v2, "pref"

    const-string v3, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amap/api/col/sl/fx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/amap/api/col/sl/fj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->d:Ljava/lang/Object;

    const-string v1, "getIpByHostAsync"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "apilocatesrc.amap.com"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v1, "HttpDns"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-eqz v3, :cond_3

    if-eq v2, v4, :cond_3

    :goto_3
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    const-string v2, "-1"

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v2, v4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fj;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/sl/fm;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/sl/fj;->g:Z

    invoke-direct {p0}, Lcom/amap/api/col/sl/fj;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/sl/fj;->a:Lcom/amap/api/col/sl/fm;

    invoke-virtual {p1}, Lcom/amap/api/col/sl/fm;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://abroad.apilocate.amap.com/mobile/binary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/fj;->d()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/sl/fj;->h:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fj;->h:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v1, "ip"

    const-string v2, "last_ip"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v2, "ip"

    const-string v3, "last_ip"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string v0, "http://apilocatesrc.amap.com/mobile/binary"

    const-string v2, "apilocatesrc.amap.com"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/col/sl/fm;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/col/sl/fm;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "host"

    const-string v2, "apilocatesrc.amap.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fj;->g:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SPUtil"

    const-string v3, "setPrefsInt"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fj;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/sl/fj;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fj;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fj;->f:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/sl/fj$a;

    iget-object v2, p0, Lcom/amap/api/col/sl/fj;->a:Lcom/amap/api/col/sl/fm;

    invoke-direct {v1, p0, v2}, Lcom/amap/api/col/sl/fj$a;-><init>(Lcom/amap/api/col/sl/fj;Lcom/amap/api/col/sl/fm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final declared-synchronized b(Lcom/amap/api/col/sl/fm;)V
    .locals 8

    const-wide/16 v6, 0x2

    monitor-enter p0

    :try_start_0
    const-string v0, "http://apilocatesrc.amap.com/mobile/binary"

    iput-object v0, p1, Lcom/amap/api/col/sl/fm;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/sl/fx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/sl/dn;->a()Lcom/amap/api/col/sl/dn;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/amap/api/col/sl/dn;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v3, "HttpDNS"

    const-string v4, "dns failed too much"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/fw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "dns_faile_count_total"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/fj;->e:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
