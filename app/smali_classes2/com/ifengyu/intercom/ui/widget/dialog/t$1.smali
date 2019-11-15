.class Lcom/ifengyu/intercom/ui/widget/dialog/t$1;
.super Lcom/ifengyu/intercom/a/b/a;
.source "MapMarkerClickDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/t;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/text/SpannableStringBuilder;

.field final synthetic c:Landroid/text/style/AbsoluteSizeSpan;

.field final synthetic d:Lcom/ifengyu/intercom/ui/widget/dialog/t;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/t;Landroid/text/SpannableStringBuilder;Landroid/text/style/AbsoluteSizeSpan;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/t;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->c:Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;I)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    const-string v1, " m"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->c:Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/t;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a(Lcom/ifengyu/intercom/ui/widget/dialog/t;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;->a(Ljava/lang/Double;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
