.class Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v4, 0x41900000    # 18.0f

    if-eqz v1, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41900000    # 18.0f

    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity$c;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v6, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
