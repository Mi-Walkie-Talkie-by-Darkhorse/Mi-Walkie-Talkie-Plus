.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;
.super Ljava/lang/Object;
.source "SealCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/zhy/a/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/ifengyu/intercom/ui/adapter/l;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/zhy/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
