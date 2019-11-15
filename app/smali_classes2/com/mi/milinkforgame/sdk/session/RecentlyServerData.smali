.class public Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;
.super Lcom/mi/milinkforgame/sdk/session/ServerData;
.source "RecentlyServerData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7549ded7875f916dL


# instance fields
.field private mRecentlyServer:Lcom/mi/milinkforgame/sdk/session/ServerProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/ServerData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->mRecentlyServer:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-void
.end method


# virtual methods
.method public getRecentlyServer()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->mRecentlyServer:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-object v0
.end method

.method public setRecentlyServer(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->mRecentlyServer:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[recentlyTcpServerProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->mRecentlyServer:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->mRecentlyServer:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
