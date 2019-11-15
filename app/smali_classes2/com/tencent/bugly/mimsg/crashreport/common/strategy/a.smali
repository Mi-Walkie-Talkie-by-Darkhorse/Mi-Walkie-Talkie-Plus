.class public final Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field private static b:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

.field private static h:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/mimsg/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/bugly/mimsg/proguard/w;

.field private final e:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

.field private f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    sput v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a:I

    sput-object v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    sput-object v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/mimsg/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->g:Landroid/content/Context;

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/mimsg/proguard/w;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;
    .locals 2

    const-class v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/mimsg/a;",
            ">;)",
            "Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;"
        }
    .end annotation

    const-class v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;)Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method

.method public static d()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/p;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/proguard/r;

    iget-object v1, v0, Lcom/tencent/bugly/mimsg/proguard/r;->g:[B

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/r;->g:[B

    sget-object v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/mimsg/proguard/w;

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a$1;-><init>(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v0, "[Strategy] Notify %s"

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/tencent/bugly/mimsg/crashreport/biz/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/biz/b;->a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;Z)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/a;

    :try_start_0
    const-string v2, "[Strategy] Notify %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/a;->onServerStrategyChanged(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/bugly/mimsg/proguard/ap;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->h:J

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    iget-wide v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->p:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :cond_2
    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    invoke-direct {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;-><init>()V

    iget-boolean v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->a:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    iget-boolean v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->c:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->i:Z

    iget-boolean v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->b:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v4}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lcom/tencent/bugly/mimsg/proguard/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[Strategy] Upload url changes to %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->d:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    :cond_4
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "[Strategy] Exception upload url changes to %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->e:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    :cond_5
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->f:Lcom/tencent/bugly/mimsg/proguard/ao;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->f:Lcom/tencent/bugly/mimsg/proguard/ao;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/ao;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->f:Lcom/tencent/bugly/mimsg/proguard/ao;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/ao;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    :cond_6
    iget-wide v2, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    iget-wide v2, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->h:J

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->p:J

    :cond_7
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    const-string v2, "B11"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v6, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    :goto_1
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    const-string v2, "B3"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->y:J

    :cond_8
    iget v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->i:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->q:J

    iget v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->i:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->x:J

    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    const-string v2, "B27"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    iput v0, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    iget-object v0, p1, Lcom/tencent/bugly/mimsg/proguard/ap;->g:Ljava/util/Map;

    const-string v2, "B25"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v6, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    :cond_a
    :goto_3
    const-string v0, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-boolean v3, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    iget-boolean v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->o:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-wide v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-wide v4, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/mimsg/proguard/p;->b(I)V

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/r;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/r;-><init>()V

    iput v8, v0, Lcom/tencent/bugly/mimsg/proguard/r;->b:I

    iget-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->e:J

    iput-wide v2, v0, Lcom/tencent/bugly/mimsg/proguard/r;->a:J

    iget-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->f:J

    iput-wide v2, v0, Lcom/tencent/bugly/mimsg/proguard/r;->e:J

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/mimsg/proguard/r;->g:[B

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Lcom/tencent/bugly/mimsg/proguard/r;)Z

    invoke-virtual {p0, v1, v6}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;Z)V

    goto/16 :goto_0

    :cond_b
    iput-boolean v7, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_c
    iput-boolean v7, v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    goto/16 :goto_3
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    goto :goto_0
.end method
