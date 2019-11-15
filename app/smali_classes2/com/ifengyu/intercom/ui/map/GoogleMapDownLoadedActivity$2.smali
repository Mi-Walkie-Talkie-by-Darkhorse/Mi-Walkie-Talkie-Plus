.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;
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


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v0, 0x7f090213

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/map/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/a/a;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Lcom/ifengyu/intercom/greendao/bean/a;)V

    return-void
.end method
