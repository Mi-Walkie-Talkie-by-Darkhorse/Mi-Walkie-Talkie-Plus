.class Lcom/xiaomi/push/by;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/bw;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw;

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "10054"

    return-object v0
.end method

.method public run()V
    .locals 4

    const-string v0, "exec== DbSizeControlJob"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/cb;

    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw;

    invoke-static {v1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw;

    invoke-static {v3}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/cb;-><init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    iget-object v1, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw;

    invoke-static {v1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/ci;->a(Landroid/content/Context;)Lcom/xiaomi/push/ci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/ci;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/push/by;->a:Lcom/xiaomi/push/bw;

    const-string v1, "check_time"

    invoke-static {v0, v1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;Ljava/lang/String;)V

    return-void
.end method
