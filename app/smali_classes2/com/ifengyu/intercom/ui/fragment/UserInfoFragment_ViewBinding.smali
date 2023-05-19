.class public Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment_ViewBinding;
.super Ljava/lang/Object;
.source "UserInfoFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f09049c

    const-string v2, "field \'topBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->topBg:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v1, 0x7f090269

    const-string v2, "field \'ivAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090271

    const-string v2, "field \'ivIsDevice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivIsDevice:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904e5

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->tvName:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904d8

    const-string v2, "field \'tvId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->tvId:Landroid/widget/TextView;

    .line 9
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900a3

    const-string v2, "field \'btnBottom1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 10
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900a4

    const-string v2, "field \'btnBottom2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->topBg:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->ivIsDevice:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->tvName:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->tvId:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom1:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->btnBottom2:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
