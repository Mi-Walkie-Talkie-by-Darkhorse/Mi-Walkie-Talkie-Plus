.class Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;
.super Ljava/lang/Object;
.source "MiASRManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;->this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;->this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->access$700(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;->this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    iget-object v0, v0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$600(Lcom/mi/mimsgsdk/asr/MiASRManager;)Lcom/mi/mimsgsdk/asr/MiASRListener;

    move-result-object v0

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onRecordFinished(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;->this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    iget-object v0, v0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$600(Lcom/mi/mimsgsdk/asr/MiASRManager;)Lcom/mi/mimsgsdk/asr/MiASRListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;->this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    invoke-static {v1}, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->access$800(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;->this$1:Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;

    invoke-static {v2}, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->access$900(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/asr/MiASRListener;->onRecordFinished(Ljava/lang/String;J)V

    goto :goto_0
.end method
