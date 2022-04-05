.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;
.super Ljava/lang/Object;

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
.field private a:Ljava/lang/String;

.field private b:Lcom/ifengyu/intercom/greendao/bean/a;

.field final synthetic c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;)Lcom/ifengyu/intercom/greendao/bean/a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Lcom/ifengyu/intercom/greendao/bean/a;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/u;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/u;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/u;->a(Lcom/ifengyu/intercom/ui/widget/dialog/u$b;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
