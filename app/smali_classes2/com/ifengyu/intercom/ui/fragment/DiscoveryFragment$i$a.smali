.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i;->a(Lcom/ifengyu/intercom/bean/DiscoverResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/bean/DiscoverResult;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i;ILcom/ifengyu/intercom/bean/DiscoverResult;)V
    .locals 0

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i$a;->a:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i$a;->b:Lcom/ifengyu/intercom/bean/DiscoverResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i$a;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$i$a;->b:Lcom/ifengyu/intercom/bean/DiscoverResult;

    iget-object v1, v1, Lcom/ifengyu/intercom/bean/DiscoverResult;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getExcerpt()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "<p>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "</p>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->setExcerpt(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DiscoveryListInfoData"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/intercom/i/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list_info_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ifengyu/intercom/i/g;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
