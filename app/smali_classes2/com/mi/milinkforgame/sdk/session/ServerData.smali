.class public abstract Lcom/mi/milinkforgame/sdk/session/ServerData;
.super Ljava/lang/Object;
.source "ServerData.java"


# instance fields
.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerData;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerData;->mTimeStamp:J

    return-wide v0
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerData;->mTimeStamp:J

    return-void
.end method
