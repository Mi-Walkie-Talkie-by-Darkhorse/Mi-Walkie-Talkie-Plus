.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "DeviceCurGroupSettingFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field curGroupItem:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011e
    .end annotation
.end field

.field currentGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090126
    .end annotation
.end field

.field currentGroupTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090128
    .end annotation
.end field

.field doubleGroupMonitor:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090182
    .end annotation
.end field

.field listenGroupItem:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090291
    .end annotation
.end field

.field listenGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090292
    .end annotation
.end field

.field listenGroupTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090294
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field topSettingLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method private k3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->closeDoubleGroupListen(Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    return-void
.end method

.method private l3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110134

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/f;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->topSettingLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->setRadiusAndShadow(IIF)V

    return-void
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private o3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->openDoubleGroupListen(Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    return-void
.end method

.method private p3()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j()Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->p()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->doubleGroupMonitor:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v2}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 4
    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->curGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-static {v0}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->curGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public D0(J)V
    .locals 0

    return-void
.end method

.method public E(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->p3()V

    return-void
.end method

.method public varargs F([J)V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    return-void
.end method

.method public L(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->E2()V

    return-void
.end method

.method public L0()V
    .locals 0

    return-void
.end method

.method public M0(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public O0()V
    .locals 0

    return-void
.end method

.method public P(J)V
    .locals 0

    return-void
.end method

.method public R0(J)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public X0(J)V
    .locals 0

    return-void
.end method

.method public Y(J)V
    .locals 0

    return-void
.end method

.method public a1(J)V
    .locals 0

    return-void
.end method

.method public d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->p3()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->addListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->l3()V

    return-object v0
.end method

.method public varargs h1([J)V
    .locals 0

    return-void
.end method

.method public i0(J)V
    .locals 0

    return-void
.end method

.method public varargs k0([J)V
    .locals 0

    return-void
.end method

.method public k1()V
    .locals 0

    return-void
.end method

.method public l0(J)V
    .locals 0

    return-void
.end method

.method public synthetic n3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->m3(Landroid/view/View;)V

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->removeListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090182,
            0x7f09011e,
            0x7f090291
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09011e

    if-eq p1, v0, :cond_3

    const v0, 0x7f090182

    if-eq p1, v0, :cond_1

    const v0, 0x7f090291

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->p()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->s3(IJ)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->doubleGroupMonitor:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->k3()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->o3()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j()Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    .line 8
    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->s3(IJ)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_0
    return-void
.end method

.method public p(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public r(J)V
    .locals 0

    return-void
.end method

.method public varargs t0([J)V
    .locals 0

    return-void
.end method

.method public t1(J)V
    .locals 0

    return-void
.end method

.method public w0()V
    .locals 0

    return-void
.end method
