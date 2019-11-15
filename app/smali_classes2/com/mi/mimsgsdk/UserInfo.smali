.class public Lcom/mi/mimsgsdk/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcom/mi/mimsgsdk/UserInfo;


# instance fields
.field private volatile channelId:Ljava/lang/String;

.field private volatile userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/UserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/UserInfo;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/mi/mimsgsdk/UserInfo;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/UserInfo;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/UserInfo;->instance:Lcom/mi/mimsgsdk/UserInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/UserInfo;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/UserInfo;->instance:Lcom/mi/mimsgsdk/UserInfo;

    return-object v0
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/UserInfo;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/UserInfo;->userId:J

    return-wide v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/mi/mimsgsdk/UserInfo;->channelId:Ljava/lang/String;

    sget-object v0, Lcom/mi/mimsgsdk/UserInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/UserInfo;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(J)V
    .locals 5

    iput-wide p1, p0, Lcom/mi/mimsgsdk/UserInfo;->userId:J

    sget-object v0, Lcom/mi/mimsgsdk/UserInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mi/mimsgsdk/UserInfo;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
