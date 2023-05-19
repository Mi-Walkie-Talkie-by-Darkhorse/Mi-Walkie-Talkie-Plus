.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;
.super Landroid/content/BroadcastReceiver;
.source "SealSharkUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/p;->c(Z)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V

    return-void
.end method
