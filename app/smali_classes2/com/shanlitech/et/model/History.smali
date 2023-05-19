.class public Lcom/shanlitech/et/model/History;
.super Ljava/lang/Object;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/model/History$ReciverType;,
        Lcom/shanlitech/et/model/History$MsgType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "History"


# instance fields
.field private body:Ljava/lang/String;

.field private commonBody:Lcom/shanlitech/et/model/CommonBody;

.field private mid:J

.field private reciver:J

.field private reciverType:Lcom/shanlitech/et/model/History$ReciverType;

.field private sender:J

.field private time:J

.field private type:Lcom/shanlitech/et/model/History$MsgType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shanlitech/et/model/History$MsgType;->AUDIO:Lcom/shanlitech/et/model/History$MsgType;

    iput-object v0, p0, Lcom/shanlitech/et/model/History;->type:Lcom/shanlitech/et/model/History$MsgType;

    .line 3
    sget-object v0, Lcom/shanlitech/et/model/History$ReciverType;->GROUP:Lcom/shanlitech/et/model/History$ReciverType;

    iput-object v0, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/shanlitech/et/model/History$MsgType;->AUDIO:Lcom/shanlitech/et/model/History$MsgType;

    iput-object v0, p0, Lcom/shanlitech/et/model/History;->type:Lcom/shanlitech/et/model/History$MsgType;

    .line 6
    sget-object v1, Lcom/shanlitech/et/model/History$ReciverType;->GROUP:Lcom/shanlitech/et/model/History$ReciverType;

    iput-object v1, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    const-string v2, "id"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shanlitech/et/model/History;->mid:J

    const-string v2, "sender"

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shanlitech/et/model/History;->sender:J

    const-string v2, "receiver"

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shanlitech/et/model/History;->reciver:J

    const-string v2, "msgType"

    .line 10
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 11
    sget-object v0, Lcom/shanlitech/et/model/History$MsgType;->LOC:Lcom/shanlitech/et/model/History$MsgType;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/shanlitech/et/model/History;->type:Lcom/shanlitech/et/model/History$MsgType;

    const-string v0, "receiverType"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 13
    sget-object v1, Lcom/shanlitech/et/model/History$ReciverType;->MEMBER:Lcom/shanlitech/et/model/History$ReciverType;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    const-string v0, "msgTime"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/History;->time:J

    const-string v0, "body"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "speech_index"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/model/History;->body:Ljava/lang/String;

    .line 17
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/shanlitech/et/model/History;->body:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-ne v2, v5, :cond_4

    .line 18
    new-instance v0, Lcom/shanlitech/et/model/CommonBody;

    new-instance v1, Lcom/shanlitech/et/model/HistoryAudio;

    invoke-direct {v1, p1}, Lcom/shanlitech/et/model/HistoryAudio;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Lcom/shanlitech/et/model/CommonBody;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shanlitech/et/model/History;->commonBody:Lcom/shanlitech/et/model/CommonBody;

    :cond_4
    if-ne v2, v4, :cond_5

    .line 19
    new-instance v0, Lcom/shanlitech/et/model/CommonBody;

    new-instance v1, Lcom/shanlitech/et/model/SLocation;

    invoke-direct {v1, p1}, Lcom/shanlitech/et/model/SLocation;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Lcom/shanlitech/et/model/CommonBody;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shanlitech/et/model/History;->commonBody:Lcom/shanlitech/et/model/CommonBody;

    :cond_5
    return-void
.end method

.method public static creatCommonMessage(JLcom/shanlitech/et/model/History$MsgType;Lcom/shanlitech/et/model/HistoryAudio;JJ)Lcom/shanlitech/et/model/History;
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/History;

    invoke-direct {v0}, Lcom/shanlitech/et/model/History;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/model/History;->setMid(J)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/shanlitech/et/model/History;->setType(Lcom/shanlitech/et/model/History$MsgType;)V

    .line 4
    invoke-virtual {v0, p4, p5}, Lcom/shanlitech/et/model/History;->setSender(J)V

    .line 5
    invoke-virtual {v0, p6, p7}, Lcom/shanlitech/et/model/History;->setReciver(J)V

    .line 6
    new-instance p0, Lcom/shanlitech/et/model/CommonBody;

    invoke-direct {p0, p3}, Lcom/shanlitech/et/model/CommonBody;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/model/History;->setCommonBody(Lcom/shanlitech/et/model/CommonBody;)V

    return-object v0
