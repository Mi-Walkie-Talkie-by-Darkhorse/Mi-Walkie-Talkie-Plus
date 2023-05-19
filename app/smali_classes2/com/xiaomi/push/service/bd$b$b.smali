.class Lcom/xiaomi/push/service/bd$b$b;
.super Lcom/xiaomi/push/service/XMPushService$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/bd$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/bd$b;

.field a:Ljava/lang/String;

.field b:I

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/bd$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/bd$b$b;->a:Lcom/xiaomi/push/service/bd$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/XMPushService$j;
    .locals 0

    iput p1, p0, Lcom/xiaomi/push/service/bd$b$b;->b:I

    iput p2, p0, Lcom/xiaomi/push/service/bd$b$b;->c:I

    iput-object p4, p0, Lcom/xiaomi/push/service/bd$b$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/bd$b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "notify job"

    return-object v0
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b$b;->a:Lcom/xiaomi/push/service/bd$b;

    iget v1, p0, Lcom/xiaomi/push/service/bd$b$b;->b:I

    iget v2, p0, Lcom/xiaomi/push/service/bd$b$b;->c:I

    iget-object v3, p0, Lcom/xiaomi/push/service/bd$b$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/bd$b$b;->a:Lcom/xiaomi/push/service/bd$b;

    iget v1, p0, Lcom/xiaomi/push/service/bd$b$b;->b:I

    iget v2, p0, Lcom/xiaomi/push/service/bd$b$b;->c:I

    iget-object v3, p0, Lcom/xiaomi/push/service/bd$b$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/service/bd$b$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ignore notify client :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/bd$b$b;->a:Lcom/xiaomi/push/service/bd$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
