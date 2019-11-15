.class Landroid/support/design/internal/c$e;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/design/internal/c$e;->a:I

    iput p2, p0, Landroid/support/design/internal/c$e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/c$e;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/c$e;->b:I

    return v0
.end method
