.class public final Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;
.super Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChangeEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;",
        "Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChangeEvent;",
        "view",
        "Landroid/view/ViewGroup;",
        "child",
        "Landroid/view/View;",
        "(Landroid/view/ViewGroup;Landroid/view/View;)V",
        "getChild",
        "()Landroid/view/View;",
        "getView",
        "()Landroid/view/ViewGroup;",
        "component1",
        "component2",
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
.field private final child:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChangeEvent;-><init>(Lkotlin/jvm/b/a;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->view:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->child:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic copy$default(Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;Landroid/view/ViewGroup;Landroid/view/View;ILjava/lang/Object;)Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->copy(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;

    invoke-direct {v0, p1, p2}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

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

.method public getChild()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->child:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->view:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewGroupHierarchyChildViewRemoveEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
