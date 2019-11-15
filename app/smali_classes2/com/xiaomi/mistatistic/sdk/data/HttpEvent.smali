.class public Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;
.super Ljava/lang/Object;
.source "HttpEvent.java"


# static fields
.field public static final FLOW_DOWNLOAD:I = 0x2

.field public static final FLOW_UNDEFINED:I = 0x0

.field public static final FLOW_UPLOAD:I = 0x1


# instance fields
.field private exceptionName:Ljava/lang/String;

.field private firstPacketCost:J

.field private flowStatus:I

.field private ip:Ljava/lang/String;

.field private net:Ljava/lang/String;

.field private netFlow:J

.field private operator:Ljava/lang/String;

.field private reqId:Ljava/lang/String;

.field private responseCode:I

.field private time:J

.field private timeCost:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setNet()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFirstPacketCost()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    return-wide v0
.end method

.method public getFlowStatus()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getNetFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    return-wide v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstPacketCost(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    return-void
.end method

.method public setFlowStatus(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    return-void
.end method

.method public setNet()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "net"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "cost"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-string v1, "first_byte_t"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "code"

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "exception"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "op"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    const-string v1, "flow"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    :cond_6
    const-string v1, "flow_status"

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "rid"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "dns"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v1, "t"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
