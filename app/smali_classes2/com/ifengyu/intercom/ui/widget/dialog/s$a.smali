.class Lcom/ifengyu/intercom/ui/widget/dialog/s$a;
.super Lcom/ifengyu/intercom/g/d/a;
.source "MapMarkerClickDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/s;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/text/SpannableStringBuilder;

.field final synthetic c:Landroid/text/style/AbsoluteSizeSpan;

.field final synthetic d:Lcom/ifengyu/intercom/ui/widget/dialog/s;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/s;Landroid/text/SpannableStringBuilder;Landroid/text/style/AbsoluteSizeSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/s;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->c:Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    const-string p2, " m"

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->c:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->d:Lcom/ifengyu/intercom/ui/widget/dialog/s;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a(Lcom/ifengyu/intercom/ui/widget/dialog/s;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;->a(Ljava/lang/Double;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
