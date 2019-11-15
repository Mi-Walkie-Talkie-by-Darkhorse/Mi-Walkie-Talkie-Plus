.class Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.NEW_MAN_GUIDE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "discovery_tab_page"

    const-string v1, "userGuideBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v0

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cms_single_article_id"

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->b(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "discovery_tab_page"

    const-string v1, "topLoopBannerClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.EXAM_IFNO_QUERY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "discovery_tab_page"

    const-string v1, "wirelessExamQueryBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v0

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cms_single_article_id"

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->e(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->g(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ExamQuestionBankActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "discovery_tab_page"

    const-string v1, "wirelessQuestionHouseBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;->h(Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;)V

    return-void
.end method
