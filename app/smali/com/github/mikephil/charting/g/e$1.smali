.class final Lcom/github/mikephil/charting/g/e$1;
.super Ljava/lang/Object;
.source "MPPointF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/g/e;
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
        "Lcom/github/mikephil/charting/g/e;",
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
.method public a(Landroid/os/Parcel;)Lcom/github/mikephil/charting/g/e;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/github/mikephil/charting/g/e;

    invoke-direct {v0, v1, v1}, Lcom/github/mikephil/charting/g/e;-><init>(FF)V

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/g/e;->a(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/github/mikephil/charting/g/e;
    .locals 1

    new-array v0, p1, [Lcom/github/mikephil/charting/g/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/g/e$1;->a(Landroid/os/Parcel;)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/g/e$1;->a(I)[Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method
