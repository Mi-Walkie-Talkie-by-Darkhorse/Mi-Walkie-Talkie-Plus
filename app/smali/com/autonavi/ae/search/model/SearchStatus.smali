.class public Lcom/autonavi/ae/search/model/SearchStatus;
.super Ljava/lang/Object;
.source "SearchStatus.java"


# instance fields
.field private eventId:I

.field private status:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/ae/search/model/SearchStatus;->status:I

    .line 3
    iput v0, p0, Lcom/autonavi/ae/search/model/SearchStatus;->eventId:I

    .line 4
    iput p1, p0, Lcom/autonavi/ae/search/model/SearchStatus;->status:I

    .line 5
    iput p2, p0, Lcom/autonavi/ae/search/model/SearchStatus;->eventId:I

    return-void
.end method


# virtual methods
.method public getEventId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/search/model/SearchStatus;->eventId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/search/model/SearchStatus;->status:I

    return v0
.end method
