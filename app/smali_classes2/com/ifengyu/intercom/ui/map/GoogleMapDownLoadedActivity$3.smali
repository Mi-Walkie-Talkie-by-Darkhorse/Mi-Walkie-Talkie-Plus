.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;
.super Ljava/lang/Object;
.source "GoogleMapDownLoadedActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/OffMapDownloadDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Landroid/view/View;ILcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

.field private b:Ljava/lang/String;

.field private c:Lcom/ifengyu/intercom/greendao/bean/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;)Lcom/ifengyu/intercom/greendao/bean/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->c:Lcom/ifengyu/intercom/greendao/bean/a;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->c:Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->c:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/w;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/w;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3$1;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Lcom/ifengyu/intercom/ui/widget/dialog/w$a;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->show()V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$3;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Lcom/ifengyu/intercom/greendao/bean/a;)V

    return-void
.end method
