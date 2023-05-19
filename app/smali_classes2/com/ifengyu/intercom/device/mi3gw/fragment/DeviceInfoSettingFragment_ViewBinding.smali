.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceInfoSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v1, 0x7f090269

    const-string v2, "field \'ivAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v0, 0x7f090140

    const-string v1, "field \'deviceNickname\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'deviceNickname\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceNickname:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f09013f

    const-string v2, "field \'deviceId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceId:Lcom/ifengyu/library/widget/view/ItemView;

    const v0, 0x7f090143

    const-string v1, "method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceNickname:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment;->deviceId:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->b:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceInfoSettingFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
