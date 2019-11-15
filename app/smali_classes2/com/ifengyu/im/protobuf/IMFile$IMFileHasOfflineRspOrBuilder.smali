.class public interface abstract Lcom/ifengyu/im/protobuf/IMFile$IMFileHasOfflineRspOrBuilder;
.super Ljava/lang/Object;
.source "IMFile.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMFileHasOfflineRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIpAddrList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;
.end method

.method public abstract getIpAddrListCount()I
.end method

.method public abstract getIpAddrListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOfflineFileList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$OfflineFileInfo;
.end method

.method public abstract getOfflineFileListCount()I
.end method

.method public abstract getOfflineFileListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$OfflineFileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasAttachData()Z
.end method

.method public abstract hasUserId()Z
.end method
