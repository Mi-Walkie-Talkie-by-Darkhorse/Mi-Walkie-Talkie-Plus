.class Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatApi24;->setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
