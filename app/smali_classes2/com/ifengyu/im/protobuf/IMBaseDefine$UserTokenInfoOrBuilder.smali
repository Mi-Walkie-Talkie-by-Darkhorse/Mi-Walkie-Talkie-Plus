.class public interface abstract Lcom/ifengyu/im/protobuf/IMBaseDefine$UserTokenInfoOrBuilder;
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
    name = "UserTokenInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getPushCount()I
.end method

.method public abstract getPushType()I
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
.end method

.method public abstract hasPushCount()Z
.end method

.method public abstract hasPushType()Z
.end method

.method public abstract hasToken()Z
.end method

.method public abstract hasUserId()Z
.end method

.method public abstract hasUserType()Z
.end method
