.class Lcom/mi/mimsgsdk/video/MiVideoManager$5;
.super Ljava/lang/Object;
.source "MiVideoManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/video/MiVideoManager;->startRecordVideo(Landroid/view/WindowManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$5;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$5;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->stopRecordVideo()Z

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$5;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$400(Lcom/mi/mimsgsdk/video/MiVideoManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u8fbe\u5230\u6700\u5927\u5f55\u5236\u65f6\u957f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
