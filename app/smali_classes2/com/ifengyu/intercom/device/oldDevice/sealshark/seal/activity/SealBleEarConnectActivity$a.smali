.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$a;
.super Ljava/lang/Object;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    const-class p2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarHelpActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->U(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->T(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)V

    :goto_0
    return-void
.end method
