.class public interface abstract Lcom/mi/mimsgsdk/IMXMsgCallback;
.super Ljava/lang/Object;
.source "IMXMsgCallback.java"


# virtual methods
.method public abstract onConnectionStateChanged(I)V
.end method

.method public abstract onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
.end method

.method public abstract onDownloadMediaFileResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;)V
.end method

.method public abstract onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
.end method

.method public abstract onReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z
.end method

.method public abstract onReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReceiveOldUserMessage(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onUploadLogsResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
.end method

.method public abstract onUploadVideoResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/video/VideoBody;)V
.end method
