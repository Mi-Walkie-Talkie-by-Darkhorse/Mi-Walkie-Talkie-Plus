.class public abstract Lcom/mi/mimsgsdk/stat/model/BaseStatModel;
.super Ljava/lang/Object;
.source "BaseStatModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/stat/model/BaseStatModel$Key;
    }
.end annotation


# instance fields
.field protected appid:I

.field protected cmd:Ljava/lang/String;

.field protected createTime:J

.field protected ts:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->createTime:J

    iget-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->createTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->ts:J

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->cmd:Ljava/lang/String;

    iput p2, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->appid:I

    return-void
.end method


# virtual methods
.method public fromJsonObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->cmd:Ljava/lang/String;

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->appid:I

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->ts:J

    const-string v0, "createTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->createTime:J

    return-void
.end method

.method protected abstract getCommond()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->cmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->appid:I

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please check cmd & appid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "cmd"

    iget-object v2, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->cmd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appid"

    iget v2, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->appid:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ts"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->ts:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "createTime"

    iget-wide v2, p0, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->createTime:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "logtype"

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->getType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "BaseStatModel"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract toPbReq()Lcom/google/protobuf/GeneratedMessage;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract toPbRsp(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/google/protobuf/GeneratedMessage;
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public final toReqPacketData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->getCommond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->toPbReq()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PB to be send:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    goto :goto_0
.end method
