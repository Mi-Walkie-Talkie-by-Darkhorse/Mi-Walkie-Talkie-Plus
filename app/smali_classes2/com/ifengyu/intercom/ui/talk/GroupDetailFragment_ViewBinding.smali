.class public Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "GroupDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0903d1

    const-string v2, "field \'rvTopList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->rvTopList:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0902c4

    const-string v1, "field \'lookAllMember\' and method \'onClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'lookAllMember\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->lookAllMember:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090257

    const-string v1, "field \'itemSetGroupName\' and method \'onClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'itemSetGroupName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090256

    const-string v1, "field \'itemSetGroupAvatar\' and method \'onClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'itemSetGroupAvatar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f090244

    const-string v2, "field \'itemGroupId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemGroupId:Lcom/ifengyu/library/widget/view/ItemView;

    const v0, 0x7f090258

    const-string v1, "field \'itemSetMyGroupNameIn\' and method \'onClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'itemSetMyGroupNameIn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    .line 20
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->e:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090240

    const-string v1, "field \'itemChangeGroupOwner\' and method \'onClick\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 23
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'itemChangeGroupOwner\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;

    .line 24
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->f:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a9

    const-string v1, "field \'btnExitGroup\' and method \'onClick\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    const-class v2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v3, "field \'btnExitGroup\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->btnExitGroup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 28
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->g:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090245

    const-string v1, "method \'onClick\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->h:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->rvTopList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->lookAllMember:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetGroupAvatar:Lcom/ifengyu/library/widget/view/ItemView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemGroupId:Lcom/ifengyu/library/widget/view/ItemView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemSetMyGroupNameIn:Lcom/ifengyu/library/widget/view/ItemView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->itemChangeGroupOwner:Lcom/ifengyu/library/widget/view/ItemView;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->btnExitGroup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->b:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->f:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->g:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method