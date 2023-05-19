.class public Lcom/qmuiteam/qmui/widget/dialog/b$c;
.super Lcom/qmuiteam/qmui/widget/dialog/b$b;
.source "QMUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/b$b<",
        "Lcom/qmuiteam/qmui/widget/dialog/b$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/b$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/b$c$a;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$c$a;-><init>(Lcom/qmuiteam/qmui/widget/dialog/b$c;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, p2}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->D(Lcom/qmuiteam/qmui/widget/dialog/b$b$b;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-object p0
.end method

.method public G([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/b$c;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2, p2}, Lcom/qmuiteam/qmui/widget/dialog/b$c;->F(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/b$c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
