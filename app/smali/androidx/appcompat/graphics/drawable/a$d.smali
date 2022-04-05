.class Landroidx/appcompat/graphics/drawable/a$d;
.super Landroidx/appcompat/graphics/drawable/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/vectordrawable/a/a/c;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/a/a/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/a$g;-><init>(Landroidx/appcompat/graphics/drawable/a$a;)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/a$d;->a:Landroidx/vectordrawable/a/a/c;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/a$d;->a:Landroidx/vectordrawable/a/a/c;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/c;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/a$d;->a:Landroidx/vectordrawable/a/a/c;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/c;->stop()V

    return-void
.end method
