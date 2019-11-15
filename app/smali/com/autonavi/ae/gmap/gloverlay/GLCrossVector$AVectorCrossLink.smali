.class public Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;
.super Ljava/lang/Object;
.source "GLCrossVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVectorCrossLink"
.end annotation


# instance fields
.field public nCount:I

.field public stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

.field public xs:[I

.field public ys:[I

.field public zs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    return-void
.end method
