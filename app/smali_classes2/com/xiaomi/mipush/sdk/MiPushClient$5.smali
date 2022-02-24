.class Lcom/xiaomi/mipush/sdk/MiPushClient$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/em$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploader(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient;->upload(Landroid/content/Context;Lcom/xiaomi/push/hz;)Z

    return-void
.end method
