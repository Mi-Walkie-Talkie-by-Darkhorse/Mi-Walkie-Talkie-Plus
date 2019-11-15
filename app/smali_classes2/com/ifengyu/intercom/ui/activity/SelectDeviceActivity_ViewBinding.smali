.class public Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SelectDeviceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v0, 0x7f100169

    const-string v1, "field \'rvSelectDevice\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const v0, 0x7f1000c3

    const-string v1, "field \'leftBackIv\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    const v0, 0x7f10033e

    const-string v1, "field \'rightManagerIv\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const v0, 0x7f100244

    const-string v1, "field \'pagerTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->pagerTitle:Landroid/widget/TextView;

    const v0, 0x7f1000cc

    const-string v1, "field \'mFabLayout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    const v0, 0x7f10033d

    const-string v1, "field \'leftCancelBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    const v0, 0x7f10033c

    const-string v1, "field \'rightManageBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    const v0, 0x7f10016a

    const-string v1, "field \'mTvEmptyView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mTvEmptyView:Landroid/widget/TextView;

    const v0, 0x7f10016b

    const-string v1, "field \'unbindDeviceBtn\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->pagerTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mTvEmptyView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    return-void
.end method
