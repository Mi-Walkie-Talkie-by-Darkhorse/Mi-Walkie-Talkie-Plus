.class public Lcom/xiaomi/mipush/sdk/t;
.super Lcom/xiaomi/channel/commonutils/misc/g$a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/g$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/t;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aj;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/z;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/z;-><init>()V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/g;->a:Lcom/xiaomi/xmpush/thrift/g;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/aj;Lcom/xiaomi/xmpush/thrift/g;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/z;->a(I)Lcom/xiaomi/xmpush/thrift/z;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/g;->b:Lcom/xiaomi/xmpush/thrift/g;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ak;->a(Lcom/xiaomi/push/service/aj;Lcom/xiaomi/xmpush/thrift/g;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/z;->b(I)Lcom/xiaomi/xmpush/thrift/z;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/af;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->p:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/af;->a([B)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/t;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/s;)V

    return-void
.end method
