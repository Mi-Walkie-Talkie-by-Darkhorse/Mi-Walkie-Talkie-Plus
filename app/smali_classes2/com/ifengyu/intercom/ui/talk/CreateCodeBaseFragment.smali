.class public abstract Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "CreateCodeBaseFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/b;
.implements Lcom/ifengyu/talk/h/a;


# instance fields
.field private final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Ljava/lang/String;

.field bottomTvsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008b
    .end annotation
.end field

.field btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
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

.field private z:Lcom/ifengyu/intercom/ui/talk/b3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->A:Ljava/util/ArrayList;

    return-void
.end method

.method private i3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->h3()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/g;-><init>(Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/j/a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/f;-><init>(Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->A:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/c;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/c;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->o3()V

    return-void
.end method

.method public static synthetic n3(Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method


# virtual methods
.method protected E2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->A:Ljava/util/ArrayList;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;-><init>(ILcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public K(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODE_CREATE_GROUP_ACK_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODE_CREATE_GROUP_ACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getErrCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->h:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v0}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    const p1, 0x7f1101d8

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/h;-><init>(Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->l(Landroid/app/Activity;)Z

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->addListener(Lcom/ifengyu/talk/h/b;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/a0;->addListener(Lcom/ifengyu/talk/h/a;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->i3()V

    return-object v0
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;

    .line 3
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->getMemberInfo()Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getAcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->getMemberInfo()Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->setUser(Lcom/shanlitech/et/model/User;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public g3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract h3()I
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    return-void
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->l3(Landroid/view/View;)V

    return-void
.end method

.method public abstract o3()V
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->removeListener(Lcom/ifengyu/talk/h/b;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/a0;->removeListener(Lcom/ifengyu/talk/h/a;)V

    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 0

    return-void
.end method

.method public t(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    .line 7
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiver()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shanlitech/et/model/MemberList;->getMember(J)Lcom/shanlitech/et/model/Member;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->setUser(Lcom/shanlitech/et/model/User;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getAcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/talk/f/a0;->k(Ljava/lang/String;)Z

    .line 11
    :goto_1
    new-instance v3, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;-><init>(ILcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;)V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->z:Lcom/ifengyu/intercom/ui/talk/b3/c;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
