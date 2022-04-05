.class Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/o;->a(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-static {p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    return-void
.end method
