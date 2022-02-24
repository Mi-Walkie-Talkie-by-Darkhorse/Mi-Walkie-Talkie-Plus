.class public final Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;
.super Lcom/jakewharton/rxbinding3/view/MenuItemActionViewEvent;
.source "MenuItemActionViewEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;",
        "Lcom/jakewharton/rxbinding3/view/MenuItemActionViewEvent;",
        "menuItem",
        "Landroid/view/MenuItem;",
        "(Landroid/view/MenuItem;)V",
        "getMenuItem",
        "()Landroid/view/MenuItem;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private final menuItem:Landroid/view/MenuItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewEvent;-><init>(Lkotlin/jvm/b/a;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->menuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public static bridge synthetic copy$default(Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;Landroid/view/MenuItem;ILjava/lang/Object;)Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->copy(Landroid/view/MenuItem;)Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Landroid/view/MenuItem;)Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getMenuItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuItemActionViewExpandEvent(menuItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/MenuItemActionViewExpandEvent;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
