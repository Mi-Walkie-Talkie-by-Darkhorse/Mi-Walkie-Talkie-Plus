.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;
.super Lcom/ifengyu/intercom/a/b/c;
.source "DiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->f()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/DiscoverResult;I)V
    .locals 9

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/DiscoverResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->i(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->a(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;I)I

    move v6, v3

    :goto_0
    if-ge v6, v7, :cond_4

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/DiscoverResult;->items:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getExcerpt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<p>"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "</p>"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->setExcerpt(Ljava/lang/String;)V

    move v2, v3

    move v4, v3

    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getId()I

    move-result v8

    if-ne v1, v8, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->notifyDataSetChanged()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/adapter/c;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/DiscoverResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->a(Lcom/ifengyu/intercom/bean/DiscoverResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$7;->b:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->c(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/adapter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/adapter/c;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/c;->notifyItemChanged(I)V

    return-void
.end method
