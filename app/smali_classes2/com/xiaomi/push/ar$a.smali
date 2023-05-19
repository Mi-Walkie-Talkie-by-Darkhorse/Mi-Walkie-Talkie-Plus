.class Lcom/xiaomi/push/ar$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ar;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/ar;Lcom/xiaomi/push/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ar$a;-><init>(Lcom/xiaomi/push/ar;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 p1, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar$b;->a(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar$b;->a(Landroid/os/IBinder;)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)V

    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2, p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;I)I

    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    monitor-exit p2

    goto :goto_5

    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {v0}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)V

    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {v0, p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;I)I

    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_1
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p2

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catch_2
    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)V

    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2, p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;I)I

    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_6
    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    goto :goto_6

    :catch_3
    :goto_4
    :try_start_7
    monitor-exit p1

    :goto_5
    return-void

    :goto_6
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
