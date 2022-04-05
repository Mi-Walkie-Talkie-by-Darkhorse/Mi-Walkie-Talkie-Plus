.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;)Lcom/ifengyu/intercom/greendao/bean/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/map/c/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->c:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c;)Lcom/ifengyu/intercom/greendao/bean/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->update(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a$a;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a$a;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$c$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
