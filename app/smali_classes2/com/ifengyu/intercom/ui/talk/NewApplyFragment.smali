.class public Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "NewApplyFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/a;
.implements Lcom/ifengyu/talk/h/f;


# instance fields
.field private final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/SystemMsgEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c9
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/ui/talk/b3/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->B:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method private j3(Lcom/ifengyu/talk/http/entity/MsgListEntity;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/talk/http/entity/MsgListEntity<",
            "Lcom/ifengyu/talk/http/entity/SystemMsgEntity;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/MsgListEntity;->getData()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/MsgListEntity;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v3, v2, :cond_6

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    .line 6
    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviteeId()J

    move-result-wide v5

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ifengyu/talk/f/a0;->f()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_5

    .line 7
    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v4, :cond_0

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->B:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviterId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->B:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviterId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shanlitech/et/model/User;

    invoke-virtual {v2, v4}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->setUser(Lcom/shanlitech/et/model/User;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviterId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/talk/f/a0;->k(Ljava/lang/String;)Z

    .line 11
    :goto_1
    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result v4

    const/4 v5, 0x3

    const-wide/32 v7, 0x93a80

    if-ne v4, v6, :cond_3

    .line 12
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getGid()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v2, v4}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->setGroup(Lcom/shanlitech/et/model/Group;)V

    .line 14
    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviteTime()J

    move-result-wide v9

    sub-long v9, v0, v9

    cmp-long v4, v9, v7

    if-lez v4, :cond_2

    .line 15
    invoke-virtual {v2, v5}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->setStatus(I)V

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getStatus()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviteTime()J

    move-result-wide v9

    sub-long v9, v0, v9

    cmp-long v4, v9, v7

    if-lez v4, :cond_4

    .line 18
    invoke-virtual {v2, v5}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->setStatus(I)V

    .line 19
    :cond_4
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return v4

    :cond_7
    return v3
.end method

.method private k3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1102de

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/s1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/s1;-><init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    const v2, 0x7f0c00f1

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/k;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->i3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/u1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/u1;-><init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/l/b;)V

    return-void
.end method

.method public static synthetic l3(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;Lcom/ifengyu/talk/http/entity/MsgListEntity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->j3(Lcom/ifengyu/talk/http/entity/MsgListEntity;)Z

    move-result p0

    return p0
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic o3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->C:Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result p1

    const p3, 0x7f1101ed

    const v0, 0x7f09009d

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->C:Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/ifengyu/talk/f/a0;->l(JZ)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->C:Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 8
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->C:Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/ifengyu/talk/f/a0;->m(JZ)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic q3(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "querySystemMessageByType success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public static s3()Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private t3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->C:Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->setStatus(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private u3(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/g/b;->a()Lcom/ifengyu/talk/g/a;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x186a0

    .line 2
    invoke-interface {v0, p1, v1, v2}, Lcom/ifengyu/talk/g/a;->c(III)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/t1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/t1;-><init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/v1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/v1;-><init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment$b;-><init>(Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public B0(Lcom/shanlitech/et/notice/event/ResultEvent;)V
    .locals 0

    return-void
.end method

.method protected E2()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->u3(I)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->u3(I)V

    return-void
.end method

.method public H0(Lcom/shanlitech/et/notice/event/RequestResultEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->y:Lcom/shanlitech/et/ETStatusCode$Request;

    const v2, 0x7f1101ee

    const v3, 0x7f1101ed

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->t3()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->m:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->t3()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->h:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne v0, v1, :cond_3

    const p1, 0x7f1101e0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->n:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_4

    const p1, 0x7f1103df

    .line 13
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/a0;->addListener(Lcom/ifengyu/talk/h/a;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->k3()V

    return-object v0
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->B:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviterId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->setUser(Lcom/shanlitech/et/model/User;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/k;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public i3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

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

    const v3, 0x7f08005c

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1102e7

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    return-void
.end method

.method public m0(Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic n3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->m3(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/a0;->removeListener(Lcom/ifengyu/talk/h/a;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/a0;->a()V

    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic p3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->o3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic r3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->q3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public x(Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;)V
    .locals 0

    return-void
.end method
