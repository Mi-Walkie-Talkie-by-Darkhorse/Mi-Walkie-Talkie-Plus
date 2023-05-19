.class public Lcom/ifengyu/intercom/ui/fragment/HostFragment_ViewBinding;
.super Ljava/lang/Object;
.source "HostFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/HostFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f09049b

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0901ba

    const-string v2, "field \'etPostHost\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etPostHost:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0901aa

    const-string v2, "field \'etAudioHost\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etAudioHost:Landroid/widget/EditText;

    .line 6
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0901a9

    const-string v2, "field \'envRadioGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->envRadioGroup:Landroid/widget/RadioGroup;

    .line 7
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900b7

    const-string v2, "field \'btnSave\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->btnSave:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900cf

    const-string v2, "field \'checkBoxM303\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->checkBoxM303:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/HostFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etPostHost:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->etAudioHost:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->envRadioGroup:Landroid/widget/RadioGroup;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->btnSave:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->checkBoxM303:Landroid/widget/CheckBox;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
