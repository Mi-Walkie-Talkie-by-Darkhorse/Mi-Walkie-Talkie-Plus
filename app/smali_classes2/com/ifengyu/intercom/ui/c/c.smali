.class public final synthetic Lcom/ifengyu/intercom/ui/c/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/c/e;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/c/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/c;->a:Lcom/ifengyu/intercom/ui/c/e;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/c/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/c;->a:Lcom/ifengyu/intercom/ui/c/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/c;->b:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/c/e;->m(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
