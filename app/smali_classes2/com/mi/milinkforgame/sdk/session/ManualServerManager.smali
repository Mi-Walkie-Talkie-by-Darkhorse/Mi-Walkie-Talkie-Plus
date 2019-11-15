.class public Lcom/mi/milinkforgame/sdk/session/ManualServerManager;
.super Ljava/lang/Object;
.source "ManualServerManager.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/IServerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ManualServerManager"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/session/ManualServerManager;


# instance fields
.field private assignIp:Ljava/lang/String;

.field private assignPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/ManualServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/session/ManualServerManager;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/ManualServerManager;

    return-object v0
.end method


# virtual methods
.method public getNext(Lcom/mi/milinkforgame/sdk/session/ServerProfile;I)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNeedReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset(Z)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->assignIp:Ljava/lang/String;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->isLegalIp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->assignPort:I

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->isLegalPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->assignIp:Ljava/lang/String;

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->assignPort:I

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    goto :goto_0
.end method

.method public save(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->isLegalIp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->assignIp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 1

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->isLegalPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/ManualServerManager;->assignPort:I

    :cond_0
    return-void
.end method
