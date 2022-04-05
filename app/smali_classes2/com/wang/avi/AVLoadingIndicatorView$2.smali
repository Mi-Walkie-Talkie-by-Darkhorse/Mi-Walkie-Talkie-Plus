.class Lcom/wang/avi/AVLoadingIndicatorView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/AVLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/AVLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/wang/avi/AVLoadingIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->access$202(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-static {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->access$300(Lcom/wang/avi/AVLoadingIndicatorView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->access$102(Lcom/wang/avi/AVLoadingIndicatorView;J)J

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView$2;->this$0:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    :cond_0
    return-void
.end method
