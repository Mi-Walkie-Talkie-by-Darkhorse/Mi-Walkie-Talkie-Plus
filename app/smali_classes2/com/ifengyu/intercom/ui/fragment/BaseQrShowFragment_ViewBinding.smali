.class public Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BaseQrShowFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f0903c0

    const-string v2, "field \'rlCenterShadow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    const-class v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    const v1, 0x7f090333

    const-string v2, "field \'ngivGroupAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904e5

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->tvName:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090277

    const-string v2, "field \'ivQr\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ivQr:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904be

    const-string v2, "field \'tvBottomPrompt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->tvBottomPrompt:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->rlCenterShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->tvName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ivQr:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->tvBottomPrompt:Landroid/widget/TextView;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
