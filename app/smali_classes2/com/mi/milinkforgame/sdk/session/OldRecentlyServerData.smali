.class public Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;
.super Ljava/lang/Object;
.source "OldRecentlyServerData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x75d92a9b7d87ef13L


# instance fields
.field private mRecentlyHttpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

.field private mRecentlyTcpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyTcpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyHttpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getRecentlyHttpServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyHttpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-object v0
.end method

.method public getRecentlyTcpServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyTcpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mTimeStamp:J

    return-wide v0
.end method

.method public setRecentlyHttpServerProfile(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyHttpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-void
.end method

.method public setRecentlyTcpServerProfile(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyTcpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[recentlyTcpServerProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyTcpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recentlyHttpServerProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mRecentlyHttpServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/OldRecentlyServerData;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
