.class public Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;
.super Ljava/lang/Object;
.source "SpeechActionBody.java"


# instance fields
.field private name:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->uid:J

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->name:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->uid:J

    return-void
.end method
