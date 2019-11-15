.class public interface abstract Lcom/ifengyu/im/protobuf/IMLogin$IMKickUserOrBuilder;
.super Ljava/lang/Object;
.source "IMLogin.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMKickUserOrBuilder"
.end annotation


# virtual methods
.method public abstract getKickReason()Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;
.end method

.method public abstract getUserHandle()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract hasKickReason()Z
.end method

.method public abstract hasUserHandle()Z
.end method

.method public abstract hasUserId()Z
.end method
