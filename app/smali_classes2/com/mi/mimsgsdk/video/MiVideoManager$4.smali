.class Lcom/mi/mimsgsdk/video/MiVideoManager$4;
.super Ljava/lang/Object;
.source "MiVideoManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


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

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$4;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager$4;->this$0:Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->access$300(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    return-void
.end method
