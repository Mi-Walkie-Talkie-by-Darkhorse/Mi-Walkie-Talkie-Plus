.class public Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;
.super Ljava/lang/Object;
.source "OpenSessionSucessReturnInfo.java"


# instance fields
.field private backupServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private clientIp:Ljava/lang/String;

.field private clientIsp:Ljava/lang/String;

.field private optmumServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->clientIp:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->clientIsp:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->optmumServerList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->backupServerList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBackupServerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->backupServerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->clientIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getOptmumServerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->optmumServerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBackupServerList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->backupServerList:Ljava/util/ArrayList;

    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->clientIp:Ljava/lang/String;

    return-void
.end method

.method public setClientIsp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->clientIsp:Ljava/lang/String;

    return-void
.end method

.method public setOptmumServerList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->optmumServerList:Ljava/util/ArrayList;

    return-void
.end method
