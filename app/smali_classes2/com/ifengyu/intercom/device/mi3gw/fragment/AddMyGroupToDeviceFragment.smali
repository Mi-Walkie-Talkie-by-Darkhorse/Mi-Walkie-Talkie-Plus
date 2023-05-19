.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "AddMyGroupToDeviceFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;


# instance fields
.field private final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Group;",
            ">;>;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Group;",
            ">;>;"
        }
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/ui/talk/b3/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->A:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)Lcom/ifengyu/intercom/ui/talk/b3/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    return-object p0
.end method

.method private h3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 5
    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->e([J)V

    return-void
.end method

.method private k3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/d;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private l3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100ce

    const v2, 0x7f090142

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
    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/c;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->A:Ljava/util/ArrayList;

    const v2, 0x7f0c00e9

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/d;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->j3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->l(Landroid/view/View;)I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->k0(Z)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->k3()V

    return-void
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/p2;->O3()Lcom/ifengyu/intercom/device/mi3gw/fragment/p2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    const-string p1, "android.permission.CAMERA"

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic u3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110167

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->h3()V

    return-void
.end method

.method public static w3()Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;-><init>()V

    return-object v0
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
    .locals 6

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/c0;->d()Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Group;

    .line 4
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v2

    sget v3, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;-><init>(ILjava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v3

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->l(J)Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setEnable(Z)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public varargs F([J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

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

.method protected O2()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/fragment/o2;->X3()Lcom/ifengyu/intercom/device/mi3gw/fragment/o2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

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

    const v1, 0x7f0c0088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->l3()V

    return-object v0
.end method

.method public varargs h1([J)V
    .locals 0

    const p1, 0x7f110118

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public i0(J)V
    .locals 0

    return-void
.end method

.method public i3(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09028f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09019b

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0901a2

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080056

    .line 5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f1102e5

    .line 6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;

    invoke-direct {v2, p0, v1, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public j3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00ce

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902af

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/e;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/e;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904e4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-object v0
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

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->m3(Landroid/view/View;)V

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

.method public p(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->o3(Landroid/view/View;)V

    return-void
.end method

.method public r(J)V
    .locals 0

    return-void
.end method

.method public synthetic r3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

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

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->s3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->u3(Landroid/view/View;)V

    return-void
.end method

.method public w0()V
    .locals 0

    return-void
.end method
