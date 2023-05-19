.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "DeviceCurGroupSwitchFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field private final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private B:Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;"
        }
    .end annotation
.end field

.field private C:J

.field private D:J

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvGroupList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/device/mi3gw/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->A:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private j3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->z:Lcom/ifengyu/intercom/device/mi3gw/a/a;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/i;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private k3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->C:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const v1, 0x7f110132

    goto :goto_0

    :cond_0
    const v1, 0x7f110133

    :goto_0
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0800c4

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/h;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100ce

    const v2, 0x7f0902fb

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0600d5

    .line 5
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 7
    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/j;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/a/a;

    const v1, 0x7f0c00dc

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->A:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/a/a;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->z:Lcom/ifengyu/intercom/device/mi3gw/a/a;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->rvGroupList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->rvGroupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->z:Lcom/ifengyu/intercom/device/mi3gw/a/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->j3()V

    return-void
.end method

.method private synthetic l3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 4
    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p3, p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    :cond_1
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->z:Lcom/ifengyu/intercom/device/mi3gw/a/a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->B:Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    :cond_2
    return-void
.end method

.method private synthetic n3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic p3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->r3()V

    return-void
.end method

.method private r3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->B:Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->D:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->C:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->B:Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->K0(Ljava/util/ArrayList;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V

    :goto_0
    return-void

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static s3(IJ)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "the_action_switch_what"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "the_gid_will_to_switch"

    .line 4
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "the_action_switch_what"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->C:J

    const-string v0, "the_gid_will_to_switch"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->D:J

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempGroup;

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;-><init>(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->D:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    .line 7
    iput-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->B:Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    goto :goto_1

    .line 8
    :cond_0
    iget-wide v3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->C:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->j()Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setEnable(Z)V

    .line 12
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->z:Lcom/ifengyu/intercom/device/mi3gw/a/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->k3()V

    return-object v0
.end method

.method public synthetic m3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->l3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic o3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->n3(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method public synthetic q3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->p3(Landroid/view/View;)V

    return-void
.end method
