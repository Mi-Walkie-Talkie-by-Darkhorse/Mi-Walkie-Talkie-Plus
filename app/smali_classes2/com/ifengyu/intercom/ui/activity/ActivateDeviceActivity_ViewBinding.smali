.class public Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v0, 0x7f100244

    const-string v1, "field \'mTitleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f100078

    const-string v1, "field \'mCheckbox\'"

    const-class v2, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroid/support/v7/widget/AppCompatCheckBox;

    const v0, 0x7f10009a

    const-string v1, "field \'mBtnCancel\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnCancel:Landroid/widget/Button;

    const v0, 0x7f10009c

    const-string v1, "field \'mBtnActivate\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    const v0, 0x7f1000c3

    const-string v1, "field \'mTitleBarLeft\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    const v0, 0x7f10015b

    const-string v1, "field \'mTitleBarRight\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarRight:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mCheckbox:Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnCancel:Landroid/widget/Button;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mBtnActivate:Landroid/widget/Button;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->mTitleBarRight:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    return-void
.end method
