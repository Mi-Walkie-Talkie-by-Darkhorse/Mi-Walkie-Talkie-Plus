.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a$a;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->onMapScreenShot(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/y;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->e(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/y;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
