.class Lcom/ifengyu/intercom/ui/fragment/y1$b;
.super Lcom/qmuiteam/qmui/span/d;
.source "UserAuthPermissionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/y1;->i3()Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/y1;Landroid/view/View;IIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/span/d;-><init>(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/j/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/j/c;->c(Ljava/lang/String;)V

    return-void
.end method
