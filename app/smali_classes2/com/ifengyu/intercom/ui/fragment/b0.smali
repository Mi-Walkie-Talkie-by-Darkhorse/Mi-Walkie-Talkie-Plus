.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;

.field public final synthetic b:I

.field public final synthetic c:Lcom/ifengyu/intercom/bean/DiscoverResult;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;ILcom/ifengyu/intercom/bean/DiscoverResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/b0;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/b0;->b:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/fragment/b0;->c:Lcom/ifengyu/intercom/bean/DiscoverResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/b0;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/b0;->b:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/b0;->c:Lcom/ifengyu/intercom/bean/DiscoverResult;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$b;->j(ILcom/ifengyu/intercom/bean/DiscoverResult;)V

    return-void
.end method
