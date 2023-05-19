.class public Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;
.super Ljava/lang/Object;
.source "MapSourceGridData.java"


# static fields
.field private static final mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mGridName:Ljava/lang/String;

.field public mIndoorIndex:I

.field public mIndoorVersion:I

.field private mKeyGridName:Ljava/lang/StringBuilder;

.field public mObj:Ljava/lang/Object;

.field public mSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    .line 4
    iput-object v1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getGridName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyGridName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    return v0
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGridData(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    .line 3
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setGridData(Ljava/lang/String;III)V
    .locals 1

    .line 15
    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorIndex:I

    .line 17
    iput p4, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorVersion:I

    .line 18
    iput p2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    .line 19
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 20
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setGridData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 7
    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    .line 9
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
