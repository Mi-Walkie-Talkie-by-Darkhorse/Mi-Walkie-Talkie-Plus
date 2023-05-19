.class public Lcom/qmuiteam/qmui/widget/popup/c;
.super Ljava/lang/Object;
.source "QMUIPopups.java"


# direct methods
.method public static a(Landroid/content/Context;IILandroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/qmuiteam/qmui/widget/popup/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;

    invoke-direct {v0, p0, p2}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 4
    invoke-virtual {v0, p4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/c;->b(Landroid/content/Context;I)Lcom/qmuiteam/qmui/widget/popup/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->U(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast p0, Lcom/qmuiteam/qmui/widget/popup/b;

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Lcom/qmuiteam/qmui/widget/popup/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/b;

    const/4 v1, -0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/qmuiteam/qmui/widget/popup/b;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method
