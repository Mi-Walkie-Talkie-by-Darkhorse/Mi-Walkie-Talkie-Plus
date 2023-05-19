.class public Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "AddDeviceFragment.java"


# instance fields
.field dolphinBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field liteBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090296
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field mi3BottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090302
    .end annotation
.end field

.field netDeviceBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090331
    .end annotation
.end field

.field sealBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ed
    .end annotation
.end field

.field sharkBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic h3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static j3()Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->g3()V

    return-object v0
.end method

.method protected g3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110117

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f060066

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/i;-><init>(Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->dolphinBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->sealBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->sharkBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->liteBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->netDeviceBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->mi3BottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    return-void
.end method

.method public synthetic i3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->h3(Landroid/view/View;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090181,
            0x7f0903ed,
            0x7f09041f,
            0x7f090296,
            0x7f090331,
            0x7f090302
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R0(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R0(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWAddGuideFragment;->l3()Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWAddGuideFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R0(Landroid/content/Context;I)V

    goto :goto_0

    .line 6
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R0(Landroid/content/Context;I)V

    goto :goto_0

    .line 7
    :sswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R0(Landroid/content/Context;I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090181 -> :sswitch_5
        0x7f090296 -> :sswitch_4
        0x7f090302 -> :sswitch_3
        0x7f090331 -> :sswitch_2
        0x7f0903ed -> :sswitch_1
        0x7f09041f -> :sswitch_0
    .end sparse-switch
.end method
