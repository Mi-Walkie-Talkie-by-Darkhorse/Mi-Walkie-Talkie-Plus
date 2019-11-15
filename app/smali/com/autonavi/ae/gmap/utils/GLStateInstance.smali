.class public Lcom/autonavi/ae/gmap/utils/GLStateInstance;
.super Ljava/lang/Object;
.source "GLStateInstance.java"


# instance fields
.field private mEngineID:I

.field public mOverlayBundle:Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle",
            "<",
            "Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay",
            "<**>;>;"
        }
    .end annotation
.end field

.field private mStateInstance:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mStateInstance:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mEngineID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mOverlayBundle:Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    iput p1, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mEngineID:I

    iput-wide p2, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mStateInstance:J

    return-void
.end method


# virtual methods
.method public getEngineID()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mEngineID:I

    return v0
.end method

.method public getStateInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mStateInstance:J

    return-wide v0
.end method
