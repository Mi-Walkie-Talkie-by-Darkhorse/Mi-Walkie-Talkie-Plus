.class Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;
.super Ljava/lang/Object;
.source "SealBleEarConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->receiveBtEarConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v5, 0x7f090181

    const v4, 0x7f090080

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$5;->b:[I

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->g()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_ERROR:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;->SEAL_BTEAR_CONN_TIMEOUT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_CONN_RESULT;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBleEarConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
