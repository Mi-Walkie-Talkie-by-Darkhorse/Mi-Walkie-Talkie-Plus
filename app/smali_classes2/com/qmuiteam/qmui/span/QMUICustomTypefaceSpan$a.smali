.class final Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan$a;
.super Ljava/lang/Object;
.source "QMUICustomTypefaceSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)[Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan$a;->a(Landroid/os/Parcel;)Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan$a;->b(I)[Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    move-result-object p1

    return-object p1
.end method
