.class public Lcom/shanlitech/et/web/tob/api/model/MemberForRank;
.super Ljava/lang/Object;
.source "MemberForRank.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private comId:J

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/MemberForRank;->comId:J

    .line 4
    iput-wide p3, p0, Lcom/shanlitech/et/web/tob/api/model/MemberForRank;->userId:J

    return-void
.end method


# virtual methods
.method public getComId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/MemberForRank;->comId:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/MemberForRank;->userId:J

    return-wide v0
.end method

.method public setComId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/MemberForRank;->comId:J

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/MemberForRank;->userId:J

    return-void
.end method
