.class public Lcom/qmuiteam/qmui/arch/effect/b;
.super Lcom/qmuiteam/qmui/arch/effect/a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILandroid/content/Intent;)V
    .locals 0
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/effect/a;-><init>()V

    iput p1, p0, Lcom/qmuiteam/qmui/arch/effect/b;->a:I

    iput p2, p0, Lcom/qmuiteam/qmui/arch/effect/b;->b:I

    iput p3, p0, Lcom/qmuiteam/qmui/arch/effect/b;->c:I

    iput-object p4, p0, Lcom/qmuiteam/qmui/arch/effect/b;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/effect/b;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/arch/effect/b;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/arch/effect/b;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/arch/effect/b;->b:I

    return v0
.end method
