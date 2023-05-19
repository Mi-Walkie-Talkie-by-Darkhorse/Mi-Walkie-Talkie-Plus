.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;
.super Ljava/lang/Object;
.source "SharkPresetChCssEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41900000    # 18.0f

    if-eqz v1, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41900000    # 18.0f

    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v4, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
