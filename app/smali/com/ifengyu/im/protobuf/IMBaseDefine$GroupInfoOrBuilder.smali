.class public interface abstract Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfoOrBuilder;
.super Ljava/lang/Object;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getConferenceid()Ljava/lang/String;
.end method

.method public abstract getConferenceidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupAvatar()Ljava/lang/String;
.end method

.method public abstract getGroupAvatarBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupCreatorId()I
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getGroupMemberList(I)I
.end method

.method public abstract getGroupMemberListCount()I
.end method

.method public abstract getGroupMemberListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getGroupNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGroupType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;
.end method

.method public abstract getShieldStatus()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasConferenceid()Z
.end method

.method public abstract hasGroupAvatar()Z
.end method

.method public abstract hasGroupCreatorId()Z
.end method

.method public abstract hasGroupId()Z
.end method

.method public abstract hasGroupName()Z
.end method

.method public abstract hasGroupType()Z
.end method

.method public abstract hasShieldStatus()Z
.end method

.method public abstract hasVersion()Z
.end method
