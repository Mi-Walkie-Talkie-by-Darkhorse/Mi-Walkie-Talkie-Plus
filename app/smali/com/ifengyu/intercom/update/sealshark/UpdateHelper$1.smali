.class Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/k;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    return-void
.end method
