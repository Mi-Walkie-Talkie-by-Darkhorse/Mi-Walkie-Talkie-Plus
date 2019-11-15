.class public Lcom/xiaomi/mipush/sdk/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/u;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/mipush/sdk/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/u;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/mipush/sdk/k;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/u;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/u;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/mipush/sdk/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/u;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/u;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/u;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->b:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enable_disable_sync_status"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/k;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/mipush/sdk/k;->a:I

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/k;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/k;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iput v0, v1, Lcom/xiaomi/mipush/sdk/k;->a:I

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/k;->a:I

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->c:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->b:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_disable_sync_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
