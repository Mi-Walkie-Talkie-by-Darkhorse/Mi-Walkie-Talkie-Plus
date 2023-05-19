.class public Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "JoinGroupByCodeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09008b

    const-string v2, "field \'bottomTvsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09049e

    const-string v2, "field \'topEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0902a4

    const-string v2, "field \'llInitiatorInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->llInitiatorInfo:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v1, 0x7f090270

    const-string v2, "field \'ivInitiatorAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->ivInitiatorAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904dc

    const-string v2, "field \'tvInitiatorName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->tvInitiatorName:Landroid/widget/TextView;

    .line 9
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900a2

    const-string v2, "field \'btnBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->bottomTvsLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->topEt:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->llInitiatorInfo:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->ivInitiatorAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->tvInitiatorName:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
