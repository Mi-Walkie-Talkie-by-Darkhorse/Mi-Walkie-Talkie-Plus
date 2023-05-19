.class public Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "FriendSearchFragment.java"

# interfaces
.implements Lcom/ifengyu/talk/h/a;


# instance fields
.field btnCancel:Lcom/qmuiteam/qmui/layout/QMUIButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a5
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

.field myId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09032b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f11002e

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080151

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/i0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/i0;-><init>(Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->myId:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getAccount()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f1102d4

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/g0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/g0;-><init>(Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->btnCancel:Lcom/qmuiteam/qmui/layout/QMUIButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/h0;-><init>(Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic h3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic j3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p2, 0x7f110370

    .line 3
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 5
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ifengyu/talk/f/a0;->k(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f11036e

    .line 6
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :cond_1
    return p1
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method public static n3()Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected E2()V
    .locals 0

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->g3()V

    return-object v0
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    const p1, 0x7f11036e

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    :goto_0
    return-void
.end method

.method public synthetic i3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->h3(Landroid/view/View;)V

    return-void
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    return-void
.end method

.method public synthetic k3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->j3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->l3(Landroid/view/View;)V

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

    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 0

    return-void
.end method
