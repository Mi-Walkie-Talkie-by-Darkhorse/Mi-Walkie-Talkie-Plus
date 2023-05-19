.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;
.super Ljava/lang/Object;
.source "MyFeedBackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ifengyu/intercom/m/b/g;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1103c5

    .line 2
    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;)V

    const/4 p4, 0x0

    const p5, 0x7f1100bd

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, p4, p5, v0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;

    invoke-direct {p2, p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;I)V

    const p3, 0x7f1100c6

    .line 4
    invoke-virtual {p1, p4, p3, p4, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p2, 0x7f120100

    .line 5
    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
