.class Lcom/ifengyu/intercom/m/b/c$a;
.super Ljava/lang/Object;
.source "ChannelDialogBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/m/b/c;->k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/m/b/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/m/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/c$a;->a:Lcom/ifengyu/intercom/m/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/c$a;->a:Lcom/ifengyu/intercom/m/b/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/m/b/c;->E(Lcom/ifengyu/intercom/m/b/c;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
