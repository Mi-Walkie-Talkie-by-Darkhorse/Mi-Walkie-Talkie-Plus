.class Landroidx/exifinterface/media/ExifInterface$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$e;->b:Ljava/lang/String;

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$e;->a:I

    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$e;->c:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$e;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$e;->b:Ljava/lang/String;

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$e;->a:I

    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$e;->c:I

    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$e;->d:I

    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 4

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$e;->c:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_8

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$e;->d:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$e;->c:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$e;->d:I

    if-ne v0, v1, :cond_5

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$e;->c:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$e;->d:I

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_0
    return v2
.end method
