.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;
.super Ljava/lang/Object;
.source "SealChannelEditActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/m$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert down freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->i(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;I)I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
