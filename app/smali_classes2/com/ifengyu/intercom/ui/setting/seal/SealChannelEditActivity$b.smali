.class Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/o$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert up freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
