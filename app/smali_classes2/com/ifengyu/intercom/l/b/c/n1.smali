.class public Lcom/ifengyu/intercom/l/b/c/n1;
.super Lcom/ifengyu/intercom/l/b/c/x1/k;
.source "Mi3ChanelEditToAddFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/l/b/c/n1;

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

.method public static D3()Lcom/ifengyu/intercom/l/b/c/n1;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/n1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/n1;-><init>()V

    return-object v0
.end method

.method private E3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f080158

    goto :goto_0

    :cond_0
    const p1, 0x7f080157

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f1100b2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic C3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/n1;->B3(Landroid/view/View;)V

    return-void
.end method

.method protected g3()Ljava/lang/String;
    .locals 1

    const v0, 0x7f11002d

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i3()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->i3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080141

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/h;-><init>(Lcom/ifengyu/intercom/l/b/c/n1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080157

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/l/b/c/n1$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/n1$a;-><init>(Lcom/ifengyu/intercom/l/b/c/n1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setChangeAlphaWhenPress(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setChangeAlphaWhenDisable(Z)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    return-void
.end method

.method protected t3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->o()V

    return-void
.end method

.method protected u3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->clear()V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected v3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected w3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/n1;->E3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method protected z3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 2

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

    const-string v1, "ACTION_INSERT_CHANNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    const p1, 0x7f11002c

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    goto :goto_0

    :cond_2
    const p1, 0x7f11002a

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
