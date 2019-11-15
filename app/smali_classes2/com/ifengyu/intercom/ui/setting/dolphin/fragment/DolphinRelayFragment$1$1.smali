.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;
.super Ljava/lang/Object;
.source "DolphinRelayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/zhy/a/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/adapter/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/zhy/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
