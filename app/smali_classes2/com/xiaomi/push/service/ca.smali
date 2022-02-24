.class Lcom/xiaomi/push/service/ca;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/app/Notification;

.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/push/service/ca;->a:I

    iput-object p2, p0, Lcom/xiaomi/push/service/ca;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/ca;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/xiaomi/push/service/ca;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/ca;->a:Landroid/app/Notification;

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/xiaomi/push/service/ca;->a:I

    iget-object v1, p0, Lcom/xiaomi/push/service/ca;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/bz;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/service/ca;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/push/service/ca;->b:Ljava/lang/String;

    iget v2, p0, Lcom/xiaomi/push/service/ca;->a:I

    iget-object v3, p0, Lcom/xiaomi/push/service/ca;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/service/ca;->a:Landroid/app/Notification;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/bz;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    return-void
.end method
