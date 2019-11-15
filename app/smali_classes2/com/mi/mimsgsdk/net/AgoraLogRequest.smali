.class public Lcom/mi/mimsgsdk/net/AgoraLogRequest;
.super Lcom/mi/mimsgsdk/net/BaseRequest;
.source "AgoraLogRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/net/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCmd()Ljava/lang/String;
    .locals 1

    const-string v0, "opensdk.stat.agoralog"

    return-object v0
.end method
