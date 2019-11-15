.class Landroid/support/graphics/drawable/VectorDrawableCompat$d;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field protected m:[Landroid/support/graphics/drawable/c$b;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->n:Ljava/lang/String;

    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->o:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->o:I

    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    invoke-static {v0}, Landroid/support/graphics/drawable/c;->a([Landroid/support/graphics/drawable/c$b;)[Landroid/support/graphics/drawable/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    invoke-static {v0, p1}, Landroid/support/graphics/drawable/c$b;->a([Landroid/support/graphics/drawable/c$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/support/graphics/drawable/c$b;
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroid/support/graphics/drawable/c$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    invoke-static {v0, p1}, Landroid/support/graphics/drawable/c;->a([Landroid/support/graphics/drawable/c$b;[Landroid/support/graphics/drawable/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/graphics/drawable/c;->a([Landroid/support/graphics/drawable/c$b;)[Landroid/support/graphics/drawable/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$d;->m:[Landroid/support/graphics/drawable/c$b;

    invoke-static {v0, p1}, Landroid/support/graphics/drawable/c;->b([Landroid/support/graphics/drawable/c$b;[Landroid/support/graphics/drawable/c$b;)V

    goto :goto_0
.end method
