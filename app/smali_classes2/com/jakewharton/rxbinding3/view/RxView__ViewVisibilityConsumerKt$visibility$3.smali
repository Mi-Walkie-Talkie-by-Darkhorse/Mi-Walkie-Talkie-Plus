.class final Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt$visibility$3;
.super Ljava/lang/Object;
.source "ViewVisibilityConsumer.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt;->visibility(Landroid/view/View;I)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic $visibilityWhenFalse:I

.field final synthetic receiver$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt$visibility$3;->receiver$0:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt$visibility$3;->$visibilityWhenFalse:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt$visibility$3;->receiver$0:Landroid/view/View;

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt$visibility$3;->$visibilityWhenFalse:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding3/view/RxView__ViewVisibilityConsumerKt$visibility$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
