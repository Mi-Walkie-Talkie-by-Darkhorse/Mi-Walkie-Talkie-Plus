.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/adapter/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getId()I

    move-result p1

    const-string v1, "cms_single_article_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getId()I

    move-result p1

    const-string v1, "cms_single_article_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.NEW_MAN_GUIDE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.EXAM_IFNO_QUERY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method