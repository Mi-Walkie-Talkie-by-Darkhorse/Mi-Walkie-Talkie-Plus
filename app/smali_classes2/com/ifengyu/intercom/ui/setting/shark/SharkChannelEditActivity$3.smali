.class Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;
.super Ljava/lang/Object;
.source "SharkChannelEditActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;ILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->e(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3, p4}, Lcom/ifengyu/intercom/b/v;->a(II)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    if-nez p4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3, p4}, Lcom/ifengyu/intercom/b/v;->a(II)I

    move-result v3

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    if-nez p4, :cond_4

    :goto_1
    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method
