.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;
.super Lcom/ifengyu/intercom/a/b/c;
.source "DiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/DiscoverResult;I)V
    .locals 4

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/DiscoverResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/DiscoverResult;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/c;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->notifyDataSetChanged()V

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8$1;

    invoke-direct {v1, p0, v2, p1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;ILcom/ifengyu/intercom/bean/DiscoverResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/DiscoverResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$8;->a(Lcom/ifengyu/intercom/bean/DiscoverResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
