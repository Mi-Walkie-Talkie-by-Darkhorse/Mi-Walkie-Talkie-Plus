.class public abstract Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChangeEvent;
.super Ljava/lang/Object;
.source "ViewGroupHierarchyChangeEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0001\u0002\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChangeEvent;",
        "",
        "Landroid/view/ViewGroup;",
        "getView",
        "()Landroid/view/ViewGroup;",
        "view",
        "Landroid/view/View;",
        "getChild",
        "()Landroid/view/View;",
        "child",
        "<init>",
        "()V",
        "Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewAddEvent;",
        "Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChildViewRemoveEvent;",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jakewharton/rxbinding3/view/ViewGroupHierarchyChangeEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChild()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getView()Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method