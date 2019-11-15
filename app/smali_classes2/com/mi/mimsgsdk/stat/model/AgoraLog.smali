.class public Lcom/mi/mimsgsdk/stat/model/AgoraLog;
.super Lcom/mi/mimsgsdk/stat/model/BaseStatModel;
.source "AgoraLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/stat/model/AgoraLog$Key;
    }
.end annotation


# instance fields
.field protected engine:Ljava/lang/String;

.field protected extra:Ljava/lang/String;

.field protected sessionRoom:Ljava/lang/String;

.field protected status:Ljava/lang/String;

.field protected uid:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private getTraceId()Ljava/lang/String;
    .locals 6

    const-string v0, "%d_%d_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->createTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "and"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fromJsonObject(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->fromJsonObject(Lorg/json/JSONObject;)V

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->uid:J

    const-string v0, "sessionRoom"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->sessionRoom:Ljava/lang/String;

    const-string v0, "engine"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->engine:Ljava/lang/String;

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->status:Ljava/lang/String;

    const-string v0, "extra"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->extra:Ljava/lang/String;

    const-class v0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after fromJsonObject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->appid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getCommond()Ljava/lang/String;
    .locals 1

    const-string v0, "opensdk.stat.agoralog"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEngine(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->engine:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->extra:Ljava/lang/String;

    return-void
.end method

.method public setSessionRoom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->sessionRoom:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->uid:J

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    invoke-super {p0}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "uid"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->sessionRoom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sessionRoom"

    iget-object v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->sessionRoom:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "engine"

    iget-object v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->engine:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    iget-object v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->status:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "extra"

    iget-object v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->extra:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "AgoraLog"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected toPbReq()Lcom/google/protobuf/GeneratedMessage;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->newBuilder()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setTraceid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->ts:J

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setTs(J)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->appid:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->uid:J

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setUid(J)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setCmd(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->engine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setEngine(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setStatus(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->sessionRoom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->sessionRoom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setSessionRoom(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->extra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setExtra(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->build()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    goto :goto_0
.end method

.method public toPbRsp(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogRsp;->parseFrom([B)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogRsp;

    move-result-object v0

    return-object v0
.end method
