.class final Lb/a/a/a/g/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lb/a/a/a/g/e;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lb/a/a/a/g/e;
    .locals 2

    new-instance v0, Lb/a/a/a/g/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lb/a/a/a/g/e;-><init>(FF)V

    invoke-virtual {v0, p1}, Lb/a/a/a/g/e;->a(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/g/e$a;->createFromParcel(Landroid/os/Parcel;)Lb/a/a/a/g/e;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lb/a/a/a/g/e;
    .locals 0

    new-array p1, p1, [Lb/a/a/a/g/e;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/g/e$a;->newArray(I)[Lb/a/a/a/g/e;

    move-result-object p1

    return-object p1
.end method
