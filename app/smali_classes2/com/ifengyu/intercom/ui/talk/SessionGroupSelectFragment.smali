.class public Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;
.super Lcom/ifengyu/intercom/ui/base/o;
.source "SessionGroupSelectFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/g;


# instance fields
.field private B:Lcom/shanlitech/et/model/Group;

.field private C:Lcom/ifengyu/intercom/ui/talk/b3/e;

.field private D:Lcom/ifengyu/intercom/ui/talk/b3/e;

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation
.end field

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation
.end field

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation
.end field

.field btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
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

.field rvList:Landroidx/recyclerview/widget/RecyclerView;
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

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic A3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->P3(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method

.method private synthetic C3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method private synthetic E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->P3(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    return-void
.end method

.method private synthetic G3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->Q3()V

    return-void
.end method

.method private synthetic I3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Member;

    .line 4
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {v1}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lb/a/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic K3(Ljava/lang/String;Ljava/lang/Boolean;)V
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

    const p2, 0x7f11036b

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic M3(Ljava/lang/Throwable;)V
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

.method public static O3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private P3(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f110123

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    goto :goto_2

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f110129

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    :goto_2
    return-void
.end method

.method private Q3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 5
    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/model/Member;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/talk/f/g0;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f110173

    .line 7
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->R3(I)V

    :cond_1
    return-void
.end method

.method private R3(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method private z3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->l(Landroid/app/Activity;)Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f110129

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/y1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/y1;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/e;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E:Ljava/util/ArrayList;

    const v3, 0x7f0c00eb

    invoke-direct {v0, p0, v3, v2}, Lcom/ifengyu/intercom/ui/talk/b3/e;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/e;

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->y3()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/e;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/e;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/a2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/a2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/w1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/w1;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method


# virtual methods
.method public synthetic B3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->A3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public C0(Lcom/shanlitech/et/notice/event/GroupRemovedEvent;)V
    .locals 0

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->B:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method public synthetic D3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->C3(Landroid/view/View;)V

    return-void
.end method

.method protected E2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->B:Lcom/shanlitech/et/model/Group;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->B:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Member;

    .line 6
    invoke-virtual {v1}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->online()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;-><init>(ILjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic H3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic J3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->I3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic L3(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->K3(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic N3(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->M3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public T(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f110174

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->R3(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110173

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->R3(I)V

    :goto_0
    return-void
.end method

.method public Z(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionTalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/g0;->addListener(Lcom/ifengyu/talk/h/g;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->z3()V

    return-object v0
.end method

.method protected i3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->G:Ljava/util/ArrayList;

    const v2, 0x7f0c00eb

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/e;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/e;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/x1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/x1;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/e;

    return-object v0
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public n0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    return-void
.end method

.method protected n3(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const v0, 0x7f0601a2

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f060029

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->w3(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/o;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/g0;->removeListener(Lcom/ifengyu/talk/h/g;)V

    return-void
.end method

.method protected q3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/o;->q3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    const v1, 0x7f0601bd

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public r1(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/b2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/b2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;Ljava/lang/String;)V

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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/z1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/z1;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;Ljava/lang/String;)V

    new-instance p1, Lcom/ifengyu/intercom/ui/talk/c2;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/talk/c2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;)V

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public y3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0901a2

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080163

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1102e3

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0601bd

    .line 6
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method
