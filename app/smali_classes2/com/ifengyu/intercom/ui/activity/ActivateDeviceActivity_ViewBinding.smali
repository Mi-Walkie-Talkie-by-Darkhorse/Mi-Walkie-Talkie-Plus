.class public Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'mTitleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900c9

    const-string v2, "field \'mCheckbox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 5
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090094

    const-string v2, "field \'mBtnCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnCancel:Landroid/widget/Button;

    .line 6
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090091

    const-string v2, "field \'mBtnActivate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090419

    const-string v2, "field \'mTitleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09041a

    const-string v2, "field \'mTitleBarRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarRight:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnCancel:Landroid/widget/Button;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarRight:Landroid/widget/ImageView;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
