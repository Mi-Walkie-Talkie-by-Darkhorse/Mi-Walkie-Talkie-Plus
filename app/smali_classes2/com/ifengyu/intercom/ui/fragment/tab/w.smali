.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/w;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/w;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/w;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/w;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->C3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