.end method

.method public static creatCommonMessage(JLcom/shanlitech/et/model/History$MsgType;Lcom/shanlitech/et/model/SLocation;JJ)Lcom/shanlitech/et/model/History;
    .locals 1

    .line 7
    new-instance v0, Lcom/shanlitech/et/model/History;

    invoke-direct {v0}, Lcom/shanlitech/et/model/History;-><init>()V

    .line 8
    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/model/History;->setMid(J)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/shanlitech/et/model/History;->setType(Lcom/shanlitech/et/model/History$MsgType;)V

    .line 10
    invoke-virtual {v0, p4, p5}, Lcom/shanlitech/et/model/History;->setSender(J)V

    .line 11
    invoke-virtual {v0, p6, p7}, Lcom/shanlitech/et/model/History;->setReciver(J)V

    .line 12
    new-instance p0, Lcom/shanlitech/et/model/CommonBody;

    invoke-direct {p0, p3}, Lcom/shanlitech/et/model/CommonBody;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/model/History;->setCommonBody(Lcom/shanlitech/et/model/CommonBody;)V

    return-object v0
.end method

.method public static createCommonMessage(JLcom/shanlitech/et/model/History$MsgType;Ljava/lang/Object;JJ)Lcom/shanlitech/et/model/History;
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/History;

    invoke-direct {v0}, Lcom/shanlitech/et/model/History;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/model/History;->setMid(J)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/shanlitech/et/model/History;->setType(Lcom/shanlitech/et/model/History$MsgType;)V

    .line 4
    invoke-virtual {v0, p4, p5}, Lcom/shanlitech/et/model/History;->setSender(J)V

    .line 5
    invoke-virtual {v0, p6, p7}, Lcom/shanlitech/et/model/History;->setReciver(J)V

    .line 6
    new-instance p0, Lcom/shanlitech/et/model/CommonBody;

    invoke-direct {p0, p3}, Lcom/shanlitech/et/model/CommonBody;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/model/History;->setCommonBody(Lcom/shanlitech/et/model/CommonBody;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/History;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonBody()Lcom/shanlitech/et/model/CommonBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/History;->commonBody:Lcom/shanlitech/et/model/CommonBody;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/History;->mid:J

    return-wide v0
.end method

.method public getReciver()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/History;->reciver:J

    return-wide v0
.end method

.method public getReciverType()Lcom/shanlitech/et/model/History$ReciverType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    return-object v0
.end method

.method public getSender()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/History;->sender:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/History;->time:J

    return-wide v0
.end method

.method public getType()Lcom/shanlitech/et/model/History$MsgType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/History;->type:Lcom/shanlitech/et/model/History$MsgType;

    return-object v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/History;->sender:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentGroupHistory()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    sget-object v1, Lcom/shanlitech/et/model/History$ReciverType;->GROUP:Lcom/shanlitech/et/model/History$ReciverType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/model/History;->getReciver()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public msgFromMe()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/History;->sender:J

    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/History;->body:Ljava/lang/String;

    return-void
.end method

.method public setCommonBody(Lcom/shanlitech/et/model/CommonBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/History;->commonBody:Lcom/shanlitech/et/model/CommonBody;

    return-void
.end method

.method public setMid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/History;->mid:J

    return-void
.end method

.method public setReciver(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/History;->reciver:J

    return-void
.end method

.method public setReciverType(Lcom/shanlitech/et/model/History$ReciverType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    return-void
.end method

.method public setSender(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/History;->sender:J

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/History;->time:J

    return-void
.end method

.method public setType(Lcom/shanlitech/et/model/History$MsgType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/History;->type:Lcom/shanlitech/et/model/History$MsgType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "History{mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/History;->mid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/History;->type:Lcom/shanlitech/et/model/History$MsgType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/History;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/History;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/History;->sender:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reciver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/History;->reciver:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reciverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/History;->reciverType:Lcom/shanlitech/et/model/History$ReciverType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commonBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/History;->commonBody:Lcom/shanlitech/et/model/CommonBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
