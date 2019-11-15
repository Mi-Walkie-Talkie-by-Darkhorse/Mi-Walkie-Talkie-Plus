.class Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireProgressEvent(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.field final synthetic val$current:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;II)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iput p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->val$current:I

    iput p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->val$current:I

    iget v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->val$total:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;->onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
