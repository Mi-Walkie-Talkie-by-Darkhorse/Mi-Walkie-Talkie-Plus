.class public Lcom/autonavi/ae/gmap/style/StyleElement;
.super Ljava/lang/Object;


# instance fields
.field public opacity:F

.field public styleElementType:I

.field public textureId:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    iput v0, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    return-void
.end method
