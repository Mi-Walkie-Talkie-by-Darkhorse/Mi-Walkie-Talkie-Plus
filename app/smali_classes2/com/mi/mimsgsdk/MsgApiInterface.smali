.class public interface abstract Lcom/mi/mimsgsdk/MsgApiInterface;
.super Ljava/lang/Object;
.source "MsgApiInterface.java"


# virtual methods
.method public abstract destroy()Z
.end method

.method public abstract getVersion(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract pullOldGroupMessage(Ljava/lang/String;JI)Z
.end method

.method public abstract pullOldUserMessage(JI)Z
.end method

.method public abstract sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
.end method

.method public abstract sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
.end method

.method public abstract sendProtoMessage(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z
.end method

.method public abstract sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
.end method

.method public abstract sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
.end method

.method public abstract setSyncLimit(I)Z
.end method

.method public abstract syncGroupMessage(Ljava/lang/String;)Z
.end method
