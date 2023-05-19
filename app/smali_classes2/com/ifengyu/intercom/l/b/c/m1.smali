.class public Lcom/ifengyu/intercom/l/b/c/m1;
.super Lcom/ifengyu/intercom/l/b/c/x1/k;
.source "Mi3ChanelEditJustFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/l/b/c/m1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;-><init>()V

    return-void
.end method

.method private synthetic B3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static D3()Lcom/ifengyu/intercom/l/b/c/m1;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/m1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/m1;-><init>()V

    return-object v0
.end method

.method private E3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f1100b2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic C3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/m1;->B3(Landroid/view/View;)V

    return-void
.end method

.method protected g3()Ljava/lang/String;
    .locals 1

    const v0, 0x7f11019e

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->i3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->X()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/g;-><init>(Lcom/ifengyu/intercom/l/b/c/m1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected u3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->q()V

    return-void
.end method

.method protected v3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->r()V

    return-void
.end method

.method protected w3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/m1;->E3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method protected z3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getStatus()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "ACTION_CLEAR_CHANNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "ACTION_EDIT_CHANNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_4

    const p1, 0x7f1101a1

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    const p1, 0x7f1100b4

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f1100b3

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
