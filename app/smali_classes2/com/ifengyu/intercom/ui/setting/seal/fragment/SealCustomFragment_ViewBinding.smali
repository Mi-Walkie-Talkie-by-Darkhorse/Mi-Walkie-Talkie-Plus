.class public Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SealCustomFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    const v0, 0x7f10026e

    const-string v1, "field \'mRecycleView\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const v0, 0x7f10016a

    const-string v1, "field \'mTvEmptyView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    const v0, 0x7f100239

    const-string v1, "field \'mProgressBar\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    return-void
.end method
