.class Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$1;
.super Ljava/lang/Object;
.source "GaoDeMapToolOperateActivity.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method
