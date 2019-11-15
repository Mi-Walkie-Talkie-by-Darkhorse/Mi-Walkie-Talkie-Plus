.class Lpl/droidsonroids/gif/GifViewSavedState;
.super Landroid/view/View$BaseSavedState;
.source "GifViewSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lpl/droidsonroids/gif/GifViewSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpl/droidsonroids/gif/GifViewSavedState$1;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifViewSavedState$1;-><init>()V

    sput-object v0, Lpl/droidsonroids/gif/GifViewSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [[J

    iput-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifViewSavedState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;[J)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    new-array v0, v0, [[J

    iput-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-void
.end method

.method varargs constructor <init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    array-length v0, p2

    new-array v0, v0, [[J

    iput-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_1

    aget-object v0, p2, v1

    instance-of v2, v0, Lpl/droidsonroids/gif/c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    check-cast v0, Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->m()[J

    move-result-object v0

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    instance-of v0, p1, Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_0

    check-cast p1, Lpl/droidsonroids/gif/c;

    iget-object v0, p1, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    aget-object v1, v1, p2

    iget-object v2, p1, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->a([JLandroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/c;->a(J)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
