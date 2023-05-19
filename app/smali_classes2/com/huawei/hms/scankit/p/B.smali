.class public final Lcom/huawei/hms/scankit/p/B;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/p/F;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/huawei/hms/scankit/p/B;


# instance fields
.field public c:Lcom/huawei/hms/scankit/p/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/B;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/scankit/p/E;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/E;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/B;->c:Lcom/huawei/hms/scankit/p/E;

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/B;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/B;->b:Lcom/huawei/hms/scankit/p/B;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->d()V

    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/B;->b:Lcom/huawei/hms/scankit/p/B;

    return-object v0
.end method

.method public static declared-synchronized d()V
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/B;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/B;->b:Lcom/huawei/hms/scankit/p/B;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/B;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/B;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/B;->b:Lcom/huawei/hms/scankit/p/B;
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
.method public a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/F;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/B;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/p/F;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/F;)V
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/B;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/huawei/hms/scankit/p/B;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/huawei/hms/scankit/p/E;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/B;->c:Lcom/huawei/hms/scankit/p/E;

    return-object v0
.end method
