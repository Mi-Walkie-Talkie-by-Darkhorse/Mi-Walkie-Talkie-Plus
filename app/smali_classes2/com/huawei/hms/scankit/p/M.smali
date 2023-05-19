.class public Lcom/huawei/hms/scankit/p/M;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/M;


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/M;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/M;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/M;->a:Lcom/huawei/hms/scankit/p/M;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/M;->b:Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/huawei/hms/scankit/p/aa;->a()Lcom/huawei/hms/scankit/p/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/aa;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "global_v2"

    const-string v3, "common_prop"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/da;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v2

    sget-object v3, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v2, v3}, Lcom/huawei/hms/scankit/p/s;->a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/huawei/hms/scankit/p/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/huawei/hms/scankit/p/aa;->a()Lcom/huawei/hms/scankit/p/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/aa;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/s;->a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/M;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/huawei/hms/scankit/p/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "global_v2"

    const-string v3, "common_prop"

    invoke-static {v1, v2, v3, v0}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/M;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/M;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/M;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/scankit/p/M;->c:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/M;->c:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/M;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/M;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/M;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
