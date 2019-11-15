.class Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$2;
.super Ljava/lang/Object;
.source "VideoStreamsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->renderFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;


# direct methods
.method constructor <init>(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$2;->this$0:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$2;->this$0:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;

    invoke-static {v0}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->access$000(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;)V

    return-void
.end method
