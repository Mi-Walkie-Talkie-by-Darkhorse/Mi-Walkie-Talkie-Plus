.class Landroidx/core/graphics/l$a;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/l;->h([Landroidx/core/provider/FontsContractCompat$b;I)Landroidx/core/provider/FontsContractCompat$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/l$c<",
        "Landroidx/core/provider/FontsContractCompat$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/graphics/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/provider/FontsContractCompat$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/l$a;->c(Landroidx/core/provider/FontsContractCompat$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/provider/FontsContractCompat$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/l$a;->d(Landroidx/core/provider/FontsContractCompat$b;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/core/provider/FontsContractCompat$b;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/core/provider/FontsContractCompat$b;->e()I

    move-result p1

    return p1
.end method

.method public d(Landroidx/core/provider/FontsContractCompat$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/core/provider/FontsContractCompat$b;->f()Z

    move-result p1

    return p1
.end method
