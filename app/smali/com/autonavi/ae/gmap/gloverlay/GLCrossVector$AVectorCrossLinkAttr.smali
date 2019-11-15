.class public Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;
.super Ljava/lang/Object;
.source "GLCrossVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVectorCrossLinkAttr"
.end annotation


# instance fields
.field public IsExitLink:I

.field public IsRoute:I

.field public nFormway:I

.field public nRoadClass:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->nRoadClass:I

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->nFormway:I

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->IsRoute:I

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->IsExitLink:I

    return-void
.end method
