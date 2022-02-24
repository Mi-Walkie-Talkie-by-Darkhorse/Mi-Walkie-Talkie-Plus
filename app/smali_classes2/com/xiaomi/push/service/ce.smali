.class Lcom/xiaomi/push/service/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/iu;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/iu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/service/ce;->a:Lcom/xiaomi/push/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/ce;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v0}, Lcom/xiaomi/push/iu;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ce;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v1}, Lcom/xiaomi/push/iu;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/ce;->a:Lcom/xiaomi/push/iu;

    sget-object v3, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/cd;->a()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaomi/push/service/XMPushService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/cd;->a()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/ce;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v2}, Lcom/xiaomi/push/iu;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    goto :goto_0

    :cond_0
    const-string v0, "UNDatas UploadNotificationDatas failed because not xmsf"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
