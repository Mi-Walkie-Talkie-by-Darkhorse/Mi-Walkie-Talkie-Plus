.class Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;
.super Ljava/lang/Object;
.source "SealChannelEditActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;


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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;ILjava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Z

    move-result p1

    const/high16 p3, 0x41800000    # 16.0f

    const/high16 v0, 0x41900000    # 18.0f

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v3, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v3, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;Z)Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2, p4}, Lcom/ifengyu/intercom/i/c0;->b(II)I

    move-result v2

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    if-nez p4, :cond_2

    const/high16 v2, 0x41800000    # 16.0f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x41900000    # 18.0f

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2, p4}, Lcom/ifengyu/intercom/i/c0;->b(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    const/high16 p3, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {p1, v1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
