.class Landroid/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;
.super Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatBitmapCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/graphics/BitmapCompatKitKat;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
