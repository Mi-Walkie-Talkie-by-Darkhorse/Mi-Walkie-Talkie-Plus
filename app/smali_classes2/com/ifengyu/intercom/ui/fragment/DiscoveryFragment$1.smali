.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->a(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
