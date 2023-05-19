.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;
.super Ljava/lang/Object;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->receiveBtEarConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$e;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    const v1, 0x7f1100f1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->V(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->q1()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->W(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_ERROR:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    const v3, 0x7f110313

    const v4, 0x7f1100e1

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->X(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_TIMEOUT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->X(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$b;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    const v1, 0x7f1100f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :cond_3
    :goto_0
    return-void
.end method
