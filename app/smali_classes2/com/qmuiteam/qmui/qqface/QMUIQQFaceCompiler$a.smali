.class Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->a(Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/qmuiteam/qmui/span/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;Landroid/text/Spannable;)V
    .locals 0

    iput-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;->a:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/span/d;Lcom/qmuiteam/qmui/span/d;)I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;->a:Landroid/text/Spannable;

    invoke-interface {v0, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/qmuiteam/qmui/span/d;

    check-cast p2, Lcom/qmuiteam/qmui/span/d;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$a;->a(Lcom/qmuiteam/qmui/span/d;Lcom/qmuiteam/qmui/span/d;)I

    move-result p1

    return p1
.end method
