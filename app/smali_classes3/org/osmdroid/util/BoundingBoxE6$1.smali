.class final Lorg/osmdroid/util/BoundingBoxE6$1;
.super Ljava/lang/Object;
.source "BoundingBoxE6.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/BoundingBoxE6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/osmdroid/util/BoundingBoxE6;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/BoundingBoxE6$1;->createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    invoke-static {p1}, Lorg/osmdroid/util/BoundingBoxE6;->access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/BoundingBoxE6$1;->newArray(I)[Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    new-array v0, p1, [Lorg/osmdroid/util/BoundingBoxE6;

    return-object v0
.end method
