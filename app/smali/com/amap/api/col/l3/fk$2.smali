.class final Lcom/amap/api/col/l3/fk$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/fk;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/fk;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/fk;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/fk$2;->a:Lcom/amap/api/col/l3/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3/fk$2;->a:Lcom/amap/api/col/l3/fk;

    invoke-static {p1}, Lcom/amap/api/col/l3/fk;->d(Lcom/amap/api/col/l3/fk;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk$2;->a:Lcom/amap/api/col/l3/fk;

    invoke-static {p1}, Lcom/amap/api/col/l3/fk;->e(Lcom/amap/api/col/l3/fk;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fk$2;->a:Lcom/amap/api/col/l3/fk;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/fk;->a(Z)V

    return-void
.end method
