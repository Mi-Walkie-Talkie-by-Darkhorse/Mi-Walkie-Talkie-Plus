.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->e(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V

    return-void
.end method
