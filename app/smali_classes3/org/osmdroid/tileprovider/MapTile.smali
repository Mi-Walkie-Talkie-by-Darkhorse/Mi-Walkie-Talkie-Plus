.class public Lorg/osmdroid/tileprovider/MapTile;
.super Ljava/lang/Object;
.source "MapTile.java"


# static fields
.field public static final MAPTILE_FAIL_ID:I = 0x1

.field public static final MAPTILE_SUCCESS_ID:I


# instance fields
.field private expires:Ljava/util/Date;

.field private final x:I

.field private final y:I

.field private final zoomLevel:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    iput p2, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    iput p3, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/osmdroid/tileprovider/MapTile;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/osmdroid/tileprovider/MapTile;

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    iget v3, p1, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    iget v3, p1, Lorg/osmdroid/tileprovider/MapTile;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    iget v3, p1, Lorg/osmdroid/tileprovider/MapTile;->y:I

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTile;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    add-int/lit8 v1, v1, 0x25

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    add-int/lit8 v1, v1, 0x25

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    add-int/lit8 v1, v1, 0x25

    mul-int/2addr v0, v1

    return v0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTile;->expires:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
