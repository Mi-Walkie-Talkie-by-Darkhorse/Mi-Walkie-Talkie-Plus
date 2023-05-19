.class public Lcom/ifengyu/intercom/l/b/c/l1;
.super Lcom/ifengyu/intercom/l/b/c/x1/k;
.source "Mi3ChanelEditAndChangeStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private C:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/l/b/c/l1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;-><init>()V

    return-void
.end method

.method private B3()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/l1;->C:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/b/e/u;->p(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/b/e/u;->p(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic C3(Lcom/ifengyu/intercom/l/b/c/l1;Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/l1;->J3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    return-void
.end method

.method private synthetic D3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic F3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/l1;->B3()V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static I3(I)Lcom/ifengyu/intercom/l/b/c/l1;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/l1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/l1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_STATE_CH_INDEX"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private J3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/l/b/c/l1;->C:I

    const/4 v2, 0x1

    const v3, 0x7f1101b1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f110085

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private K3()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/l1;->C:I

    const-string v1, "Mi3AddListenChDialogFragment"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/l/b/b/e;

    const/16 v2, 0x65

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/l/b/b/e;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/l/b/b/e;

    const/16 v2, 0x66

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/l/b/b/e;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private L3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110086

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/b/c/f;->a:Lcom/ifengyu/intercom/l/b/c/f;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/d;-><init>(Lcom/ifengyu/intercom/l/b/c/l1;)V

    const v3, 0x7f1100c0

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "KEY_STATE_CH_INDEX"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/l/b/c/l1;->C:I

    :cond_0
    return-void
.end method

.method public synthetic E3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/l1;->D3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic H3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/l1;->G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/c;-><init>(Lcom/ifengyu/intercom/l/b/c/l1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->X()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/e;-><init>(Lcom/ifengyu/intercom/l/b/c/l1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method protected t3()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/l1;->K3()V

    return-void
.end method

.method protected u3()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/l1;->L3()V

    return-void
.end method

.method protected v3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->r()V

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

    const-string v1, "ACTION_EDIT_CHANNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "ACTION_CANCEL_CH_TO_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const p1, 0x7f110088

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110087

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_4

    const p1, 0x7f1101a1

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
