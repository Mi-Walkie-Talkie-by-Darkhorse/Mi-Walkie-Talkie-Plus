.class public Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const v1, 0x7f09035c

    const-string v2, "field \'rvSelectDevice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090419

    const-string v2, "field \'leftBackIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09041b

    const-string v2, "field \'rightManagerIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'pagerTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->pagerTitle:Landroid/widget/TextView;

    const v0, 0x7f09008b

    const-string v1, "field \'mFabLayout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090417

    const-string v2, "field \'leftCancelBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090418

    const-string v2, "field \'rightManageBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    const-class v0, Lcom/ifengyu/intercom/lite/widget/EmptyView;

    const v1, 0x7f090157

    const-string v2, "field \'mTvEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/widget/EmptyView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mTvEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090254

    const-string v2, "field \'unbindDeviceBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rvSelectDevice:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftBackIv:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManagerIv:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->pagerTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mFabLayout:Landroid/view/View;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->leftCancelBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->rightManageBtn:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->mTvEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->unbindDeviceBtn:Landroid/widget/RelativeLayout;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
