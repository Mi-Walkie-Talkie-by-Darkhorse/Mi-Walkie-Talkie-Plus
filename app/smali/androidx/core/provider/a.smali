.class Landroidx/core/provider/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput-object p2, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/a$b;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/a$b;-><init>(Landroidx/core/provider/a;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/a$a;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/a$a;-><init>(Landroidx/core/provider/a;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method a(Landroidx/core/provider/e$e;)V
    .locals 1
    .param p1    # Landroidx/core/provider/e$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/core/provider/e$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/core/provider/e$e;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Landroidx/core/provider/a;->a(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/core/provider/e$e;->b:I

    invoke-direct {p0, p1}, Landroidx/core/provider/a;->a(I)V

    :goto_0
    return-void
.end method
