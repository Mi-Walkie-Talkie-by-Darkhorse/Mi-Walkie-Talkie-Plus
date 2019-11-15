.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lio/reactivex/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/b/f",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$4;->a(Ljava/util/ArrayList;)V

    return-void
.end method
