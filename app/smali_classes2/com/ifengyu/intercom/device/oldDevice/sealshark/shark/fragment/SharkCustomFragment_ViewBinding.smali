.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SharkCustomFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    .line 3
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const v1, 0x7f0903d0

    const-string v2, "field \'mRecycleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904d2

    const-string v2, "field \'mTvEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->mTvEmptyView:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090374

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->mTvEmptyView:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method