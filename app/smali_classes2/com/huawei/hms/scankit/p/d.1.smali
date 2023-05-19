.class public Lcom/huawei/hms/scankit/p/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/d;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/d;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/huawei/hms/scankit/p/d;
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/d;->a:Lcom/huawei/hms/scankit/p/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/d;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/d;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/d;->a:Lcom/huawei/hms/scankit/p/d;

    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/d;->a:Lcom/huawei/hms/scankit/p/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/y;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/b;->b(Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/huawei/hms/scankit/p/p;->a:Lcom/huawei/hms/scankit/p/p;

    .line 2
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/p;->a()Z

    move-result v1

    const-string v2, "HiAnalyticsEventServer"

    if-eqz v1, :cond_1

    const-string v1, "global_v2"

    const-string v3, "app_ver"

    const-string v4, ""

    invoke-static {p1, v1, v3, v4}, Lcom/huawei/hms/scankit/p/da;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v1, v3, v0}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/huawei/hms/scankit/p/b;->c(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "app ver is first save!"

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "the appVers are different!"

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/d;->a()Lcom/huawei/hms/scankit/p/d;

    move-result-object p1

    const-string v0, "alltype"

    .line 4
    invoke-virtual {p1, v4, v0, v5}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "userManager.isUserUnlocked() == false"

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/d;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/d;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hms/scankit/p/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/E;->g(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "HiAnalyticsEventServer"

    const-string p2, "onReport() null context or SDK was not init."

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "hmsSdk"

    const-string v1, "onReport: Before calling runtaskhandler()"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/n;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2, v0, v1}, Lcom/huawei/hms/scankit/p/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    move-wide v7, v0

    new-instance v0, Lcom/huawei/hms/scankit/p/f;

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/n;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hms/scankit/p/f;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1
    sget-object p1, Lcom/huawei/hms/scankit/p/j;->a:Lcom/huawei/hms/scankit/p/j;

    .line 2
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/j;->a(Lcom/huawei/hms/scankit/p/i;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/c;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HiAnalyticsEventServer"

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/c;->e(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v6, 0x7530

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    const-string v0, "begin to call onReport!"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v4, v5}, Lcom/huawei/hms/scankit/p/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "autoReport timeout. interval < 30s "

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "auto report is closed tag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/A;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "strNetworkType is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HiAnalyticsEventServer"

    invoke-static {p2, p1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/huawei/hms/scankit/p/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/hms/scankit/p/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/huawei/hms/scankit/p/j;->a:Lcom/huawei/hms/scankit/p/j;

    .line 4
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/j;->a(Lcom/huawei/hms/scankit/p/i;)V

    return-void
.end method
