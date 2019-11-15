.class Lcom/tencent/connect/share/QzonePublish$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/QzonePublish;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/tencent/tauth/IUiListener;

.field final synthetic e:Lcom/tencent/connect/share/QzonePublish;


# direct methods
.method constructor <init>(Lcom/tencent/connect/share/QzonePublish;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/connect/share/QzonePublish$1;->e:Lcom/tencent/connect/share/QzonePublish;

    iput-object p2, p0, Lcom/tencent/connect/share/QzonePublish$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/tencent/connect/share/QzonePublish$1;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/tencent/connect/share/QzonePublish$1;->d:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/connect/share/QzonePublish$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    const-string v4, "videoPath"

    iget-object v5, p0, Lcom/tencent/connect/share/QzonePublish$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    const-string v4, "videoDuration"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    const-string v3, "videoSize"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/connect/share/QzonePublish$1;->e:Lcom/tencent/connect/share/QzonePublish;

    iget-object v1, p0, Lcom/tencent/connect/share/QzonePublish$1;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tencent/connect/share/QzonePublish$1;->d:Lcom/tencent/tauth/IUiListener;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/connect/share/QzonePublish;->a(Lcom/tencent/connect/share/QzonePublish;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const-string v0, "openSDK_LOG.QzonePublish"

    const-string v1, "publishToQzone() --end"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
