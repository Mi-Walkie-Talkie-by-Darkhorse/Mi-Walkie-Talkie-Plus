.class Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;
.super Ljava/lang/Thread;
.source "MiASRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/asr/MiASRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadPcmThread"
.end annotation


# instance fields
.field private mSrcPcmPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;


# direct methods
.method public constructor <init>(Lcom/mi/mimsgsdk/asr/MiASRManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->mSrcPcmPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$200(Lcom/mi/mimsgsdk/asr/MiASRManager;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->mSrcPcmPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    const/4 v1, 0x0

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$500(Lcom/mi/mimsgsdk/asr/MiASRManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read file error, message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$1100(Lcom/mi/mimsgsdk/asr/MiASRManager;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$1100(Lcom/mi/mimsgsdk/asr/MiASRManager;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$1100(Lcom/mi/mimsgsdk/asr/MiASRManager;)V

    throw v0
.end method
