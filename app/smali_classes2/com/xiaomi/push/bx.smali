.class Lcom/xiaomi/push/bx;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/bw;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/bx;->a:Lcom/xiaomi/push/bw;

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "10052"

    return-object v0
.end method

.method public run()V
    .locals 2

    const-string v0, "exec== mUploadJob"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/bx;->a:Lcom/xiaomi/push/bw;

    invoke-static {v0}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;)Lcom/xiaomi/push/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/bx;->a:Lcom/xiaomi/push/bw;

    invoke-static {v0}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;)Lcom/xiaomi/push/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/bx;->a:Lcom/xiaomi/push/bw;

    invoke-static {v1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/push/cm;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/bx;->a:Lcom/xiaomi/push/bw;

    const-string v1, "upload_time"

    invoke-static {v0, v1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/bw;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
