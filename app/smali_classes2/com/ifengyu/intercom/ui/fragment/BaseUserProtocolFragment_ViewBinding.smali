.class public Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BaseUserProtocolFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f09049b

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f090237

    const-string v2, "field \'itemUserAgreement\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->itemUserAgreement:Lcom/ifengyu/library/widget/view/ItemView;

    .line 5
    const-class v0, Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f090233

    const-string v2, "field \'itemPrivacyPolicy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->itemPrivacyPolicy:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900b2

    const-string v2, "field \'btnQuitUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->btnQuitUserProtocol:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->itemUserAgreement:Lcom/ifengyu/library/widget/view/ItemView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->itemPrivacyPolicy:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->btnQuitUserProtocol:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
