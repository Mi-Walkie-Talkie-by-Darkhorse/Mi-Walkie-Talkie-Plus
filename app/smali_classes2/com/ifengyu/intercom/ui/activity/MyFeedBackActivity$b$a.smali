.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;
.super Ljava/lang/Object;
.source "MyFeedBackActivity.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iget p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b$a;->a:I

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->F(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V

    return-void
.end method
