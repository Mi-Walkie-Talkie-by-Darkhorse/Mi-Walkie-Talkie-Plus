.class public Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment_ViewBinding;
.super Ljava/lang/Object;
.source "GroupQrScanResultFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f0903bf

    const-string v2, "field \'rlBottomShadow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->rlBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    const-class v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    const v1, 0x7f090333

    const-string v2, "field \'ngivGroupAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904e5

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvName:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904d9

    const-string v2, "field \'tvIdOrCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvIdOrCount:Landroid/widget/TextView;

    .line 8
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900a2

    const-string v2, "field \'btn_bottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->rlBottomShadow:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->tvIdOrCount:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/GroupQrScanResultFragment;->btn_bottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
