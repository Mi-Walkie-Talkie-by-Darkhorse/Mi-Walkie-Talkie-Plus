.class public Lcom/xiaomi/push/et;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/et;


# instance fields
.field private a:Lcom/xiaomi/push/eu;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/push/ep;->a(Landroid/content/Context;)Lcom/xiaomi/push/eu;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/et;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/et;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/push/et;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/et;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/push/et;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/et;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/et;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/et;

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-virtual {v0}, Lcom/xiaomi/push/eu;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lcom/xiaomi/push/eu;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/push/eo;->a(J)V

    return-void
.end method

.method public a(Landroid/net/NetworkInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/ex;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/ex;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-interface {v0}, Lcom/xiaomi/push/ey;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-interface {v0}, Lcom/xiaomi/push/ey;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-interface {v0}, Lcom/xiaomi/push/ey;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/et;->a:Lcom/xiaomi/push/eu;

    invoke-virtual {v0}, Lcom/xiaomi/push/eu;->a()V

    return-void
.end method
