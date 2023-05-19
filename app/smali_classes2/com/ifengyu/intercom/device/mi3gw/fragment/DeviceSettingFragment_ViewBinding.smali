.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v1, 0x7f090269

    const-string v2, "field \'ivAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904e5

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->tvName:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904d8

    const-string v2, "field \'tvId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->tvId:Landroid/widget/TextView;

    const v0, 0x7f0900b9

    const-string v1, "field \'btnUnbind\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v3, "field \'btnUnbind\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->btnUnbind:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->b:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902a0

    const-string v1, "method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013d

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->ivAvatar:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->tvName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->tvId:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment;->btnUnbind:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->b:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceSettingFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
