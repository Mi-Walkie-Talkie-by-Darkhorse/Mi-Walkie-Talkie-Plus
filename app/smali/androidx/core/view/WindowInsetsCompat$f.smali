.class Landroidx/core/view/WindowInsetsCompat$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/WindowInsetsCompat;

.field b:[Landroidx/core/graphics/d;


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$f;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->a:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->b:[Landroidx/core/graphics/d;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$f;->b:[Landroidx/core/graphics/d;

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroidx/core/graphics/d;->a(Landroidx/core/graphics/d;Landroidx/core/graphics/d;)Landroidx/core/graphics/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$f;->d(Landroidx/core/graphics/d;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$f;->d(Landroidx/core/graphics/d;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$f;->d(Landroidx/core/graphics/d;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->b:[Landroidx/core/graphics/d;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$f;->c(Landroidx/core/graphics/d;)V

    :cond_3
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->b:[Landroidx/core/graphics/d;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$f;->a(Landroidx/core/graphics/d;)V

    :cond_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->b:[Landroidx/core/graphics/d;

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$f;->e(Landroidx/core/graphics/d;)V

    :cond_5
    return-void
.end method

.method a(Landroidx/core/graphics/d;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method b()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$f;->a()V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->a:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method b(Landroidx/core/graphics/d;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method c(Landroidx/core/graphics/d;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method d(Landroidx/core/graphics/d;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method e(Landroidx/core/graphics/d;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
