.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->receiveSharkChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->SHARK_ST_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    if-ne v0, v1, :cond_9

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->N(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->N(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    if-ne v0, v4, :cond_9

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCurrentChId()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->N(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->N(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)I

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)I

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_2

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)I

    move-result v0

    const/4 v1, 0x3

    const/high16 v2, 0x41700000    # 15.0f

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto/16 :goto_3

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    const v3, 0x7f110149

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    const v2, 0x7f11014a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    const v3, 0x7f110147

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    const v2, 0x7f110148

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 37
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->g(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 40
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$l;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method