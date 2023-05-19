.class public abstract Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "BaseUserProtocolFragment.java"


# instance fields
.field protected A:J

.field btnQuitUserProtocol:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b2
    .end annotation
.end field

.field itemPrivacyPolicy:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090233
    .end annotation
.end field

.field itemUserAgreement:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090237
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field protected z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private i3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f110435

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080151

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/x;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/x;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->btnQuitUserProtocol:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->btnQuitUserProtocol:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->btnQuitUserProtocol:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/a0;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->itemUserAgreement:Lcom/ifengyu/library/widget/view/ItemView;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/z;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/z;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->itemPrivacyPolicy:Lcom/ifengyu/library/widget/view/ItemView;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/v;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->y3()V

    return-void
.end method

.method private synthetic n3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->w3()V

    return-void
.end method

.method private synthetic p3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->x3()V

    return-void
.end method

.method static synthetic r3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->u3()V

    return-void
.end method

.method private y3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/i;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->h3()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/y;->a:Lcom/ifengyu/intercom/ui/fragment/y;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/w;-><init>(Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;)V

    const v3, 0x7f110349

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120102

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "key_device_sn"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->z:Ljava/lang/String;

    const-string v0, "key_device_uid"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->A:J

    :cond_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->i3()V

    return-object v0
.end method

.method protected g3()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract h3()I
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->l3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->n3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic q3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->p3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic t3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->s3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected abstract u3()V
.end method

.method protected v3()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/a/b/c/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->d()V

    return-void
.end method

.method protected abstract w3()V
.end method

.method protected abstract x3()V
.end method
