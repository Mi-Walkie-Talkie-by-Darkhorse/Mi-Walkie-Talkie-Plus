.class Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;
.super Ljava/lang/Object;
.source "SharkPresetChCssEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v1, 0x41800000    # 16.0f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
