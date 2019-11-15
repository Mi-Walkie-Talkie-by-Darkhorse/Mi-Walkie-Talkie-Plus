.class public Lcom/mi/mimsgsdk/stat/model/CommonLog;
.super Lcom/mi/mimsgsdk/stat/model/BaseStatModel;
.source "CommonLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/stat/model/CommonLog$Key;
    }
.end annotation


# instance fields
.field protected str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/stat/model/CommonLog;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public fromJsonObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->fromJsonObject(Lorg/json/JSONObject;)V

    const-string v0, "str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->str:Ljava/lang/String;

    return-void
.end method

.method protected getCommond()Ljava/lang/String;
    .locals 1

    const-string v0, "opensdk.stat.commonlog"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->str:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    invoke-super {p0}, Lcom/mi/mimsgsdk/stat/model/BaseStatModel;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "str"

    iget-object v2, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->str:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "CommonLog"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected toPbReq()Lcom/google/protobuf/GeneratedMessage;
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq;->newBuilder()Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;->setCmd(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->appid:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->ts:J

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;->setTs(J)Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/model/CommonLog;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;->setStr(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq$Builder;->build()Lcom/mi/mimsgsdk/proto/Scribe$CommonlogReq;

    move-result-object v0

    return-object v0
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

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogRsp;->parseFrom([B)Lcom/mi/mimsgsdk/proto/Scribe$CommonlogRsp;

    move-result-object v0

    return-object v0
.end method
