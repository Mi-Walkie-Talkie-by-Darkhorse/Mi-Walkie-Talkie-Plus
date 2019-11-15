.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1$1;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->onMapScreenShot(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->show()V

    return-void
.end method
