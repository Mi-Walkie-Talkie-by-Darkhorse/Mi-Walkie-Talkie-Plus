.class public abstract Lcom/jakewharton/rxbinding3/widget/AdapterViewSelectionEvent;
.super Ljava/lang/Object;
.source "AdapterViewSelectionEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0001\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/widget/AdapterViewSelectionEvent;",
        "",
        "Landroid/widget/AdapterView;",
        "getView",
        "()Landroid/widget/AdapterView;",
        "view",
        "<init>",
        "()V",
        "Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionEvent;",
        "Lcom/jakewharton/rxbinding3/widget/AdapterViewNothingSelectionEvent;",
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
    invoke-direct {p0}, Lcom/jakewharton/rxbinding3/widget/AdapterViewSelectionEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getView()Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
