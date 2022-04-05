.class Landroidx/core/graphics/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/graphics/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/l;->a(Landroidx/core/content/res/FontResourcesParserCompat$b;I)Landroidx/core/content/res/FontResourcesParserCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/l$c<",
        "Landroidx/core/content/res/FontResourcesParserCompat$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/graphics/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/content/res/FontResourcesParserCompat$c;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$c;->e()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$c;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/l$b;->a(Landroidx/core/content/res/FontResourcesParserCompat$c;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/core/content/res/FontResourcesParserCompat$c;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$c;->f()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$c;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/l$b;->b(Landroidx/core/content/res/FontResourcesParserCompat$c;)Z

    move-result p1

    return p1
.end method
