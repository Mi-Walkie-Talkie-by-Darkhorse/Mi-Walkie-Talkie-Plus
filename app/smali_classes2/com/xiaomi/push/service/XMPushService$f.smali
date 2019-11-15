.class public Lcom/xiaomi/push/service/XMPushService$f;
.super Lcom/xiaomi/push/service/XMPushService$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Exception;

.field final synthetic d:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$f;->d:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    iput p2, p0, Lcom/xiaomi/push/service/XMPushService$f;->b:I

    iput-object p3, p0, Lcom/xiaomi/push/service/XMPushService$f;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$f;->d:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/XMPushService$f;->b:I

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$f;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "disconnect the connection."

    return-object v0
.end method
