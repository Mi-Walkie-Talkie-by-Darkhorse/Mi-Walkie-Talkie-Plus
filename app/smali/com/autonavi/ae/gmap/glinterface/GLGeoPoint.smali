.class public Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;
.super Ljava/lang/Object;
.source "GLGeoPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcdd6a71ded0815bL


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    iput p2, p0, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    iget v2, p0, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    iget v3, p1, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    iget v3, p1, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    add-int/2addr v0, v1

    return v0
.end method
