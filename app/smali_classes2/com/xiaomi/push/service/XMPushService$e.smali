.class Lcom/xiaomi/push/service/XMPushService$e;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$e;->a:Lcom/xiaomi/push/service/XMPushService;

    sget v1, Lcom/xiaomi/push/service/XMPushService;->c:I

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
