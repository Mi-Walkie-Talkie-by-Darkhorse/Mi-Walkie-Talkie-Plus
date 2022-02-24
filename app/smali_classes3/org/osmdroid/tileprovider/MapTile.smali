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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    .line 3
    iput p2, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    .line 4
    iput p3, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lorg/osmdroid/tileprovider/MapTile;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lorg/osmdroid/tileprovider/MapTile;

    .line 3
    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    iget v3, p1, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    iget v3, p1, Lorg/osmdroid/tileprovider/MapTile;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    iget p1, p1, Lorg/osmdroid/tileprovider/MapTile;->y:I

    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTile;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x11

    .line 2
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    add-int/lit8 v1, v1, 0x25

    mul-int v0, v0, v1

    .line 3
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    add-int/lit8 v1, v1, 0x25

    mul-int v0, v0, v1

    return v0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTile;->expires:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
