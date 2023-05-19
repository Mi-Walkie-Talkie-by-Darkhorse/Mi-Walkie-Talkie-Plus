.class public final Lcom/huawei/hms/scankit/p/ba;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/ba;


# instance fields
.field public volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/p/ca;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ba;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/ba;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/ba;->a:Lcom/huawei/hms/scankit/p/ba;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/ba;->b()V

    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/ba;->a:Lcom/huawei/hms/scankit/p/ba;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/ca;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ba;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hms/scankit/p/ca;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ca;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/ba;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ba;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/p/ca;

    return-object p1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/ba;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/ba;->a:Lcom/huawei/hms/scankit/p/ba;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/ba;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/ba;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/ba;->a:Lcom/huawei/hms/scankit/p/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Lcom/huawei/hms/scankit/p/ca;
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/ba;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/ca;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/huawei/hms/scankit/p/ca;->a(J)V

    return-object p1
.end method
