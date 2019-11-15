.class public final Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "BaseDataMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "UploadStasticDataTimer"
.end annotation


# static fields
.field private static final MESSAGE_UPLOAD_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UploadStasticDataTimer"


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;


# direct methods
.method public constructor <init>(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;

    const-string v0, "UploadStasticDataTimer"

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->doPostData()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;

    iget-wide v0, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->sendMessageUploadDataDelayed(J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeMessageUploadData()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->removeMessage(I)V

    return-void
.end method

.method public sendMessageUploadDataDelayed(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method
