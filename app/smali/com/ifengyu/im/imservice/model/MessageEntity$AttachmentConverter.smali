.class public Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;
.super Ljava/lang/Object;
.source "MessageEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/model/MessageEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MsgAttachment;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;->convertToDatabaseValue(Lcom/ifengyu/im/imservice/model/MsgAttachment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToDatabaseValue(Lcom/ifengyu/im/imservice/model/MsgAttachment;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lcom/ifengyu/im/imservice/model/MsgAttachment;->codeAttachment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToEntityProperty(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MsgAttachment;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    new-instance v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;-><init>()V

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    aget-object v3, v1, v6

    aput-object v3, v2, v5

    aget-object v1, v1, v4

    aput-object v1, v2, v6

    invoke-interface {v0, v2}, Lcom/ifengyu/im/imservice/model/MsgAttachment;->buildAttachment([Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MsgAttachment;

    goto :goto_0
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;->convertToEntityProperty(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    return-object v0
.end method
