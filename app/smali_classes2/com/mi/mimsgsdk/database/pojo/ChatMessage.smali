.class public Lcom/mi/mimsgsdk/database/pojo/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"

# interfaces
.implements Lcom/mi/mimsgsdk/database/ContentValuesable;
.implements Lcom/mi/mimsgsdk/database/JSONable;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatMessage"


# instance fields
.field private appid:Ljava/lang/String;

.field private body:[B

.field private fromGuid:Ljava/lang/String;

.field private msgId:J

.field private msgSeq:J

.field private sentTime:J

.field private toGuid:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appid"

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    const-string v0, "from_guid"

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    const-string v0, "to_guid"

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    iput-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    iput-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    const-string v0, "user_id"

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    return-object v0
.end method

.method public getFromGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    return-wide v0
.end method

.method public getMsgSeq()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    return-wide v0
.end method

.method public getToGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSONString(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "appid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    const-string v0, "from_guid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    const-string v0, "to_guid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    const-string v0, "msg_seq"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    const-string v0, "msg_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    const-string v0, "sent_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    const-string v0, "body"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    const-string v0, "user_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    return-void
.end method

.method public setBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    return-void
.end method

.method public setFromGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    return-void
.end method

.method public setMsgSeq(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    return-void
.end method

.method public setSentTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    return-void
.end method

.method public setToGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_guid"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "to_guid"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_seq"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msg_id"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "sent_time"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "body"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appid"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from_guid"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to_guid"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg_seq"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "msg_id"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sent_time"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "body"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", fromGuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->fromGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", toGuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", msgSeq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgSeq:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->msgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", sentTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->sentTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->body:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateByContentValues(Landroid/content/ContentValues;)V
    .locals 0

    return-void
.end method
