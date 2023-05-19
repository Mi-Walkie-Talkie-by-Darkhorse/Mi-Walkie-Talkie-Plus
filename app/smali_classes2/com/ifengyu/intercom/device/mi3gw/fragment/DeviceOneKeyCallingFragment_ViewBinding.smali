.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceOneKeyCallingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090341

    const-string v2, "field \'not_set_contact_layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->not_set_contact_layout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0901ad

    const-string v2, "field \'et_input_id\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->et_input_id:Landroid/widget/EditText;

    const v0, 0x7f0900b8

    const-string v1, "field \'btn_set_contact\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v3, "field \'btn_set_contact\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->btn_set_contact:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->b:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090201

    const-string v2, "field \'had_set_contact_layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->had_set_contact_layout:Landroid/widget/LinearLayout;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c3

    const-string v2, "field \'tv_contact_id\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->tv_contact_id:Landroid/widget/TextView;

    const v0, 0x7f0900b5

    const-string v1, "field \'btn_remove_contact\' and method \'onViewClicked\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    const-class v1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v2, "field \'btn_remove_contact\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->btn_remove_contact:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 14
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->c:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->not_set_contact_layout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->et_input_id:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->btn_set_contact:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->had_set_contact_layout:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->tv_contact_id:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment;->btn_remove_contact:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->b:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceOneKeyCallingFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
