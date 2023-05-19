.class public Lcom/huawei/hms/scankit/p/Na;
.super Ljava/lang/Object;
.source "HianalyticsLogProvider.java"


# static fields
.field public static volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Lcom/huawei/hms/scankit/p/Na;


# instance fields
.field public volatile d:Z

.field public volatile e:Z

.field public f:Ljava/lang/String;

.field public g:Landroid/content/Context;

.field public h:Lcom/huawei/hms/scankit/p/Pa;

.field public i:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Na;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Na;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/p/Na;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Na;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Na;->c:Lcom/huawei/hms/scankit/p/Na;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Na;->d:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Na;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->f:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/huawei/hms/scankit/p/Na;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/Na;->c:Lcom/huawei/hms/scankit/p/Na;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/huawei/hms/scankit/p/Ma;
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->g:Landroid/content/Context;

    .line 30
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/Sa;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/huawei/hms/scankit/p/Pa;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 31
    new-instance p2, Lcom/huawei/hms/scankit/p/Ma;

    invoke-direct {p2}, Lcom/huawei/hms/scankit/p/Ma;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Na;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/Na;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/p/Ma;->d(Ljava/lang/String;)V

    return-object p2
.end method

.method public final a(Lcom/huawei/hms/scankit/p/Ma;)V
    .locals 11

    .line 77
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ma;->l()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "costTimeAll"

    const-string v3, "allCnt"

    const-wide/16 v4, 0x0

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v6, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "failCnt"

    .line 86
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move-wide v6, v4

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 87
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ma;->u()Z

    move-result v10

    if-nez v10, :cond_3

    add-long/2addr v6, v8

    .line 88
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ma;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 91
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    add-long/2addr v4, v6

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/huawei/hms/scankit/p/Ma;J)V
    .locals 0

    .line 35
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->e(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 37
    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Pa;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->m(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 40
    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Pa;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->c(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 43
    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Pa;->c:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->p(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 46
    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Pa;->d:Ljava/lang/String;

    .line 47
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->b(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/Sa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->l(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/huawei/hms/scankit/p/Sa;->c()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->h(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/huawei/hms/scankit/p/Sa;->d()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->i(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/huawei/hms/scankit/p/Sa;->a()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/huawei/hms/scankit/p/Sa;->b()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->g(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/huawei/hms/scankit/p/Sa;->e()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->n(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 61
    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Pa;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->f(Ljava/lang/String;)V

    const-string p2, ""

    .line 63
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->j(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;

    .line 64
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->o(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/Na;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/Sa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Ma;->k(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->f:Ljava/lang/String;

    .line 22
    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/Na;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 24
    new-instance v2, Lcom/huawei/hms/scankit/p/Ta;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Ta;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 25
    sget-object v1, Lcom/huawei/hms/scankit/p/Na;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init timer, timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",moduleName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HaLogProvider"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/Qa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 8
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

    .line 94
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    const-string v0, "allCnt"

    .line 95
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 96
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "failCnt"

    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 98
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "costTimeAll"

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move-wide v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    cmp-long p1, v4, v2

    if-eqz p1, :cond_3

    .line 100
    div-long v2, v0, v4

    .line 101
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "costTime"

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lastCallTime"

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    sub-long/2addr v4, v6

    .line 103
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "{0:%s}"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final a()Z
    .locals 4

    const-string v0, "get"

    const-string v1, "ro.hw.country"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "la"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 68
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forbiddenHiLog.getVenderCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HaLogProvider"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CN"

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "forbiddenHiLog openHa = "

    .line 71
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 72
    iget-boolean v3, v3, Lcom/huawei/hms/scankit/p/Pa;->e:Z

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 75
    iget-boolean v0, v0, Lcom/huawei/hms/scankit/p/Pa;->e:Z

    xor-int/2addr v0, v2

    return v0

    :cond_3
    const-string v0, "forbiddenHiLog openHa is empty, appInfo is null"

    .line 76
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Na;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Na;->d:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "HaLogProvider"

    const-string v2, "initlizeHaSdk APK mode,BUILD_MODE=APK"

    .line 3
    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Na;->i:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-direct {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/hms/scankit/p/Na;->i:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 6
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 7
    iget-object v2, v2, Lcom/huawei/hms/scankit/p/Pa;->f:Ljava/lang/String;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initGrsBaseInfo CountryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/hms/scankit/p/Qa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UNKNOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Na;->i:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setSerCountry(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Na;->i:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {p1, v2}, Lcom/huawei/hms/framework/network/grs/GrsApi;->grsSdkInit(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)I

    const-string v2, "com.huawei.cloud.mlkithianalytics"

    const-string v3, "ROOT"

    .line 12
    invoke-static {v2, v3}, Lcom/huawei/hms/framework/network/grs/GrsApi;->synGetGrsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GrsApi.synGetGrsUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",BuildConfig.HIA_MODE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/p/Na;->d:Z

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Lcom/huawei/hms/scankit/p/Ra;->a:Lcom/huawei/hms/scankit/p/Ra;

    invoke-virtual {v1, p1, v0}, Lcom/huawei/hms/scankit/p/Ra;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const-string p1, "grs get url is empty, countryCode="

    .line 19
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Na;->i:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public b(Lcom/huawei/hms/scankit/p/Ma;)V
    .locals 10

    const-string v0, "60001"

    const-string v1, "HaLogProvider"

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Na;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ma;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/Na;->a(Lcom/huawei/hms/scankit/p/Ma;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ma;->l()Ljava/lang/String;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/huawei/hms/scankit/p/Na;->a:Ljava/util/Map;

    if-eqz v5, :cond_4

    .line 8
    sget-object v5, Lcom/huawei/hms/scankit/p/Na;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_2

    const-wide/16 v5, 0x0

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 10
    sget-object v6, Lcom/huawei/hms/scankit/p/Na;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    iget-boolean v6, p0, Lcom/huawei/hms/scankit/p/Na;->e:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ma;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long v5, v2, v5

    .line 13
    invoke-virtual {p0, p1, v5, v6}, Lcom/huawei/hms/scankit/p/Na;->a(Lcom/huawei/hms/scankit/p/Ma;J)V

    .line 14
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Sa;->a(Lcom/huawei/hms/scankit/p/Ma;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 15
    invoke-virtual {p0, v4, p1}, Lcom/huawei/hms/scankit/p/Na;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 16
    sget-object v5, Lcom/huawei/hms/scankit/p/Ra;->a:Lcom/huawei/hms/scankit/p/Ra;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, p1}, Lcom/huawei/hms/scankit/p/Ra;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 17
    sget-object v5, Lcom/huawei/hms/scankit/p/Ra;->a:Lcom/huawei/hms/scankit/p/Ra;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0, p1}, Lcom/huawei/hms/scankit/p/Ra;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 18
    iput-boolean v6, p0, Lcom/huawei/hms/scankit/p/Na;->e:Z

    .line 19
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/huawei/hms/scankit/p/Na;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Na;->j:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "logEnd: GetNullException"

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->f:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Na;->e:Z

    .line 27
    sget-object v0, Lcom/huawei/hms/scankit/p/Na;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    sget-object v0, Lcom/huawei/hms/scankit/p/Na;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Na;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    sget-object v1, Lcom/huawei/hms/scankit/p/Ra;->a:Lcom/huawei/hms/scankit/p/Ra;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ra;->a()V

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel timer, timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",moduleName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HaLogProvider"

    invoke-static {v2, v1}, Lcom/huawei/hms/scankit/p/Qa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 33
    sget-object v0, Lcom/huawei/hms/scankit/p/Na;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.hms.core.aidlservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 37
    new-instance v2, Landroid/util/Pair;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const-string v1, "HaLogProvider"

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_1

    .line 38
    :cond_2
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 40
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageInternal Exception e: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/Qa;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_4

    .line 42
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    if-eqz p1, :cond_4

    const-string p1, "forbiddenHiLog openHa = "

    .line 43
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Oa;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Na;->h:Lcom/huawei/hms/scankit/p/Pa;

    .line 44
    iget-boolean v0, v0, Lcom/huawei/hms/scankit/p/Pa;->e:Z

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Na;->a()Z

    move-result p1

    return p1

    :cond_4
    return v3
.end method
