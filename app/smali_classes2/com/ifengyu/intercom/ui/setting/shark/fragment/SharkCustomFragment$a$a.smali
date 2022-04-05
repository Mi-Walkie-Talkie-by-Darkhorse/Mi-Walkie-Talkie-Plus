.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->c(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->mTvEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->d(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lb/d/a/a/e/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/adapter/o;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/o;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->d(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lb/d/a/a/e/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
