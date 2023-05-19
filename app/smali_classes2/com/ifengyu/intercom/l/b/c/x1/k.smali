.class public abstract Lcom/ifengyu/intercom/l/b/c/x1/k;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3ChanelEditBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected A:Lcom/ifengyu/intercom/l/b/e/u;

.field protected B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field protected z:Lcom/ifengyu/intercom/k/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private A3()V
    .locals 9

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
    new-instance v1, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNameSuffix()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110099

    .line 4
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v3, v1

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f110309

    .line 5
    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 6
    invoke-virtual {v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v5, 0x7f1100bd

    const/4 v6, 0x2

    sget-object v7, Lcom/ifengyu/intercom/l/b/c/x1/h;->a:Lcom/ifengyu/intercom/l/b/c/x1/h;

    const/4 v8, 0x0

    .line 8
    invoke-virtual {v3, v8, v5, v6, v7}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v5, 0x7f1100c6

    new-instance v6, Lcom/ifengyu/intercom/l/b/c/x1/g;

    invoke-direct {v6, p0, v1, v2, v0}, Lcom/ifengyu/intercom/l/b/c/x1/g;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/k;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 9
    invoke-virtual {v3, v8, v5, v8, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v0, 0x7f120100

    .line 11
    invoke-virtual {v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v1

    new-array v3, v4, [Landroid/text/InputFilter;

    .line 13
    new-instance v4, Lcom/ifengyu/intercom/p/c0;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/ifengyu/intercom/p/c0;-><init>(I)V

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 16
    invoke-static {v1}, Lcom/ifengyu/library/utils/d;->d(Landroid/view/View;)V

    return-void
.end method

.method private h3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/k;->H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->g3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v2, v2, Lcom/ifengyu/intercom/k/k;->E:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->w(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    return-void
.end method

.method private synthetic j3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/k;->w3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    :cond_0
    return-void
.end method

.method private synthetic l3(ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->v3()V

    return-void
.end method

.method static synthetic n3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic o3(Lcom/ifengyu/intercom/m/b/h;ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/h;->I()I

    move-result p4

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/h;->K()I

    move-result p1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 5
    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 6
    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 8
    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 10
    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    .line 11
    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result p2

    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 13
    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->v3()V

    return-void
.end method

.method static synthetic q3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic r3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    const p1, 0x7f110309

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    :cond_0
    const-string p5, "GB2312"

    .line 4
    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p5

    array-length p5, p5

    const/16 v0, 0xe

    if-le p5, v0, :cond_1

    const p1, 0x7f1102da

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p4}, Landroidx/appcompat/app/d;->dismiss()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p4}, Landroidx/appcompat/app/d;->dismiss()V

    .line 9
    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/models/ChannelModel;->setChannelName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->v3()V

    return-void
.end method

.method private x3(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f110332

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f1101a3

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    new-instance v2, Lcom/ifengyu/intercom/ui/widget/frequency/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/widget/frequency/c;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/frequency/c;->H(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/c;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1102a4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/frequency/c;->G(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/c;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x1/d;

    invoke-direct {v1, p0, p1, v0}, Lcom/ifengyu/intercom/l/b/c/x1/d;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/k;ZLcom/ifengyu/intercom/models/ChannelModel;)V

    .line 7
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/frequency/c;->I(Lcom/ifengyu/intercom/ui/widget/frequency/c$a;)Lcom/ifengyu/intercom/ui/widget/frequency/c;

    const p1, 0x7f120101

    .line 8
    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private y3(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f110333

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const v1, 0x7f1101a4

    .line 5
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v2

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v3

    .line 8
    :goto_0
    new-instance v4, Lcom/ifengyu/intercom/m/b/h;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ifengyu/intercom/m/b/h;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->y(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v4

    check-cast v1, Lcom/ifengyu/intercom/m/b/h;

    sget-object v5, Lcom/ifengyu/intercom/l/a/c/b;->a:[Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/m/b/h;->M([Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/h;

    sget-object v5, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/m/b/h;->O([[Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/h;

    .line 12
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/m/b/h;->L(I)Lcom/ifengyu/intercom/m/b/h;

    .line 13
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/m/b/h;->N(I)Lcom/ifengyu/intercom/m/b/h;

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    sget-object v5, Lcom/ifengyu/intercom/l/b/c/x1/c;->a:Lcom/ifengyu/intercom/l/b/c/x1/c;

    const/4 v6, 0x0

    .line 14
    invoke-virtual {v1, v6, v2, v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/m/b/h;

    const v2, 0x7f1100c6

    new-instance v3, Lcom/ifengyu/intercom/l/b/c/x1/e;

    invoke-direct {v3, p0, v4, p1, v0}, Lcom/ifengyu/intercom/l/b/c/x1/e;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/k;Lcom/ifengyu/intercom/m/b/h;ZLcom/ifengyu/intercom/models/ChannelModel;)V

    .line 15
    invoke-virtual {v1, v6, v2, v6, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/m/b/h;

    const p1, 0x7f120100

    .line 16
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public E2()V
    .locals 0

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00aa

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/k;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->i3()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/k/k;->F(Lcom/ifengyu/intercom/l/b/e/u;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/k/k;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->h3()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->z:Lcom/ifengyu/intercom/k/k;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract g3()Ljava/lang/String;
.end method

.method protected i3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x1/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/x1/f;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/k;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x1/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/x1/i;-><init>(Lcom/ifengyu/intercom/l/b/c/x1/k;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method public synthetic k3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/x1/k;->j3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method public synthetic m3(ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/l/b/c/x1/k;->l3(ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09022d

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->A3()V

    return-void

    :cond_0
    const v0, 0x7f09022e

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/l/b/c/x1/k;->x3(Z)V

    return-void

    :cond_1
    const v0, 0x7f09022f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 4
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/l/b/c/x1/k;->x3(Z)V

    return-void

    :cond_2
    const v0, 0x7f09022a

    if-ne p1, v0, :cond_3

    .line 5
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/l/b/c/x1/k;->y3(Z)V

    return-void

    :cond_3
    const v0, 0x7f09022b

    if-ne p1, v0, :cond_4

    .line 6
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/l/b/c/x1/k;->y3(Z)V

    return-void

    :cond_4
    const v0, 0x7f09008e

    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->t3()V

    return-void

    :cond_5
    const v0, 0x7f09008f

    if-ne p1, v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/x1/k;->u3()V

    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/x1/k;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->b0()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public synthetic p3(Lcom/ifengyu/intercom/m/b/h;ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/l/b/c/x1/k;->o3(Lcom/ifengyu/intercom/m/b/h;ZLcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic s3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/l/b/c/x1/k;->r3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ChannelModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected t3()V
    .locals 0

    return-void
.end method

.method protected u3()V
    .locals 0

    return-void
.end method

.method protected v3()V
    .locals 0

    return-void
.end method

.method protected w3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    return-void
.end method

.method protected abstract z3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
.end method
