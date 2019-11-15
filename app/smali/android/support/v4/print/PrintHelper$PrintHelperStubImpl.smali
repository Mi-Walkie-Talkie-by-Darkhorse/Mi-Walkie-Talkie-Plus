.class final Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperStubImpl"
.end annotation


# instance fields
.field mColorMode:I

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/print/PrintHelper$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 0

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 0

    return-void
.end method

.method public setColorMode(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    return-void
.end method
