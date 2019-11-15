.class public Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;
.super Ljava/lang/Object;
.source "GLCrossVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVectorCrossAttr"
.end annotation


# instance fields
.field public dayMode:Z

.field public fArrowBorderWidth:I

.field public fArrowLineWidth:I

.field public fDashLineWidth:I

.field public fImportBorderWidth:I

.field public fImportLineWidth:I

.field public fUnImportBorderWidth:I

.field public fUnImportLineWidth:I

.field public nAngle:I

.field public nCenterX:I

.field public nCenterY:I

.field public stAreaColor:I

.field public stAreaRect:Landroid/graphics/Rect;

.field public stArrowBorderColor:I

.field public stArrowLineColor:I

.field public stDashLineColor:I

.field public stImportBorderColor:I

.field public stImportLineColor:I

.field public stRectMax:Landroid/graphics/Rect;

.field public stRectMin:Landroid/graphics/Rect;

.field public stUnImportBorderColor:I

.field public stUnImportLineColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    return-void
.end method
