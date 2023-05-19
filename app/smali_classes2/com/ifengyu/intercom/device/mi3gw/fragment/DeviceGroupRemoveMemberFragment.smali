.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;
.super Lcom/ifengyu/intercom/ui/base/o;
.source "DeviceGroupRemoveMemberFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field private B:Lcom/ifengyu/intercom/device/mi3gw/a/e;

.field private C:Lcom/ifengyu/intercom/device/mi3gw/a/e;

.field private D:J

.field private E:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempMember;",
            ">;>;"
        }
    .end annotation
.end field

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempMember;",
            ">;>;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempMember;",
            ">;>;"
        }
    .end annotation
.end field

.field etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bc
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvContactList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field rvSearchList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/o;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic A3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method private synthetic B3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->Q3(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method

.method private synthetic D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->Q3(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    return-void
.end method

.method private synthetic F3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method private synthetic H3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f1101e9

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->R3()V

    return-void
.end method

.method private synthetic J3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempMember;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempMember;->getNicknameIn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempMember;->getNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempMember;->getNicknameIn()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_1
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempMember;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 6
    invoke-static {v2, v1}, Lb/a/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic L3(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f11036c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {p2, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/o;->x3(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->C:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic N3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "handleSearchKey"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static P3(J)Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group_gid"

    .line 3
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private Q3(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/ifengyu/talk/http/entity/TempMember;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->B:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private R3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 5
    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/talk/http/entity/TempMember;

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/TempMember;->getAccount()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v1

    iget-wide v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->D:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->I0(J[Ljava/lang/String;)V

    return-void
.end method

.method private y3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->B:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/r0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/r0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private z3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110374

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/q0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/q0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11033f

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
    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/v0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/v0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/a/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F:Ljava/util/ArrayList;

    const v2, 0x7f0c00ea

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/device/mi3gw/a/e;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->B:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->B:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->y3()V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method


# virtual methods
.method public synthetic C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->B3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public D0(J)V
    .locals 0

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "key_group_gid"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->D:J

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->i()Lcom/ifengyu/talk/http/entity/TempGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->D:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->E:Lcom/ifengyu/talk/http/entity/TempGroup;

    :cond_0
    return-void
.end method

.method public E(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->E:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->E:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/TempMember;

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/TempMember;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->E:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {v3}, Lcom/ifengyu/talk/http/entity/TempGroup;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;-><init>(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->B:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

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

.method public synthetic G3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->F3(Landroid/view/View;)V

    return-void
.end method

.method public H(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 0

    return-void
.end method

.method public synthetic I3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic K3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->J3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
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

.method public synthetic M3(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->L3(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public O0()V
    .locals 0

    return-void
.end method

.method public synthetic O3(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->N3(Ljava/lang/Throwable;)V

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

    const p1, 0x7f110340

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

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

    const v1, 0x7f0c00a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->z3()V

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

.method protected i3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/a/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->H:Ljava/util/ArrayList;

    const v2, 0x7f0c00ea

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/device/mi3gw/a/e;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->C:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/u0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/u0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

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

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->C:Lcom/ifengyu/intercom/device/mi3gw/a/e;

    return-object v0
.end method

.method public l0(J)V
    .locals 0

    return-void
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/o;->onDestroy()V

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

.method public r(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;->D:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const p1, 0x7f110341

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/device/mi3gw/fragment/o0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/o0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    :cond_0
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

.method protected w3(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/t0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/p0;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/p0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;Ljava/lang/String;)V

    new-instance p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/s0;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s0;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupRemoveMemberFragment;)V

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
