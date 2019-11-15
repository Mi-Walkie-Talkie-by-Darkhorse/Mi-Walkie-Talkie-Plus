.class Lcom/ifengyu/intercom/ui/adapter/h$2;
.super Ljava/lang/Object;
.source "GaoDeOfflineDownloadedChild.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/h;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/h;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/h;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/h$2;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h$2;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/h;->c(Lcom/ifengyu/intercom/ui/adapter/h;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h$2;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/h;->d(Lcom/ifengyu/intercom/ui/adapter/h;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/h$2;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/h;->f(Lcom/ifengyu/intercom/ui/adapter/h;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/h$2;->a:Lcom/ifengyu/intercom/ui/adapter/h;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/h;->e(Lcom/ifengyu/intercom/ui/adapter/h;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->remove(Ljava/lang/String;)V

    return-void
.end method
