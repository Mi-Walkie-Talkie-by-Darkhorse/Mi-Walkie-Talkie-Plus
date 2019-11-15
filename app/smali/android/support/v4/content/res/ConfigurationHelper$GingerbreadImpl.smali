.class Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"

# interfaces
.implements Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensityDpi(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
