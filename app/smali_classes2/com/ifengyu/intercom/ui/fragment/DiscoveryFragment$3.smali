.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$3;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lio/reactivex/m;


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
        "Lio/reactivex/m",
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/l;)V
    .locals 1
    .param p1    # Lio/reactivex/l;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/l;->a(Ljava/lang/Object;)V

    return-void
.end method
