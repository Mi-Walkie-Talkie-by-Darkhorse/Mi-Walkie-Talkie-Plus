.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/i0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/i0;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->k3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
